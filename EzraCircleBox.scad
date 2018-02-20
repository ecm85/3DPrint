length = 80;
width = 70;
height = 27;

floorThickness = 3;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 16.2;
magnetHeight = 3.2;

smallCircleDiameter = 16;
smallCircleOffset = 2;
largeCircleDiameter = 25;
largeCircleOffset = 5;

spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    translate([smallCircleDiameter/2 + spaceBetweenCircles, smallCircleDiameter/2 - smallCircleOffset, floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);

    translate([length /2 - (smallCircleDiameter/2 + spaceBetweenCircles / 2), smallCircleDiameter/2 - smallCircleOffset, floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);
    
    translate([length /2 + (smallCircleDiameter/2 + spaceBetweenCircles / 2), smallCircleDiameter/2 - smallCircleOffset, floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);
    
    translate([length - (smallCircleDiameter/2 + spaceBetweenCircles), smallCircleDiameter/2 - smallCircleOffset, floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);
    
    
    
    
    translate([smallCircleDiameter/2 + spaceBetweenCircles, width - (smallCircleDiameter/2 - smallCircleOffset), floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);

    translate([length /2 - (smallCircleDiameter/2 + spaceBetweenCircles / 2), width - (smallCircleDiameter/2 - smallCircleOffset), floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);
    
    translate([length /2 + (smallCircleDiameter/2 + spaceBetweenCircles / 2), width - (smallCircleDiameter/2 - smallCircleOffset), floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);
    
    translate([length - (smallCircleDiameter/2 + spaceBetweenCircles), width - (smallCircleDiameter/2 - smallCircleOffset), floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);
    
    


    translate([largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset, width/2, floorThickness])
        cylinder(height - floorThickness, d=largeCircleDiameter);

    translate([length - (largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset), width/2, floorThickness])
        cylinder(height - floorThickness, d=largeCircleDiameter);
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

