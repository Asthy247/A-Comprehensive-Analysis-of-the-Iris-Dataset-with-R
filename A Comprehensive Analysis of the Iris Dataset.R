### Title: "A Comprehensive Analysis of the Iris Dataset"


# Load the iris dataset
data(iris)



# Explore the iris dataset
head(iris)
str(iris)
summary(iris)



# Data Visualization
install.packages("ggplot2")
library(ggplot2)




### 1.Box plot of petal length by species
ggplot(iris, aes(x = Species, y = Petal.Length)) +
  geom_boxplot() +
  labs(title = "Petal Length by Species", x = "Species", y = "Petal Length")




### 2. scatter plot with color-coded species
# Create a scatter plot with color-coded species
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Sepal Length vs. Sepal Width by Species")   



### 3. Histogram for sepal length
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(bins = 20, color = "black", fill = "lightblue") +
  labs(title = "Distribution of Sepal Length", x = "Sepal Length (cm)", y = "Frequency")




### 4. Histogram for sepal width
ggplot(iris, aes(x = Sepal.Width)) +
  geom_histogram(bins = 20, color = "black", fill = "lightblue") +
  labs(title = "Distribution of Sepal Width", x = "Sepal Width (cm)", y = "Frequency")




### Correlation Matrix
correlation_matrix <- cor(iris[, 1:4])
print(correlation_matrix)



### ANOVA Test
model <- aov(Sepal.Length ~ Species, data = iris)
summary(model)



# Perform Tukey's HSD test
TukeyHSD(model)
