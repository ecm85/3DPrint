magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
length = 125;
height = 6;
width = 30;

difference() {
    cube([length, width, height]);
    translate([length * .25, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
    translate([length * .75, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}