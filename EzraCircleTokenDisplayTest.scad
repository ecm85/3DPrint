height = 5;

tokenHeight = 2.7;
tokenDiameter = 15.6;

rowsOfCircles = 3;
columnsOfCircles = 4; //must be even

spaceBetweenCircles = 2.5;
spaceFromSide = 2;
extraPaddingForMagnet = 14.8;

magnetBaseInnerDiameter = 13.1;
magnetHeight = 2.7;

cutoutWidth = 18.3;
cutoutLength = 8;
cutoutHeight = tokenHeight + .7;

useMagnet = true;

length = 53;
width = 56;

echo ("length");
echo(length);
echo("width");
echo (width);

difference() {
    cube([length, width, height]);
    for(columnIndex=[0:columnsOfCircles - 1]) {
        for(rowIndex=[0:rowsOfCircles - 1]) {
            tokenX = !useMagnet || columnIndex <=columnsOfCircles/2 - 1 ? 
                (tokenDiameter + spaceBetweenCircles) * columnIndex + tokenDiameter/2 + spaceFromSide :
                (tokenDiameter + spaceBetweenCircles) * columnIndex + tokenDiameter/2 + spaceFromSide + extraPaddingForMagnet;
            tokenY = (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide;
            translate([
                tokenX,
                tokenY,
                height - tokenHeight])
                cylinder(tokenHeight, d=tokenDiameter);
            if ((!useMagnet || columnIndex != columnsOfCircles/2 - 1) && columnIndex != columnsOfCircles-1 && rowIndex < rowsOfCircles - 1)
            {
                nextTokenX = !useMagnet || columnIndex <=columnsOfCircles/2 - 1 ? 
                    (tokenDiameter + spaceBetweenCircles) * (columnIndex + 1) + tokenDiameter/2 + spaceFromSide :
                    (tokenDiameter + spaceBetweenCircles) * (columnIndex + 1) + tokenDiameter/2 + spaceFromSide + extraPaddingForMagnet;
                nextTokenY = (tokenDiameter + spaceBetweenCircles) * (rowIndex + 1) + tokenDiameter/2 + spaceFromSide;
                cutoutCenterX = (tokenX + nextTokenX) / 2;
                cutoutCenterY = (tokenY + nextTokenY) / 2;
                translate([
                    cutoutCenterX - cutoutLength/2,
                    cutoutCenterY - cutoutWidth/2,
                    height - cutoutHeight])
                    cube([cutoutLength, cutoutWidth, cutoutHeight]);
            }
            
        }
    }
    if(useMagnet)
        translate([length - magnetBaseInnerDiameter/2 - 3, width/2, height - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}
