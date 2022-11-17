height = 49;

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

// 29.75 x 3.59
// 10 1's
// 25 2's
// 25 10's
// 6 50's
// 4 100's

// 10, 12, 13, 12, 13, 6, 4


smallCircleDiameter = 29.75 + .5;
smallCircleOffset = 3;
smallCircleHeight4 = 14.36 + .5;
smallCircleHeight6 = 21.54 + .5;
smallCircleHeight10 = 35.90 + .5;
smallCircleHeight12 = 43.08 + .5;
smallCircleHeight13 = 46.67 + .5;

spaceBetweenCircles = 3;
wallThickness = 3;

width = 90;
length = 110;

difference(){
    minkowski()
    {
      translate([2,2,0])
        cube([length-4, width-4, height - 1]);
      cylinder(r=2,h=1);
    }
    
   translate([
        wallThickness * 1 + (smallCircleDiameter * 1/2) - 1,
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight10])
        cylinder(smallCircleHeight10, d=smallCircleDiameter);
    translate([
        wallThickness * 2 + smallCircleDiameter * 3/2 - 1,
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight12])
        cylinder(smallCircleHeight12, d=smallCircleDiameter);
    translate([
        wallThickness * 3 + smallCircleDiameter * 5/2 - 1,
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight13])
        cylinder(smallCircleHeight13, d=smallCircleDiameter);


   translate([
        wallThickness * 1 + (smallCircleDiameter * 1/2) - 1,
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight4])
        cylinder(smallCircleHeight4, d=smallCircleDiameter);
    translate([
        wallThickness * 2 + smallCircleDiameter * 3/2 - 1,
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight6])
        cylinder(smallCircleHeight6, d=smallCircleDiameter);
    translate([
        wallThickness * 3 + smallCircleDiameter * 5/2 - 1,
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight13])
        cylinder(smallCircleHeight13, d=smallCircleDiameter);

    

    //translate([smallCircleDiameter/2 - smallCircleOffset, width/2, height - smallCircleHeight12])
    //    cylinder(smallCircleHeight12, d=smallCircleDiameter);

    translate([length - (smallCircleDiameter/2 - smallCircleOffset), width/2, height - smallCircleHeight12])
        cylinder(smallCircleHeight12, d=smallCircleDiameter);
        
    translate([2 * length/3, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
    translate([1 * length/3, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

