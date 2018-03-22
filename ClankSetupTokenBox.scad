length = 95;
width = 68;
height = 18;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.2;

minorSecretDiameter = 20.85;
minorSecretOffset = 4;
minorSecretHeight = 14.6;

majorSecretTokenDiameter = 22.8;
majorSecretTokenOffset = 4;
majorSecretTokenHeightOne = 12.9;
majorSecretTokenHeightTwo = 10.85;

artifactTokenDiameter = 31.5;
artifactTokenOffset = 5;
artifactTokenHeight = 12.75;

spaceBetweenCircles = 3;

difference(){
    cube([length, width, height]);

    translate([minorSecretDiameter/2 + spaceBetweenCircles, minorSecretDiameter/2 - minorSecretOffset, height - minorSecretHeight])
        cylinder(minorSecretHeight, d=minorSecretDiameter);

    translate([length /2 + (spaceBetweenCircles + minorSecretDiameter)/2, minorSecretDiameter/2 - minorSecretOffset, height - minorSecretHeight])
        cylinder(minorSecretHeight, d=minorSecretDiameter);
    translate([length /2 - (spaceBetweenCircles + minorSecretDiameter)/2, minorSecretDiameter/2 - minorSecretOffset, height - minorSecretHeight])
        cylinder(minorSecretHeight, d=minorSecretDiameter);
    
    translate([length - (minorSecretDiameter/2 + spaceBetweenCircles), minorSecretDiameter/2 - minorSecretOffset, height - minorSecretHeight])
        cylinder(minorSecretHeight, d=minorSecretDiameter);
    
    
    translate([majorSecretTokenDiameter/2 + spaceBetweenCircles, width - (majorSecretTokenDiameter/2 - majorSecretTokenOffset), height - majorSecretTokenHeightTwo])
        cylinder(majorSecretTokenHeightTwo, d=majorSecretTokenDiameter);

    translate([length /2, width - (artifactTokenDiameter/2 - artifactTokenOffset), height - artifactTokenHeight])
        cylinder(artifactTokenHeight, d=artifactTokenDiameter, $fn=6);
    
    translate([length - (majorSecretTokenDiameter/2 + spaceBetweenCircles), width - (majorSecretTokenDiameter/2 - majorSecretTokenOffset), height - majorSecretTokenHeightOne])
        cylinder(majorSecretTokenHeightOne, d=majorSecretTokenDiameter);
    

    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}


