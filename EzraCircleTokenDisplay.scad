height = 7;

tokenHeight = 2.7;
tokenDiameter = 15.6;

rowsOfCircles = 2;
columnsOfCircles = 4; //must be even

spaceBetweenCircles = 2.5;
spaceFromSide = 2;
extraPaddingForMagnet = 14.8;

magnetBaseInnerDiameter = 13.1;
magnetHeight = 2.7;


cutoutDiameter = 15;
cutoutHeight = tokenHeight + .7;


length = 100;
width = 90;

echo ("length");
echo(length);
echo("width");
echo (width);

difference() {
    cube([length, width, height]);
    translate([23, 0, 0])
        rotate([0, 0, 45])
            clover();
    
    translate([23, 43, 0])
        rotate([0, 0, 45])
            clover();    

    translate([50, 21.5, 0])
        rotate([0, 0, 45])
            clover();    

    translate([77, 0, 0])
        rotate([0, 0, 45])
            clover();

    translate([77, 43, 0])
        rotate([0, 0, 45])
            clover();
    
//    translate([23, width/2 - (cutoutDiameter + tokenDiameter/2), 0])
//        rotate([0, 0, 45])
//            clover();    
//    
//    translate([23, width/2 - (cutoutDiameter + tokenDiameter/2), 0])
//        rotate([0, 0, 45])
//            clover();
//    translate([23, width/2 - (cutoutDiameter + tokenDiameter/2), 0])
//        rotate([0, 0, 45])
//            clover();    
   
    translate([length/2, 10, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
    translate([length/2, width - 10, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}

module clover()
{
    for(columnIndex=[0:1]) {
            for(rowIndex=[0:1]) {
                tokenX = (tokenDiameter + spaceBetweenCircles) * columnIndex + tokenDiameter/2;
                tokenY = (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2;
                translate([
                    tokenX,
                    tokenY,
                    height - tokenHeight])
                    cylinder(tokenHeight, d=tokenDiameter);
                if (columnIndex == 0 && rowIndex == 0)
                {
                    nextTokenX = (tokenDiameter + spaceBetweenCircles) * (columnIndex + 1) + tokenDiameter/2;
                    nextTokenY = (tokenDiameter + spaceBetweenCircles) * (rowIndex + 1) + tokenDiameter/2;
                    cutoutX = (tokenX + nextTokenX) / 2;
                    cutoutY = (tokenY + nextTokenY) / 2;
                    translate([
                        cutoutX,
                        cutoutY,
                        height - cutoutHeight])
                        cylinder(cutoutHeight, d=cutoutDiameter);
                }
            
        }
    }
}