This repository demonstrates a common error in R when subsetting data frames using character vectors of column names.  The code attempts to select columns "A", "D", and "C" from a data frame that only contains columns "A", "B", and "C". This leads to an error because column "D" does not exist. The solution shows how to gracefully handle such cases.