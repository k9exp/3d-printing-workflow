// All units in Millimeters
use <rounded.scad>

// smoother rouding graphics
$fa = 2;
$fs = 0.25;

adapter_width = 43.25;
adapter_height = 35;
adapter_depth = 43.25;


umbrella_hole_diameter = 38.5;
corner_radius = 5;

difference() {
    group() {
        color("white") {
           roundedCube(adapter_width, 
                adapter_depth,
                adapter_height,
                corner_radius);
        }

        // Lip of top of adapter
        lip_size = 8;
        lip_height = 5;

        lip_cube_width = adapter_width + lip_size;
        lip_cube_depth = adapter_depth + lip_size;
        lip_z_offset = (adapter_height / 2) + (lip_height / 2);

        translate([0, 0, lip_z_offset]) {
            color("red"){
                roundedCube(lip_cube_width, 
                    lip_cube_depth,
                    lip_height,
                    corner_radius);
            }
        }

    } // end of group() 
    
    cylinder(h = adapter_height * 2,
        d = umbrella_hole_diameter,
        center = true);
    
} // end of difference();