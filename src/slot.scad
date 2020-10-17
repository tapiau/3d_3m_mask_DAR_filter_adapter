module slot(len=40)
{
    translate([0,0,-0.1])
    union()
        {
            difference()
                {
                    cube([20,20,10]);

                    rotate([0,0,len])
                    translate([0,0,-1])
                        cube([30,30,12]);
                }

            rotate([30,0,len-1])
                cube([25,20,20]);

            rotate([0,0,40])
            translate([0,0,1.7])
            difference()
                {
                    cube([20,20,10]);
                    rotate([0,0,65])
                        translate([0,0,-1])
                            cube([30,30,12]);
                }


            rotate([0,0,75])
                translate([0,0,1.5])
                    difference()
                        {
                            cube([20,20,10]);
                            rotate([0,0,30])
                                translate([0,0,-1])
                                    cube([30,30,12]);
                        }

        }
}
