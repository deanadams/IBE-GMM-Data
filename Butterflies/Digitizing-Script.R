#Digitizing Script: Salamander Feet

library(StereoMorph)
library(geomorph)

# 1: Digitize Landmarks

digitizeImages(image.file='Morpho-Images/', shapes.file='Morpho-Shapes/',
               landmarks.ref=paste("LM", c(1:9), sep=""))

## NOTE: Scroll in/out to zoom

# 2: Read Shape file into geomorph

shapes <- readShapes("Morpho-Shapes/")
shapesGM <- readland.shapes(shapes)

# 3: Perform GPA
Y.gpa <- gpagen(shapesGM, print.progress = FALSE)

# Plots before and after
plotAllSpecimens(simplify2array(shapesGM$landmarks)) # before GPA
plotAllSpecimens(Y.gpa$coords) # after GPA
