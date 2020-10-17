module shin()
{
    difference()
        {
            cylinder(r1=15,r2=13,h=10);
            translate([0,0,-0.01])
                cylinder(r1=13,r2=11,h=10.02);
            translate([0,0,10])
                rotate([60,0,0])
                    cylinder(r1=11,r2=11,h=21);
        }
}
