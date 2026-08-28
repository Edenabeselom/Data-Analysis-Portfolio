import pandas as pd
import numpy as np

print("Loading dataset...")
# 1. Load primary dataset and country metadata
wdi_df = pd.read_csv("WDICSV.csv")
country_df = pd.read_csv("WDICountry.csv")

# 2. Reshape wide year columns (1960-2023) into long format (Melt/Unpivot)
id_vars = ["Country Name", "Country Code", "Indicator Name", "Indicator Code"]
value_vars = [col for col in wdi_df.columns if col.isdigit()]

print("Unpivoting dataset...")
melted_df = pd.melt(
    wdi_df,
    id_vars=id_vars,
    value_vars=value_vars,
    var_name="Year",
    value_name="Value"
)

# Convert Year to numeric
melted_df["Year"] = pd.to_numeric(melted_df["Year"])

# 3. Filter for key indicators across core development themes
# Add or remove indicator codes as needed for your specific theme
target_indicators = [
    "NY.GDP.MKTP.KD.ZG",  # GDP growth (annual %)
    "NY.GDP.PCAP.CD",     # GDP per capita (current US$)
    "IT.NET.USER.ZS",     # Individuals using the Internet (% of population)
    "SP.DYN.LE00.IN",     # Life expectancy at birth, total (years)
    "SE.PRM.CMPT.ZS"      # Primary completion rate (% of relevant age group)
]

filtered_df = melted_df[melted_df["Indicator Code"].isin(target_indicators)].copy()

# 4. Filter for recent 20-year historical range (2000 - 2023)
filtered_df = filtered_df[(filtered_df["Year"] >= 2000) & (filtered_df["Year"] <= 2023)]

# 5. Drop records where metrics are missing
cleaned_df = filtered_df.dropna(subset=["Value"]).copy()

# 6. Merge with Country metadata to bring in Region and Income Group
clean_country_metadata = country_df[["Country Code", "Region", "Income Group"]].dropna(subset=["Region"])

final_df = pd.merge(
    cleaned_df,
    clean_country_metadata,
    on="Country Code",
    how="inner"
)

# 7. Export transformed dataset for Power BI
output_filename = "WDI_Cleaned_Capstone.csv"
final_df.to_csv(output_filename, index=False)

print(f"Data cleaning complete! File saved as: {output_filename}")
print(f"Total rows processed: {len(final_df)}")