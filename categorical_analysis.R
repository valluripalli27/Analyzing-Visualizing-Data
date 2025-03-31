# Load required libraries
library(ggplot2)
library(dplyr)

# Sample Data (Replace this with your own dataset)
data <- data.frame(Category = c('A', 'B', 'C', 'A', 'B', 'C', 'A', 'A', 'B', 'C', 'A', 'B'))

# Analyze categorical data: Count of each category
category_counts <- data %>% count(Category)

# Print category counts
print("Category Counts:")
print(category_counts)

# Visualizing the categorical data using ggplot2
ggplot(data, aes(x = Category)) +
  geom_bar(fill = "skyblue", color = "black") +
  ggtitle("Category Distribution") +
  xlab("Category") +
  ylab("Count") +
  theme_minimal()

# Pie chart
pie(category_counts$n, labels = category_counts$Category, col = rainbow(length(category_counts$Category)),
    main = "Category Proportion")
