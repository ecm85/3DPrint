length = 57;
width = 46;
height = 26;

floorThickness = 3;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.2;

smallCircleDiameter = 16;
smallCircleOffset = 2;

standardTokenHeight = 23;
waterTokenHeight = 14;


spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    translate([smallCircleDiameter/2 + spaceBetweenCircles, smallCircleDiameter/2 - smallCircleOffset, height - standardTokenHeight])
        cylinder(standardTokenHeight, d=smallCircleDiameter);

    translate([length /2, smallCircleDiameter/2 - smallCircleOffset, floorThickness])
        cylinder(height - floorThickness, d=smallCircleDiameter);
    
    translate([length - (smallCircleDiameter/2 + spaceBetweenCircles), smallCircleDiameter/2 - smallCircleOffset, height - standardTokenHeight])
        cylinder(standardTokenHeight, d=smallCircleDiameter);
    
    
    
    
    translate([smallCircleDiameter/2 + spaceBetweenCircles, width - (smallCircleDiameter/2 - smallCircleOffset), height - standardTokenHeight])
        cylinder(standardTokenHeight, d=smallCircleDiameter);

    translate([length /2, width - (smallCircleDiameter/2 - smallCircleOffset), height - standardTokenHeight])
        cylinder(standardTokenHeight, d=smallCircleDiameter);
    
    translate([length - (smallCircleDiameter/2 + spaceBetweenCircles), width - (smallCircleDiameter/2 - smallCircleOffset), height - standardTokenHeight])
        cylinder(standardTokenHeight, d=smallCircleDiameter);
    
    


    translate([smallCircleDiameter/2 - smallCircleOffset, width/2, height - waterTokenHeight])
        cylinder(waterTokenHeight, d=smallCircleDiameter);

    translate([length - (smallCircleDiameter/2 - smallCircleOffset), width/2, height - waterTokenHeight])
        cylinder(waterTokenHeight, d=smallCircleDiameter);
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

