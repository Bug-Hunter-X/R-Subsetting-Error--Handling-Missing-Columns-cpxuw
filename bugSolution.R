```R
# This improved code handles cases where specified columns might be missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "C")

# Check if all columns exist before subsetting
existing_cols <- intersect(cols_to_select, colnames(df))

if (length(existing_cols) > 0) {
  subset_df <- df[, existing_cols]
  print(subset_df)
} else {
  print("Error: None of the specified columns exist in the data frame.")
}

#Alternative solution using dplyr package
library(dplyr)

subset_df <- df %>% select(all_of(cols_to_select))
print(subset_df)
```