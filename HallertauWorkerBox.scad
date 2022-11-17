length = 90;
width = 90;
height = 35;
wallThickness = 3;
sphereWidth = width - wallThickness;
floorHeight = 3;
pillarSideLength = 9;
pillarHeight = height;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

union() {
    difference() {
        union(){
            $fn=50;
            minkowski()
            {
              translate([2,2,0])
                cube([length-4, width-4, height - 1]);
              cylinder(r=2,h=1);
            }
        }
        translate([length/2, width/2, sphereWidth/2 + floorHeight])
            sphere(d=sphereWidth);
    }
    difference() {
        translate([length/2, width/2, 0])
            cylinder(r=pillarSideLength,h=pillarHeight);
        translate([length/2,  width/2, pillarHeight - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
    }
}