# Working Directory
# Get working directory: Display current directory.
getwd() # [cite: 2]
# Set working directory: Change current directory.
setwd() # [cite: 2]
# List files: Show files in a directory.
list.files("<folder path>") # [cite: 2, 3]

# Reading Text Files
# Read text file: Load data from a text file.
mydatafile <- read.table(file = "<file location>", header = TRUE, sep = " ",
                         na.strings = "*", stringsAsFactors = FALSE) # [cite: 2, 3]
mydatafile # [cite: 3]

# Choosing a File Interactively
# Read file (interactive): Open a file dialog to select a file.
mydatafile <- read.table(file = file.choose(), header = TRUE, sep = " ",
                         na.strings = "*", stringsAsFactors = FALSE) # [cite: 4, 5]

# Reading CSV Files
# Read CSV file: Load data from a CSV file.
spread <- read.csv(file = "/Users/tdavies/spreadsheetfile.csv",
                   header = FALSE, stringsAsFactors = TRUE) # [cite: 6]
# Read CSV from URL: Load data from a CSV file online.
iris <- read.csv("https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv") # [cite: 6, 7]
iris # [cite: 7]

# Writing Data to a File
# Write data to file: Save data to a text file.
write.table(x = mydatafile, file = "/Users/tdavies/somenewfile.txt",
            sep = "@", na = "??", quote = FALSE, row.names = FALSE) # [cite: 8, 9, 10, 11]

# Writing to JPEG
# Open JPEG device: Prepare to save plot as JPEG.
jpeg(filename = "C:/Users/nachi/Downloads/myjpegplot.jpeg",
     width = 600, height = 600) # [cite: 12, 13]
plot(1:5, 6:10, ylab = "a nice ylab", xlab = "here's an xlab",
     main = "a saved .jpeg plot") # [cite: 13]
points(1:5, 10:6, cex = 2, pch = 4, col = 2) # [cite: 13]
dev.off() # [cite: 13, 14] # Close JPEG device: Finalize JPEG saving.

# Writing to PDF
# Open PDF device: Prepare to save plot as PDF.
pdf(file = "/Users/tdavies/mypdfplot.pdf", width = 5, height = 5) # [cite: 15]
plot(1:5, 6:10, ylab = "a nice ylab", xlab = "here's an xlab",
     main = "a saved .pdf plot") # [cite: 15]
points(1:5, 10:6, cex = 2, pch = 4, col = 2) # [cite: 15]
dev.off() # [cite: 15] # Close PDF device: Finalize PDF saving.

# Plotting with Coordinate Vectors
# Create vectors.
foo <- c(1.1, 2, 3.5, 3.9, 4.2) # [cite: 16]
bar <- c(2, 2.2, -1.3, 0, 0.2) # [cite: 16]
# Plot vectors: Create a scatter plot.
plot(foo, bar) # [cite: 16]
# Combine vectors.
baz <- cbind(foo, bar) # [cite: 16]
baz # [cite: 16]
# Plot matrix: Create a scatter plot.
plot(baz) # [cite: 16]

# Plot Parameters
# Basic plot with type parameter
plot(foo,bar,type="b",main="My lovely plot",xlab="x axis label", ylab="location y") # [cite: 17, 18, 19, 20]
# Plot with color
plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",col=2) # [cite: 20, 21]
# Plot with point character
plot(foo,bar,type="b",main="My lovely plot",xlab="",ylab="",
     col=4,pch=8,lty=2,cex=2.3,lwd=3.3,xlim=c(-10,5),ylim=c(-3,3)) # [cite: 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]

# Adding Elements to an Existing Plot
# Add points to plot.
points() # [cite: 31]
# Add lines to plot.
lines() # [cite: 31]
abline() # [cite: 31]
segments() # [cite: 31]
# Add text to plot.
text() # [cite: 31]
# Add arrows to plot.
arrows() # [cite: 31]
# Add legend to plot.
legend() # [cite: 31]

# Plotting Example
x <- 1:20 # [cite: 32]
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43, 8.51, 3.41, -8.23,
       -12.01, -6.58, 2.87, 14.12, 9.63, -4.58, -14.78, -11.67, 1.17, 15.62) # [cite: 32]
plot(x, y, type = "n", main = "") # [cite: 32] # Create empty plot.
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2) # [cite: 32] # Add horizontal lines.
segments(x0 = c(5, 15), y0 = c(-5, -5), x1 = c(5, 15), y1 = c(5, 5),
         col = "red", lty = 3, lwd = 2) # [cite: 32] # Add vertical lines.
points(x[y >= 5], y[y >= 5], pch = 4,
       col = "darkmagenta", cex = 2) # [cite: 32] # Add points (y >= 5).
points(x[y <= -5], y[y <= -5], pch = 3,
       col = "darkgreen", cex = 2) # [cite: 33] # Add points (y <= -5).
points(x[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       y[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       pch = 19, col = "blue") # [cite: 33] # Add points (sweet).
points(x[(x < 5 | x > 15) & (y > -5 & y < 5)],
       y[(x < 5 | x > 15) & (y > -5 & y < 5)]) # [cite: 33] # Add other points.
lines(x, y, lty = 4) # [cite: 33] # Add lines.
arrows(x0 = 8, y0 = 14, x1 = 11, y1 = 2.5) # [cite: 33] # Add arrow.
text(x = 8, y = 15, labels = "sweet spot") # [cite: 33] # Add text.
legend("bottomleft", # [cite: 34] # Add legend.
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
install.packages("ggplot2") # [cite: 35, 36]
library("ggplot2") # [cite: 36] # Load ggplot2.
foo <- c(1.1, 2, 3.5, 3.9, 4.2) # [cite: 36]
bar <- c(2, 2.2, -1.3, 0, 0.2) # [cite: 36]
# Create a quick plot.
qplot(foo, bar, main = "My lovely qplot",
      xlab = "x axis label", ylab = "location y") # [cite: 36]

# Setting Appearance with Geoms
# Create plot with points and lines.
qplot(foo, bar, geom = "blank") + geom_point() + geom_line() # [cite: 37, 38]
# Create plot with customized points and lines.
qplot(foo, bar, geom = "blank") +
  geom_point(size = 3, shape = 6, color = "blue") +
  geom_line(color = "red", linetype = 2) # [cite: 38]

# ggplot2 Example
library(ggplot2) # [cite: 39]
x <- 1:20 # [cite: 39]
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43,8.51, 3.41,
       -8.23, -12.01, -6.58, 2.87, 14.12, 9.63, -4.58, -14.78,
       -11.67, 1.17, 15.62) # [cite: 39]
df <- data.frame(x = x, y = y) # [cite: 39] # Create data frame.
df$group <- "standard" # [cite: 39] # Add group column.
df$group[y >= 5] <- "too big" # [cite: 39] # Assign groups based on y.
df$group[y <= -5] <- "too small" # [cite: 39]
df$group[(x >= 5 & x <= 15) & (y > -5 & y < 5)] <- "sweet" # [cite: 39]
df$group <- factor(df$group,
                   levels = c("too big", "too small",
                              "sweet", "standard")) # [cite: 39] # Convert group to factor.
p <- ggplot(df, aes(x = x, y = y)) + # [cite: 39, 40, 41, 42] # Initialize ggplot.
  geom_hline(yintercept = c(-5, 5), color = "red",
             linetype = 2, linewidth = 1) + # [cite: 40] # Add horizontal lines.
  annotate("segment", x = 5, y = -5, xend = 5,
           yend = 5, color = "red", linetype = 3,
           linewidth = 1) + # [cite: 40] # Add vertical line segment.
  annotate("segment", x = 15, y = -5, xend = 15,
           yend = 5, color = "red", linetype = 3,
           linewidth = 1) + # [cite: 40] # Add vertical line segment.
  geom_line(linetype = 4) + # [cite: 40] # Add lines.
  geom_point(data = subset(df, group == "too big"),
             shape = 4, color = "darkmagenta", size = 4) + # [cite: 41] # Add points (too big).
  geom_point(data = subset(df, group == "too small"),
             shape = 3, color = "darkgreen", size = 4) + # [cite: 41] # Add points (too small).
  geom_point(data = subset(df, group == "sweet"),
             shape = 19, color = "blue") + # [cite: 41] # Add points (sweet).
  geom_point(data = subset(df, group == "standard"),
             shape = 1) + # [cite: 41] # Add points (standard).
  annotate("segment", x = 8, y = 14, xend = 11,
           yend = 2.5, arrow = arrow()) + # [cite: 41] # Add arrow.
  annotate("text", x = 8, y = 15, label = "sweet spot") + # [cite: 41] # Add text.
  theme_minimal() # [cite: 41]
print(p) # [cite: 41]

# Manual Legend Control
# Control legend appearance.
scale_color_manual(values = c("too big" = "darkmagenta",
                              "too small" = "darkgreen",
                              "sweet" = "blue",
                              "standard" = "black")) + # [cite: 42]
  scale_shape_manual(values = c("too big" = 4, "too small" = 3,
                                "sweet" = 19, "standard" = 1)) + # [cite: 42]
  scale_linetype_manual(values = c("overall process" = 4,
                                   "sweet y range" = 2)) + # [cite: 42]
  guides(color = guide_legend(title = "Points"),
         shape = guide_legend(title = "Points"),
         linetype = guide_legend(title = "Lines")) + # [cite: 42]
  theme_minimal() # [cite: 42]

# Misc
# Mimic ternary operator.
x <- 5 # [cite: 43]
y <- ifelse(x > 3, "Greater", "Smaller") # [cite: 43]
print(y) # [cite: 43]
x <- 5 # [cite: 43]
y <- {
  if (x > 3) "Greater" else "Smaller"
} # [cite: 43]
print(y) # [cite: 43]



