#!/bin/bash
mkdir images
openscad -o images/510.png --autocenter --camera=77.56,17.90,-10.50,55,0,25,342 --imgsize=1256,944 --projection=p --preview=preview demo-510.scad
openscad -o images/510_fdv.png --autocenter --camera=-11,-19,-10,55,0,25,370 --imgsize=1256,944 --projection=p --preview=preview demo-510_fdv.scad
openscad -o images/bottle.png --autocenter --camera=0,0,36.50,55,0,25,206 --imgsize=1256,944 --projection=p --preview=preview demo-bottle.scad
openscad -o images/displays.png --autocenter --camera=18.6,-8.7,2.6,55,0,25,135 --imgsize=1256,944 --projection=p --preview=preview demo-displays.scad
openscad -o images/passthrough.png --autocenter --camera=0,0,0,55,0,25,140 --imgsize=1256,944 --projection=p --preview=preview demo-passthrough.scad
openscad -o images/pcb.png --autocenter --camera=21.6,-15.52,4.6,55,0,25,151 --imgsize=1256,944 --projection=p --preview=preview demo-pcb.scad
openscad -o images/sleds.png --autocenter --camera=45,-55,9,55,0,25,460 --imgsize=1256,944 --projection=p --preview=preview demo-sleds.scad
openscad -o images/switches.png --autocenter --camera=15,-26,-6,55,0,25,260 --imgsize=1256,944 --projection=p --preview=preview demo-switches.scad
openscad -o images/hammond_boxes_color.png --autocenter --camera=80,0,62,55,0,25,700 --imgsize=1256,944 --projection=p --preview=preview demo-hammond_boxes_color.scad
openscad -o images/hammond_boxes.png --autocenter --camera=80,0,62,55,0,25,700 --imgsize=1256,944 --projection=p --preview=preview demo-hammond_boxes.scad
