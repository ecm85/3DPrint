height = 4;

tokenHeight = 2;
tokenDiameter = 13;
notchHeight = 3;
notchDiameter = 7;

rowsOfCircles = 2;
columnsOfCircles = 2; //must be even

spaceBetweenCircles = 1;
extraSpaceBetweenRows = 2;
spaceFromSide = 3;
extraPaddingForMagnet = 0;

length = 34;
width = 33;

echo ("length");
echo(length);
echo("width");
echo (width);

difference() {
    cube([length, width, height]);
    for(columnIndex=[0:columnsOfCircles/2 - 1]) {
        for(rowIndex=[0:rowsOfCircles - 1]) {
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - tokenHeight])
                cylinder(tokenHeight, d=tokenDiameter);
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide - 5,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - notchHeight])
                cylinder(notchHeight, d=notchDiameter);
        }
    }
    
    for(columnIndex=[columnsOfCircles/2: columnsOfCircles - 1]) {
        for(rowIndex=[0:rowsOfCircles - 1]) {
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide + extraPaddingForMagnet,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - tokenHeight])
                cylinder(tokenHeight, d=tokenDiameter);
            translate([
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide + extraPaddingForMagnet - 5 ,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - notchHeight])
                cylinder(notchHeight, d=notchDiameter);
        }
    }

}
