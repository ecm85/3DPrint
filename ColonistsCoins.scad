length = 68;
width = 45;


//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//coins
//			Ones diameter 17.25
//			Fives diameter 21.35
//			Twenty fives diameter 26.28
//			20 1's
//			20 5's
//			15 25's

smallCircleDiameter = 17.25 + .5;
smallCircleOffset = 4;
smallCircleHeight = (10 * 2.15) + .5;

mediumCircleDiameter = 21.35 + .5;
mediumCircleOffset = 4;
mediumCircleHeight = (10 * 2.15) + .5;

largeCircleDiameter = 26.28 + .5;
largeCircleOffset = 5;
largeCircleHeight = (15 * 2.15) + .5;
floorThickness = 3;
height = largeCircleHeight + floorThickness;

spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    translate([length - (mediumCircleDiameter + spaceBetweenCircles * 2 + smallCircleDiameter/2), smallCircleDiameter/2 - smallCircleOffset, height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);


    
    
    
    translate([length - (mediumCircleDiameter/2 + spaceBetweenCircles), mediumCircleDiameter/2 - mediumCircleOffset, height - mediumCircleHeight])
        cylinder(mediumCircleHeight, d=mediumCircleDiameter);
    
    
    
    
    translate([length - (mediumCircleDiameter + spaceBetweenCircles * 2 + smallCircleDiameter/2), width - (smallCircleDiameter/2 - smallCircleOffset), height - smallCircleHeight])
        cylinder(smallCircleHeight, d=smallCircleDiameter);


    
    translate([length - (mediumCircleDiameter/2 + spaceBetweenCircles), width - (mediumCircleDiameter/2 - mediumCircleOffset), height - mediumCircleHeight])
        cylinder(mediumCircleHeight, d=mediumCircleDiameter);
    
    


    translate([largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset, width/2, height - largeCircleHeight])
        cylinder(largeCircleHeight, d=largeCircleDiameter);


        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

