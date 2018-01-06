height = 4;

tokenHeight = 2.7;
tokenDiameter = 15.7;

rowsOfCircles = 2;
columnsOfCircles = 2; //must be even

spaceBetweenCircles = 1;
extraSpaceBetweenRows = 0;
spaceFromSide = 2;
extraPaddingForMagnet = 0;
cutoutDiameter = 11;


length = 36;
width = 36;

echo ("length");
echo(length);
echo("width");
echo (width);

difference() {
    cube([length, width, height]);
    for(columnIndex=[0:columnsOfCircles - 1]) {
        for(rowIndex=[0:rowsOfCircles - 1]) {
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - tokenHeight])
                cylinder(tokenHeight, d=tokenDiameter);
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                0])
                cylinder(height, d=cutoutDiameter);
        }
    }
}
