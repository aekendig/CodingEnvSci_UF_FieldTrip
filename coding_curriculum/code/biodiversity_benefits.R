#### How this works ####

# Now you'll be working straight in RStudio.

# The instructions have hashtags and green text.
# Each section has four hashtags before and after the name. 
# There is a menu bar at the bottom of this window that you can use to jump between sections.
# The code is in black and blue text. 

# To run the code, put your cursor next to it and press the Run button above.



#### Load packages ####

# Load the plotting package, ggplot2, by running the code below.
library(ggplot2)



#### Import data ####

# We entered the data you collected at the research station and put it into the "data" folder. 
# Now, import the data from that folder by running the code below. 
bio <- read.csv("./data/biodiversity-benefits-sim.csv")



#### Look at the data ####

# We'll use the same function as we did in the intro lesson to look at the data.
head(bio)

# With your partner, discuss what each column means.
# Use the dollar sign ($) to see the values in the columns.
# Write your code here:



# Make sure you know what NA means. Ask the instructor if not.



#### Plot of richness and height ####

# Remember that we made a hypothesis about how richness would affect height.
# Tell your partner what your hypothesis was.

# Let's see if we were right (remember that it's okay to be wrong in scientific research).
# Here is a plot of richness and height:
ggplot(bio, aes(x = richness, y = height)) +
  geom_point(size = 2)

# What do you think? Was your hypothesis supported?
# It may look messy, but environmental science data usually is!



#### Plot of richness and pollinators ####

# Tell your partner what your hypothesis was about how richness would affect pollinators.
# In the space below, make a plot of richness and pollinators just like the one above:



# What do you think? Was your hypothesis supported?



#### Plot of richness and disease ####

# Tell your partner what your hypothesis was about how richness would affect disease.
# In the space below, make a plot of richness and disease just like the one above:



# What do you think? Was your hypothesis supported?



#### Uncertainty ####

# You can look back through your plots by pressing the left and right arrows on the Plots box.
# Was it difficult to talk about any of the questions above because there were very few data points?
# Having too few data points is one source of uncertainty.
# Collecting more data is not always better, but sometimes it helps.
# What are some other things that make you unsure about the results?
# Talk to your partner and see what they came up with.