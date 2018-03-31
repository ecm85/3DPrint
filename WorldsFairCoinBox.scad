length = 72;
width = 50;
height = 21;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//
//		1s
//			19.11 diameter
//			17 coins
//			height 33.15, or 17.55 and 15.6
//
//		2s
//			13 coins
//			23.11 diameter
//			height 25.45, or 13.68 and 11.74
//		4s
//			4 coins
//			28.11 diameter
//			7.8 height

smallCircleDiameter = 19.11 + .5;
smallCircleOffset = 4;
smallCircleHeight1 = 17.55 + .5;
smallCircleHeight2 = 15.6 + .5;

mediumCircleDiameter = 23.11 + .5;
mediumCircleOffset = 4;
mediumCircleHeight1 = 13.68 + .5;
mediumCircleHeight2 = 11.74 + .5;

largeCircleDiameter = 28.11 + .5;
largeCircleOffset = 5;
largeCircleHeight = 7.8 + .5;


spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    translate([length - (mediumCircleDiameter + spaceBetweenCircles * 2 + smallCircleDiameter/2), smallCircleDiameter/2 - smallCircleOffset, height - smallCircleHeight1])
        cylinder(smallCircleHeight1, d=smallCircleDiameter);


    
    
    
    translate([length - (mediumCircleDiameter/2 + spaceBetweenCircles), mediumCircleDiameter/2 - mediumCircleOffset, height - mediumCircleHeight1])
        cylinder(mediumCircleHeight1, d=mediumCircleDiameter);
    
    
    
    
    translate([length - (mediumCircleDiameter + spaceBetweenCircles * 2 + smallCircleDiameter/2), width - (smallCircleDiameter/2 - smallCircleOffset), height - smallCircleHeight2])
        cylinder(smallCircleHeight2, d=smallCircleDiameter);


    
    translate([length - (mediumCircleDiameter/2 + spaceBetweenCircles), width - (mediumCircleDiameter/2 - mediumCircleOffset), height - mediumCircleHeight2])
        cylinder(mediumCircleHeight2, d=mediumCircleDiameter);
    
    


    translate([largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset, width/2, height - largeCircleHeight])
        cylinder(largeCircleHeight, d=largeCircleDiameter);


        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

