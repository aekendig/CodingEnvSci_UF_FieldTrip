#### How this works ####

# Now let's use the skills we've learned to answer the research question:
# Does fungicide affect the growth of a native or invasive species?



#### Load packages ####

library(ggplot2)



#### Import data ####

# We entered the data you collected in the lab and put it into the "data" folder. 
# Now, import the data from that folder by running the code below. 
fung <- read.csv("./data/fungicide-experiment.csv")



#### Look at data ####

# Use the "head" function and dollar sign to look at the top of the dataframe and some of its columns just like we did with the bio data in the last activity.
# Write your code here:



# Talk with your partner to make sure you both understand what's in the dataframe.



#### Plot of fungicide and height ####

# Let's look at our first measurement, height, and see how it was affected by fungicide for each plants species.
ggplot(fung, aes(x = fungicide, y = height, color = species)) +
  stat_summary(fun.y = "mean", geom = "point", position = position_dodge(0.2)) +
  stat_summary(fun.data = "mean_se", geom = "errorbar", width = 0.2, position = position_dodge(0.2))
  
# This is a much more complex plot code than what we've seen so far. Let's walk through each part.
# Inside the ggplot function is the name of the dataframe (fung), the x-axis (fungicide), and the y-axis (height). 
# A new piece is "color". We are changing the color of the points and error bars based on which plant species they belong to (Mv, the invasive plant, or Ev, the native plant).
# Next, we are using stat_summary to calculate the average height among our replicate pots and the standard error. 
# The first stat_summary calculates the mean and makes it a "point". 
# position = position_dodge(0.2) moves the pink and blue points away from each other just a little.
# The second stat_summary calculates the standard error and makes it an errorbar with width 0.2.
# The errorbars also need to be moved away a little (hence, the position = position_dodge(0.2))
  

  
#### Uncertainty (again) ####

# At the end of the biodiversity_benefits analysis, we talked about uncertainty.
# The errorbars in the plot you just made represent uncertainty. 
# Which treatment or species has the largest uncertainty? Which has the smallest?
# Look at the data and discuss with your partner what might be causing that:
fung

  

#### Make a new column ####
  
# We measured leaf area and leaf weight in the lab.
# We can combine these two measurements for a useful metric: leaf mass area (LMA).
# A big LMA tells us that the leaf is very thick and resistant to insect feeding.
# A small LMA tells us that the leaf is very thin and grows quickly.
fung$LMA <- fung$leaf_weight/fung$leaf_area

# Now check that it looks right by using the "head" function like you did at the top of this activity.



#### Plot of fungicide and LMA ####

# Copy the code in the "Plot of fungicide and height" section below.
# Edit it so that you can look at the relationship between fungicide and LMA (with different colors for different species).






#### Evaluating hypotheses ####

# Look at the two plots you made in this activity.
# Discuss with your partner: were your hypotheses supported?