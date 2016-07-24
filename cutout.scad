//elliptic(25, 15, 5);

module elliptic(height, width, depth) {
  radius = width / 2;

  translate([0, depth / 2, radius - height / 2])
    rotate([90, 0, 0])
      hull() {
        cylinder(r=radius, h = depth);

        translate([0, height - radius * 2], 0)
          cylinder(r=radius, h = depth);
      }
}