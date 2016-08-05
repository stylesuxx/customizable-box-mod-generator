#!/bin/bash
cat workbench.scad \
	510.scad bottle.scad cutout.scad parametric_hammond.scad \
	seed_technology_voltmeter.scad display.scad \
	switch.scad sled.scad pcb.scad thumbwheel.scad \
	helpers.scad | sed -r 's/include <.*>;//g' > box_mod.scad
