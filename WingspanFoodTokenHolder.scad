height = 26;

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//
//		1s
//			19.2 diameter
//			28 coins
//			height 13.97
//


smallCircleDiameter = 19.02 + .5;
smallCircleOffset = 3;
smallCircleHeight = 23.43 + .5;
smallCircleHeight2 = 21.45 + .5;
smallCircleHeight3 = 17.55 + .5;

spaceBetweenCircles = 3;
wallThickness = 3;

width = 55;
length = wallThickness * 5 + smallCircleDiameter * 4;

difference(){
    minkowski()
        {
          cube([length - 2, width, height - 1]);
          cylinder(r=2,h=1);
        }
    
   translate([
        wallThickness * 1 + (smallCircleDiameter * 1/2) - 1,
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    translate([
        wallThickness * 2 + smallCircleDiameter * 3/2 - 1,
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    translate([
        wallThickness * 3 + smallCircleDiameter * 5/2 - 1,
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    translate([
        wallThickness * 4 + smallCircleDiameter * 7/2 - 1,
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);

   translate([
        wallThickness * 1 + (smallCircleDiameter * 1/2) - 1,
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    translate([
        wallThickness * 2 + smallCircleDiameter * 3/2 - 1,
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    translate([
        wallThickness * 3 + smallCircleDiameter * 5/2 - 1,
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    translate([
        wallThickness * 4 + smallCircleDiameter * 7/2 - 1,
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    

    translate([smallCircleDiameter/2 - smallCircleOffset, width/2, height - smallCircleHeight2])
        cylinder(smallCircleHeight2, d=smallCircleDiameter);

    translate([length - (smallCircleDiameter/2 - smallCircleOffset), width/2, height - smallCircleHeight3])
        cylinder(smallCircleHeight3, d=smallCircleDiameter);
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

