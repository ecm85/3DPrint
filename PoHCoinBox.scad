length = 65;
width = 60;
height = 19;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//
//		1s
//			19.2 diameter
//			28 coins
//			height 13.97
//
//		5s
//			13 coins
//			22.71 diameter
//			height 15.95

smallCircleDiameter = 19.2 + .5;
smallCircleOffset = 4;
smallCircleHeight = 13.97 + .5;

largeCircleDiameter = 22.71 + .5;
largeCircleOffset = 5;
largeCircleHeight = 15.95 + .5;

spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    translate([
        length - (spaceBetweenCircles * 2 + smallCircleDiameter/2),
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
   translate([
        (spaceBetweenCircles * 2 + smallCircleDiameter/2),
        smallCircleDiameter/2 - smallCircleOffset,
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);

   translate([
        length - (spaceBetweenCircles * 2 + smallCircleDiameter/2),
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
   translate([
        (spaceBetweenCircles * 2 + smallCircleDiameter/2),
        width - (smallCircleDiameter/2 - smallCircleOffset),
        height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);
    

    translate([largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset, width/2, height - largeCircleHeight])
        cylinder(largeCircleHeight, d=largeCircleDiameter);

    translate([length - (largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset), width/2, height - largeCircleHeight])
        cylinder(largeCircleHeight, d=largeCircleDiameter);
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

