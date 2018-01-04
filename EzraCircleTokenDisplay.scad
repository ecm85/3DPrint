height = 4;

tokenHeight = 2;
tokenDiameter = 13;
notchHeight = 3;
notchDiameter = 7;

rowsOfCircles = 5;
columnsOfCircles = 4; //must be even

spaceBetweenCircles = 1;
extraSpaceBetweenRows = 2;
spaceFromSide = 3;
extraPaddingForMagnet = 19;

magnetBaseInnerDiameter = 16.2;
magnetHeight = 3.2;

length = 84;
width = 75;

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
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}
