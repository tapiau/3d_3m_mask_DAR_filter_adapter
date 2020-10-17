module stopper(height = 4)
{
    intersection()
        {
            difference()
                {
                    translate([0, - 4, 0])
                        cube([13, 4, height]);
                    rotate([0, 0, - 15])
                        translate([0, - 4, - 1])
                            cube([16, 4, height + 2]);

                }
            difference()
                {
                    cylinder(r = 13, h = height);
                    translate([0, 0, - 1])
                        cylinder(r = 11, h = height + 2);
                }
        }
}
