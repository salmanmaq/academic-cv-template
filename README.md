# Latex academic CV template

This is a modified version of [my-latex-cv](https://github.com/PrimozGodec/my-latex-cv) by [Primož Godec](https://github.com/PrimozGodec). The changes include:

 1. A Summary / Objective section
 2. Keywords for software stack used at jobs
 3. Thesis for educational degrees
 4. Removed Date of Birth to include a personal website
 6. Shortened the space between sections
 7. Shortened the page margins to 1 cm
 8. Other major changes to make it an academic CV
 9. Moved from a two column format to a single column one

### Compiling the CV

There are two possible ways to edit and compile the CV. I suggest using the Overleaf.

#### Use Overleaf online editor (Preferred)

You can also use [Overleaf](https://www.overleaf.com/) online editor. You just open a new project and copy files from this repository there. Everything should work there just set the project's compiler to XeLaTeX.

#### Compile localy
You will need XeLaTex (pdfLaTeX will not work because of the different fonts used). If you do not have `xelatex` command already working you need to install it following [instructions](http://www.texts.io/support/).

You latex file can be compiled the following way:
```
xelatex example.tex
```
If you get an issue that says FontAwesome is missing. You can solve it with installing FontAwesome font in you system fonts - you can get it [here](https://github.com/h5p/font-awesome ) 
