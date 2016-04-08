# http://htmlpreview.github.io/?https://github.com/andrewpbray/oiLabs-base-R/blob/master/intro_to_r/intro_to_r.html

source("http://www.openintro.org/stat/data/arbuthnot.R")
# http://www.openintro.org/stat/data/arbuthnot.Rarbuthnotarbuthnot
arbuthnot
str(arbuthnot)
dim(arbuthnot)
names(arbuthnot)
View(arbuthnot)

arbuthnot$boys
arbuthnot$girls # What command would you use to extract just the counts of girls baptized? Try it!

plot(x = arbuthnot$year, y = arbuthnot$girls)
plot(x = arbuthnot$year, y = arbuthnot$girls, type = "l")
?plot
plot(x = arbuthnot$year, y = arbuthnot$girls, type = "o") # my choice! :)

#Is there an apparent trend in the number of girls baptized over the years? How would you describe it?
# As rising :)

plot(arbuthnot$year, arbuthnot$boys + arbuthnot$girls, type = "l")
plot(arbuthnot$year, arbuthnot$boys / arbuthnot$girls, type = "l")
plot(arbuthnot$year, arbuthnot$boys / (arbuthnot$boys + arbuthnot$girls), type = "l")

# Now, make a plot of the proportion of boys over time. What do you see? Tip: If you use the up and down arrow keys, you can scroll through your previous commands, your so-called command history. You can also access it by clicking on the history tab in the upper right panel. This will save you a lot of typing in the future.

plot(arbuthnot$year, arbuthnot$boys > arbuthnot$girls, type = "o")


source("http://www.openintro.org/stat/data/present.R")
# http://www.openintro.org/stat/data/present.R

# What years are included in this data set
min(present$year)
max(present$year)
# What are the dimensions of the data frame
dim(present)
# what are the variable or column names?
names(present)
#How do these counts compare to Arbuthnot’s? Are they on a similar scale?
# yes :)
# Make a plot that displays the boy-to-girl ratio for every year in the data set.
plot(present$year, present$boys / present$girls, type = "o")
# What do you see?
# Boys become less :)
# Does Arbuthnot’s observation about boys being born in greater proportion than girls hold up in the U.S.?
# No :)
plot(arbuthnot$year, arbuthnot$boys / arbuthnot$girls, type = "o")
# In what year did we see the most total number of births in the U.S.?
# http://cran.r-project.org/doc/contrib/Short-refcard.pdf
present$year[which.max(present$boys + present$girls)]
plot(present$year, present$boys + present$girls, type = "o") # checl visually :)

# reading
# OpenIntro Statistics Chapter 1, p. 1.1 - 1.5
# https://www.openintro.org/download.php?file=os3_tablet&referrer=/stat/textbook.php
