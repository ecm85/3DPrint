magnetDiameter = 6.3;
magnetHeight = 3.2;
difference()
{
    
    cylinder(h=18.5 + 3, d=55 + 15, $fn=6);
    translate([0, 0, 3])
        cylinder(h=18.5, d=55, $fn=6);
    translate([-55/4, -(55 + 15)/2, 3])
        cube([55/2, 55 + 15, 18.5]);
    translate([(55)/2 + magnetDiameter/2, 0, 18.5 + 3 - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);
    translate([-(55)/2 -magnetDiameter/2, 0, 18.5 + 3 - magnetHeight])
        cylinder(h=magnetHeight, d=magnetDiameter);
}

