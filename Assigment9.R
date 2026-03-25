
# Base R scatter plot
plot(data$age, data$interest,
     main = "Age vs Interest Rate (Base R)",
     xlab = "Age",
     ylab = "Interest Rate",
     pch = 19,
     col = "blue")
``


# Load lattice
library(lattice)

# Lattice box-and-whisker plot
bwplot(interest ~ married,
       data = data,
       main = "Interest Rates by Marital Status (Lattice)",
       xlab = "Marital Status",
       ylab = "Interest Rate",
       col = "lightgreen")



# Load ggplot2
library(ggplot2)

# ggplot2 scatter plot
ggplot(data, aes(x = age, y = interest)) +
  geom_point(color = "blue", size = 2) +
  labs(
    title = "Age vs Interest Rate (ggplot2)",
    x = "Age",
    y = "Interest Rate"
  ) +
  theme_minimal()
