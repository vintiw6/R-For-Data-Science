# Working Directory
# Get working directory: Display current directory.
getwd() #
# Set working directory: Change current directory.
setwd() #
# List files: Show files in a directory.
list.files("<folder path>") #

# Reading Text Files
# Read text file: Load data from a text file.
mydatafile <- read.table(file = "<file location>", header = TRUE, sep = " ",
                         na.strings = "*", stringsAsFactors = FALSE) #
mydatafile #

# Choosing a File Interactively
# Read file (interactive): Open a file dialog to select a file.
mydatafile <- read.table(file = file.choose(), header = TRUE, sep = " ",
                         na.strings = "*", stringsAsFactors = FALSE) #

# Reading CSV Files
# Read CSV file: Load data from a CSV file.
spread <- read.csv(file = "/Users/tdavies/spreadsheetfile.csv",
                   header = FALSE, stringsAsFactors = TRUE) #
# Read CSV from URL: Load data from a CSV file online.
iris <- read.csv("https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv") #
iris #

# Writing Data to a File
# Write data to file: Save data to a text file.
write.table(x = mydatafile, file = "/Users/tdavies/somenewfile.txt",
            sep = "@", na = "??", quote = FALSE, row.names = FALSE) #

# Writing to JPEG
# Open JPEG device: Prepare to save plot as JPEG.
jpeg(filename = "C:/Users/nachi/Downloads/myjpegplot.jpeg",
     width = 600, height = 600) #
plot(1:5, 6:10, ylab = "a nice ylab", xlab = "here's an xlab",
     main = "a saved .jpeg plot") #
points(1:5, 10:6, cex = 2, pch = 4, col = 2) #
dev.off() # # Close JPEG device: Finalize JPEG saving.

# Writing to PDF
# Open PDF device: Prepare to save plot as PDF.
pdf(file = "/Users/tdavies/mypdfplot.pdf", width = 5, height = 5) #
plot(1:5, 6:10, ylab = "a nice ylab", xlab = "here's an xlab",
     main = "a saved .pdf plot") #
points(1:5, 10:6, cex = 2, pch = 4, col = 2) #
dev.off() # # Close PDF device: Finalize PDF saving.

# Plotting with Coordinate Vectors
# Create vectors.
foo <- c(1.1, 2, 3.5, 3.9, 4.2) #
bar <- c(2, 2.2, -1.3, 0, 0.2) #
# Plot vectors: Create a scatter plot.
plot(foo, bar) #
# Combine vectors.
baz <- cbind(foo, bar) #
baz #
# Plot matrix: Create a scatter plot.
plot(baz) #

# Plot Parameters
# Basic plot with type parameter
plot(foo,bar,type="b",main="My lovely plot",xlab="x axis label", ylab="location y") #
# Plot with color
plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",col=2) #
# Plot with point character
plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",
     col=4,pch=8,lty=2,cex=2.3,lwd=3.3,xlim=c(-10,5),ylim=c(-3,3)) #

# Adding Elements to an Existing Plot
# Add points to plot.
points() #
# Add lines to plot.
lines() #
abline() #
segments() #
# Add text to plot.
text() #
# Add arrows to plot.
arrows() #
# Add legend to plot.
legend() #

# Plotting Example
x <- 1:20 #
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43, 8.51, 3.41, -8.23,
       -12.01, -6.58, 2.87, 14.12, 9.63, -4.58, -14.78, -11.67, 1.17, 15.62) #
plot(x, y, type = "n", main = "") # # Create empty plot.
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2) # # Add horizontal lines.
segments(x0 = c(5, 15), y0 = c(-5, -5), x1 = c(5, 15), y1 = c(5, 5),
         col = "red", lty = 3, lwd = 2) # # Add vertical lines.
points(x[y >= 5], y[y >= 5], pch = 4,
       col = "darkmagenta", cex = 2) # # Add points (y >= 5).
points(x[y <= -5], y[y <= -5], pch = 3,
       col = "darkgreen", cex = 2) # # Add points (y <= -5).
points(x[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       y[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       pch = 19, col = "blue") # # Add points (sweet).
points(x[(x < 5 | x > 15) & (y > -5 & y < 5)],
       y[(x < 5 | x > 15) & (y > -5 & y < 5)]) # # Add other points.
lines(x, y, lty = 4) # # Add lines.
arrows(x0 = 8, y0 = 14, x1 = 11, y1 = 2.5) # # Add arrow.
text(x = 8, y = 15, labels = "sweet spot") # # Add text.
legend("bottomleft", # # Add legend.
       legend = c("overall process", "sweet", "standard",
                  "too big", "too small", "sweet y range",
                  "sweet x range"),
       pch = c(NA, 19, 1, 4, 3, NA, NA),
       lty = c(4, NA, NA, NA, NA, 2, 3),
       col = c("black", "blue", "black", "darkmagenta",
               "darkgreen", "red", "red"),
       lwd = c(1, NA, NA, NA, NA, 2, 2),
       pt.cex = c(NA, 1, 1, 2, 2, NA, NA))

# ggplot2 Package
# Install ggplot2: Install the ggplot2 package.
install.packages("ggplot2") #
library("ggplot2") # # Load ggplot2.
foo <- c(1.1, 2, 3.5, 3.9, 4.2) #
bar <- c(2, 2.2, -1.3, 0, 0.2) #
# Create a quick plot.
qplot(foo, bar, main = "My lovely qplot",
      xlab = "x axis label", ylab = "location y") #

# Setting Appearance with Geoms
# Create plot with points and lines.
qplot(foo, bar, geom = "blank") + geom_point() + geom_line() #
# Create plot with customized points and lines.
qplot(foo, bar, geom = "blank") +
  geom_point(size = 3, shape = 6, color = "blue") +
  geom_line(color = "red", linetype = 2) #

# ggplot2 Example
library(ggplot2) #
x <- 1:20 #
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43,8.51, 3.41,
       -8.23, -12.01, -6.58, 2.87, 14.12, 9.63, -4.58, -14.78,
       -11.67, 1.17, 15.62) #
df <- data.frame(x = x, y = y) # # Create data frame.
df$group <- "standard" # # Add group column.
df$group[y >= 5] <- "too big" # # Assign groups based on y.
df$group[y <= -5] <- "too small" #
df$group[(x >= 5 & x <= 15) & (y > -5 & y < 5)] <- "sweet" #
df$group <- factor(df$group,
                   levels = c("too big", "too small",
                              "sweet", "standard")) # # Convert group to factor.
p <- ggplot(df, aes(x = x, y = y)) + # # Initialize ggplot.
  geom_hline(yintercept = c(-5, 5), color = "red",
             linetype = 2, linewidth = 1) + # # Add horizontal lines.
  annotate("segment", x = 5, y = -5, xend = 5,
           yend = 5, color = "red", linetype = 3,
           linewidth = 1) + # # Add vertical line segment.
  annotate("segment", x = 15, y = -5, xend = 15,
           yend = 5, color = "red", linetype = 3,
           linewidth = 1) + # # Add vertical line segment.
  geom_line(linetype = 4) + # # Add lines.
  geom_point(data = subset(df, group == "too big"),
             shape = 4, color = "darkmagenta", size = 4) + # # Add points (too big).
  geom_point(data = subset(df, group == "too small"),
             shape = 3, color = "darkgreen", size = 4) + # # Add points (too small).
  geom_point(data = subset(df, group == "sweet"),
             shape = 19, color = "blue") + # # Add points (sweet).
  geom_point(data = subset(df, group == "standard"),
             shape = 1) + # # Add points (standard).
  annotate("segment", x = 8, y = 14, xend = 11,
           yend = 2.5, arrow = arrow()) + # # Add arrow.
  annotate("text", x = 8, y = 15, label = "sweet spot") + # # Add text.
  theme_minimal() #
print(p) #

# Manual Legend Control
# Control legend appearance.
scale_color_manual(values = c("too big" = "darkmagenta",
                              "too small" = "darkgreen",
                              "sweet" = "blue",
                              "standard" = "black")) + #
  scale_shape_manual(values = c("too big" = 4, "too small" = 3,
                                "sweet" = 19, "standard" = 1)) + #
  scale_linetype_manual(values = c("overall process" = 4,
                                   "sweet y range" = 2)) + #
  guides(color = guide_legend(title = "Points"),
         shape = guide_legend(title = "Points"),
         linetype = guide_legend(title = "Lines")) + #
  theme_minimal() #

# Misc
# Mimic ternary operator.
x <- 5 #
y <- ifelse(x > 3, "Greater", "Smaller") #
print(y) #
x <- 5 #
y <- {
  if (x > 3) "Greater" else "Smaller"
} #
print(y) #

# Multiline comments
# Multiline comment.
# Example of multiline comment.
# Demonstrates commenting multiple lines.