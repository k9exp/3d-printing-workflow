module inverseCorner(radius, length) {
    difference() {
        cube([radius + 0.01, radius + 0.01, length], center = true);

        translate([radius / 2, radius / 2, 0])
            cylinder(r = radius, h = length + 1, center = true);
    }
}

module roundedCube(width, depth, height, radius) {
    difference() {
        cube([width, depth, height], center = true);

        // Front left
        translate([(-width / 2) + (radius / 2),
                   (-depth / 2) + (radius / 2),
                   0])
            inverseCorner(radius=radius, length=depth * 2);

        // Front right
        translate([(width / 2) - (radius / 2),
                  (-depth / 2) + (radius / 2),
                  0])
            rotate([0, 0, 90])
                inverseCorner(radius=radius, length=depth * 2);

        // Back left
        translate([(-width / 2) + (radius / 2),
                   (depth / 2) - (radius / 2),
                   0])
            rotate([0, 0, -90])
                inverseCorner(radius=radius, length=height * 2);

        // Back right
        translate([(width / 2) - (radius / 2),
                   (depth / 2) - (radius / 2),
                    0])
            rotate([0, 0, 180])
                inverseCorner(radius=radius, length=depth * 2);
    }
}
