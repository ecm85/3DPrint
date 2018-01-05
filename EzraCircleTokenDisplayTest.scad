height = 4;

tokenHeight = 2.7;
tokenDiameter = 16;
notchHeight = 3;
notchDiameter = 11;

rowsOfCircles = 2;
columnsOfCircles = 2; //must be even

spaceBetweenCircles = 1;
extraSpaceBetweenRows = 5;
spaceFromSide = 2;
spaceFromNotchSide = 5;
extraPaddingForMagnet = 0;

length = 45;
width = 37;

echo ("length");
echo(length);
echo("width");
echo (width);

difference() {
    cube([length, width, height]);
    for(columnIndex=[0:columnsOfCircles - 1]) {
        for(rowIndex=[0:rowsOfCircles - 1]) {
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromNotchSide,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - tokenHeight])
                cylinder(tokenHeight, d=tokenDiameter);
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromNotchSide - 6.3,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - notchHeight])
                cylinder(notchHeight, d=notchDiameter);
        }
    }
}
