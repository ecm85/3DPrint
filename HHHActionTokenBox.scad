length = 93;
width = 55;
height = 21;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

//  medical tokens 2.02 thick 9 tokens total 18.3 thick 25.16 diameter
//	admin tokens 2.15 thick 6 tokens 12.91 thick 22.7 diameter
//	chief of staff 2.05 thick 31.5 diameter
//	star token 2.05 thick 33.18wi 

medicalTokenDiameter = 25.16 + .5;
medicalTokenOffset = 4;
medicalTokenHeight = 18.3;

adminTokenDiameter = 22.7 + .5;
adminTokenOffset = 4;
adminTokenHeight = 12.91 + .5;

chiefTokenDiameter = 31.5 + .5;
chiefTokenOffset = 4;
chiefTokenHeight = 2.05 + .5;

starTokenDiameter = 37 + .5;
starTokenOffset = 2;
starTokenHeight = 2.05 + .5;

spaceBetweenCircles = 2;

difference(){
    cube([length, width, height]);

    translate(
        [
            spaceBetweenCircles + medicalTokenDiameter/2,  
            medicalTokenDiameter/2 - medicalTokenOffset,
            height - medicalTokenHeight
        ])
        cylinder(medicalTokenHeight, d=medicalTokenDiameter);


    
    
    
    translate(
        [
            length - (adminTokenDiameter/2 + spaceBetweenCircles),
            adminTokenDiameter/2 - adminTokenOffset,
            height - adminTokenHeight
        ])
        cylinder(adminTokenHeight, d=adminTokenDiameter);
    
    
    
    
    translate(
        [
            spaceBetweenCircles + chiefTokenDiameter/2,
            width - (chiefTokenDiameter/2 - chiefTokenOffset),
            height - chiefTokenHeight
        ])
        cylinder(chiefTokenHeight, d=chiefTokenDiameter);


    translate(
        [
            length - (starTokenDiameter/2 + spaceBetweenCircles),
            width - (starTokenDiameter/2 - starTokenOffset),
            height - starTokenHeight
        ])
       rotate([0, 0, -18])
    
            cylinder(starTokenHeight, d=starTokenDiameter, $fn=5);
   


        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

