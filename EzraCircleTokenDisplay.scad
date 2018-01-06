height = 4;

tokenHeight = 2.7;
tokenDiameter = 15.6;

rowsOfCircles = 5;
columnsOfCircles = 4; //must be even

spaceBetweenCircles = 1;
spaceFromSide = 2;
extraPaddingForMagnet = 14.8;

magnetBaseInnerDiameter = 13.1;
magnetHeight = 2.7;
cutoutDiameter = 13;


length = 84;
width = 86;

echo ("length");
echo(length);
echo("width");
echo (width);

difference() {
    cube([length, width, height]);
    for(columnIndex=[0:columnsOfCircles/2 - 1]) {
        for(rowIndex=[0:rowsOfCircles - 1]) {
            
            translate([
                (tokenDiameter + spaceBetweenCircles) * columnIndex + tokenDiameter/2 + spaceFromSide,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - tokenHeight])
                cylinder(tokenHeight, d=tokenDiameter);
            translate([
                (tokenDiameter + spaceBetweenCircles) * columnIndex + tokenDiameter/2 + spaceFromSide,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                0])
                cylinder(height, d=cutoutDiameter);
            
        }
    }
    
    for(columnIndex=[columnsOfCircles/2: columnsOfCircles - 1]) {
        for(rowIndex=[0:rowsOfCircles - 1]) {
            
            translate([
                (tokenDiameter + spaceBetweenCircles) * columnIndex + tokenDiameter/2 + spaceFromSide + extraPaddingForMagnet,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                height - tokenHeight])
                cylinder(tokenHeight, d=tokenDiameter);
            translate([
                (tokenDiameter + spaceBetweenCircles) * columnIndex + tokenDiameter/2 + spaceFromSide + extraPaddingForMagnet,
                (tokenDiameter + spaceBetweenCircles) * rowIndex + tokenDiameter/2 + spaceFromSide,
                0])
                cylinder(height, d=cutoutDiameter);
            
        }
    }
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}
