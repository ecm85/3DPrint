height = 4;

tokenHeight = 2.7;
tokenDiameter = 16;
notchHeight = 3;
notchDiameter = 11;
notchOffset = 6.3;

rowsOfCircles = 5;
columnsOfCircles = 4; //must be even

spaceBetweenCircles = 1;
extraSpaceBetweenRows = 3;
spaceFromSide = 6;
extraPaddingForMagnet = 15;

magnetBaseInnerDiameter = 16.2;
magnetHeight = 3.2;



length = 103;
width = 90;

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
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide - notchOffset,
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
                (tokenDiameter + spaceBetweenCircles + extraSpaceBetweenRows) * columnIndex + tokenDiameter/2 + spaceFromSide + extraPaddingForMagnet - notchOffset ,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - notchHeight])
                cylinder(notchHeight, d=notchDiameter);
        }
    }
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}
