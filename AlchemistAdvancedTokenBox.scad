length = 46;
width = 46;
height = 21.5;

floorThickness = 3;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.2;

smallCircleDiameter = 16;
smallCircleOffset = 2;

standardTokenHeight = 18.5;
waterTokenHeight = 18.5;


spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    

    translate([length /2, smallCircleDiameter/2 - smallCircleOffset, height - standardTokenHeight])
        cylinder(standardTokenHeight, d=smallCircleDiameter);
    
    

    translate([length /2, width - (smallCircleDiameter/2 - smallCircleOffset), height - standardTokenHeight])
        cylinder(standardTokenHeight, d=smallCircleDiameter);
    
   
    
    


    translate([smallCircleDiameter/2 - smallCircleOffset, width/2, height - waterTokenHeight])
        cylinder(waterTokenHeight, d=smallCircleDiameter);

    translate([length - (smallCircleDiameter/2 - smallCircleOffset), width/2, height - waterTokenHeight])
        cylinder(waterTokenHeight, d=smallCircleDiameter);
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

