include <stopper.scad>
include <slot.scad>

module lock(r1 = 13, r2 = 11)
{
    difference()
        {
            cylinder(r = r1 + 0.5, h = 4);
            translate([0, 0, - 1])
                cylinder(r = r2, h = 6);

            triple()
            {
                slot(40);
            }
        }
}

module triple()
{
    children();
    rotate([0,0,120])
        children();
    rotate([0,0,240])
        children();
}
