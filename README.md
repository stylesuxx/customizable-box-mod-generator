# Customizable Box Mod Genertor
This repository contains the sources for [Thing 1685090](http://www.thingiverse.com/thing:1685090).

## Using the sources
Clone this repository, open *workbench.scad* in [openSCAD](http://www.openscad.org/) and edit away.

## Generating all in one file
For thingiverse a single *.scad file is required, includes are not working. A helper script is in place to generate a single file containing everything needed to run the customizer on thingiverse. This is also the only file attached to the thing.

From the root directory of the repository invoke:

    ./helpers/build.sh

This will generate the file *box-mod.scad*.

## Generating Images
To generate preview images from the demos simply invoke the following command from the root of this repository.

    ./helpers/renderDemoImages.sh
