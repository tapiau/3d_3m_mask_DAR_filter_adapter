
include <foot.scad>
include <knee.scad>
include <shin.scad>


module main()
{
    foot();
    translate([0,0,2])
        shin();
    translate([0,0,12])
        knee();
}


module tube()
{
    difference()
    {
        cylinder(r1=15,r2=13,h=6);
        cylinder(r1=13,r2=11,h=6);
    }
}

module canal()
{
        sphere(r=11);
        rotate([60,0,0])
        {
            cylinder(r1=11,r2=11,h=21);
            translate([0,0,17])
                cylinder(r1=11,r2=11.5,h=4);
        }
        rotate([180,0,0])
        {
            cylinder(r1=11,r2=13,h=10);
        }
        rotate([180,0,0])
        {
            cylinder(r=11,h=16);
        }
}


module blokada()
{
    difference()
    {
        intersection()
        {
            cylinder(r=13,h=4);
            translate([0,-4,0])
                cube([13,4,4]);
        }
        translate([0,0,-1])
            cylinder(r=11,h=6);
        translate([0,0,-1])
        {
            rotate([0,0,-15])
                translate([0,-4,0])
                    cube([13,4,6]);
        }
    }
}

