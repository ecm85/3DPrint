length = 78;
width = 65;
height = 18;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.2;

minorSecretTokenDiameter = 20.85;
minorSecretTokenOffset = 4;
minorSecretTokenHeight = 14.6;

majorSecretTokenDiameter = 22.8;
majorSecretTokenOffset = 4;
majorSecretTokenHeightOne = 12.9;
majorSecretTokenHeightTwo = 10.85;

artifactTokenDiameter = 33;
artifactTokenOffset = 5;
artifactTokenHeight = 12.75;

spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

        translate([majorSecretTokenDiameter/2 + spaceBetweenCircles, majorSecretTokenDiameter/2 - majorSecretTokenOffset, height - majorSecretTokenHeightOne])
        cylinder(majorSecretTokenHeightOne, d=majorSecretTokenDiameter);

    translate([length/2, minorSecretTokenDiameter/2 - minorSecretTokenOffset, height - minorSecretTokenHeight])
        cylinder(minorSecretTokenHeight, d=minorSecretTokenDiameter);
   
    
    translate([length - (minorSecretTokenDiameter/2 + spaceBetweenCircles), minorSecretTokenDiameter/2 - minorSecretTokenOffset, height - minorSecretTokenHeight])
        cylinder(minorSecretTokenHeight, d=minorSecretTokenDiameter);
    
    
    translate([majorSecretTokenDiameter/2 + spaceBetweenCircles, width - (majorSecretTokenDiameter/2 - majorSecretTokenOffset), height - majorSecretTokenHeightTwo])
        cylinder(majorSecretTokenHeightTwo, d=majorSecretTokenDiameter);
    
    translate([length/2, width - (minorSecretTokenDiameter/2 - minorSecretTokenOffset), height - minorSecretTokenHeight])
        cylinder(minorSecretTokenHeight, d=minorSecretTokenDiameter);
    
    translate([length - (minorSecretTokenDiameter/2 + spaceBetweenCircles), width - (minorSecretTokenDiameter/2 - minorSecretTokenOffset), height - minorSecretTokenHeight])
        cylinder(minorSecretTokenHeight, d=minorSecretTokenDiameter);


    translate([length - (artifactTokenDiameter/2 - artifactTokenOffset), width/2, height - artifactTokenHeight])
        cylinder(artifactTokenHeight, d=artifactTokenDiameter, $fn=6);


    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}


