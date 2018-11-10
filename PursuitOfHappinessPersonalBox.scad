hourglassHeight = 25.19 + .5;
hourglassDiameter = 14.44 + .5;
hourglassProtrusionHeight = 5;
length = 74;
width = 105;
floorHeight = 3;
height = (hourglassHeight - hourglassProtrusionHeight) + floorHeight;
totalHeight = height + 23;
magnetPadding = 15;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;



woodenCubeSide = 8.3 + .5;
woodenCubeBoxHeight = woodenCubeSide;
woodenCubeBoxWidth = woodenCubeSide;

largeWoodenCubeSide = 10.4 + .5;
largeWoodenCubeBoxHeight = largeWoodenCubeSide;
largeWoodenCubeBoxWidth = largeWoodenCubeSide;

wallThickness = 6;
lipThickness = 2;

fingerNotchSize = 11;
woodenCubeCount = 3;
largeWoodenCubeCount = 1;
woodenCubeBoxLength = woodenCubeSide * woodenCubeCount + .5;
largeWoodenCubeBoxLength = largeWoodenCubeSide * largeWoodenCubeCount + .5;

meepleBoxWidth = 10.31 + .5;
meepleBoxLength = 16.36 + .5;
meepleHeight = 16.14 + .5;
meepleHeightProtrusion = 6;
meepleBoxHeight = meepleHeight - meepleHeightProtrusion;



//      30 cubes, 7.85-8.1 (use woodenCubeSide) cubed
//		2 cubes, 10 cubed
//		1 player token
//			orange
//				17.25 width, 18.8 tall, 10.0 thick
//			blue
//				19.7 width, 18.7 tall, 9.95 thick
//			purple
//				17.4 width, 19.5 tall, 10.0 tall
//			white
//				17.7 width, 19.05 tall, 9.8 thick
 
//    rotate([0,0,90])
   
        
    difference() {    
        union() {
            difference(){
                translate([-lipThickness, -lipThickness, 0])
                    cube([length + lipThickness * 2, width + lipThickness * 2, totalHeight]);
                translate([0, 0, height])
                    cube([length, width, totalHeight - height]);
                
                translate([wallThickness, wallThickness, 0])
                    WoodenCubeBox();
                translate([wallThickness, width - (wallThickness + fingerNotchSize * 2 + largeWoodenCubeBoxWidth), 0])
                    LargeWoodenCubeBox();
                translate([wallThickness, width/2 - meepleBoxWidth/2, height - meepleBoxHeight])
                    cube([meepleBoxLength, meepleBoxWidth, meepleBoxHeight]);
                
                translate([
                    length - (1 * wallThickness + 1 * hourglassDiameter/2),
                    width/2,
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                translate([
                    length - (1 * wallThickness + 1 * hourglassDiameter/2),
                    width/2 - (hourglassDiameter + wallThickness),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                translate([
                    length - (1 * wallThickness + 1 * hourglassDiameter/2),
                    width/2 + (hourglassDiameter + wallThickness),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                translate([
                    length - (1 * wallThickness + 1 * hourglassDiameter/2),
                    width/2 + 2 * (hourglassDiameter + wallThickness),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                translate([
                    length - (1 * wallThickness + 1 * hourglassDiameter/2),
                    width/2 - 2 * (hourglassDiameter + wallThickness),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                    
                translate([
                    length - (1 * wallThickness + 3 * hourglassDiameter/2),
                    width/2 - (hourglassDiameter/2 + wallThickness/2),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                translate([
                    length - (1 * wallThickness + 3 * hourglassDiameter/2),
                    width/2 + (hourglassDiameter/2 + wallThickness/2),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                translate([
                    length - (1 * wallThickness + 3 * hourglassDiameter/2),
                    width/2 + 3 * (hourglassDiameter/2 + wallThickness/2),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                translate([
                    length - (1 * wallThickness + 3 * hourglassDiameter/2),
                    width/2 - 3 * (hourglassDiameter/2 + wallThickness/2),
                    floorHeight])
                    cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
            }
            difference(){
                translate([0, 0, hourglassHeight + 2])
                    cube([length, width, 2]);
                translate([lipThickness, lipThickness, hourglassHeight + 2])
                    cube([length - lipThickness * 2, width - lipThickness * 2, 2]);
            }
            difference(){
                translate([0, 0, hourglassHeight + 2 + 2 + 2])
                    cube([length, width, 2]);
                translate([lipThickness, lipThickness, hourglassHeight + 2 + 2 + 2])
                    cube([length - lipThickness * 2, width - lipThickness * 2, 2]);
            }
            
            difference(){
                translate([0, 0, hourglassHeight + 2 + 2 + 2 + 2 + 2])
                    cube([length, width, 2]);
                translate([lipThickness, lipThickness, hourglassHeight + 2 + 2 + 2 + 2 + 2])
                    cube([length - lipThickness * 2, width - lipThickness * 2, 2]);
            }
        }
        translate([0, width - lipThickness, floorHeight + hourglassHeight + 1])
            cube([length, wallThickness * 2, totalHeight - hourglassHeight]);
    }
    
    
    
module WoodenCubeBox()
{
    translate([0, 0, height - (woodenCubeBoxHeight/2)])
        cube([woodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - woodenCubeBoxHeight])
        cube([woodenCubeBoxLength, woodenCubeBoxWidth, woodenCubeBoxHeight]);
    translate([0, 0 + fingerNotchSize + woodenCubeBoxWidth, height - (woodenCubeBoxHeight/2)])
        cube([woodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
}

module LargeWoodenCubeBox()
{
    translate([0, 0, height - (largeWoodenCubeBoxHeight/2)])
        cube([largeWoodenCubeBoxLength, fingerNotchSize, largeWoodenCubeBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - largeWoodenCubeBoxHeight])
        cube([largeWoodenCubeBoxLength, largeWoodenCubeBoxWidth, largeWoodenCubeBoxHeight]);
    translate([0, 0 + fingerNotchSize + largeWoodenCubeBoxWidth, height - (largeWoodenCubeBoxHeight/2)])
        cube([largeWoodenCubeBoxLength, fingerNotchSize, largeWoodenCubeBoxHeight / 2]);
}

