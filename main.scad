$fn=100;

main();

module main()
{
    foot();
    translate([0,0,2])
        shin();
    translate([0,0,12])
        knee();
}

module knee()
{
    difference()
    {
        union()
        {
            sphere(r=13);
            rotate([60,0,0])
            {
                cylinder(r1=13,r2=13.5,h=20);
            }
        }
        union()
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
    }
}

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

module lock()
{
    difference()
    {
        color([255,255,0])
        cylinder(r=13+0.5,h=4);

        slot(30);
        rotate([0,0,120])
            slot(40);
        rotate([0,0,240])
            slot(40);

        translate([0,0,-1])
            color([255,0,0])
                cylinder(r=11,h=6);

        translate([0,0,1.5])
        {
            difference()
            {
                cylinder(r=13+1,h=4);

                blokada();
                rotate([0,0,120])
                    blokada();
                rotate([0,0,240])
                    blokada();
            }
        }
    }
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


module slot(len=10)
{
    union()
    {
        difference()
        {
            cube([20,20,10]);
            rotate([0,0,len])
                cube([30,30,20]);
        }

        rotate([30,0,len])
            cube([20,20,10]);
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

