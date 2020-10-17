include <lock.scad>

module foot()
{
    // poziom okrętki wokół otworu
    rotate([0,0,10])
        lock();

    difference()
        {
            cylinder(r=20,h=2);
            translate([0,0,-1])
                cylinder(r=13,h=4);
        }

}

