hourglassHeight = 25.19 + .5;
hourglassDiameter = 14.94 + .5;
hourglassProtrusionHeight = 6;
length = 74;
width = 105;
floorHeight = 3;
height = (hourglassHeight - hourglassProtrusionHeight) + floorHeight;
totalHeight = height + hourglassProtrusionHeight + 2;
magnetPadding = 15;
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;



woodenCubeSide = 8.3 + .5;
woodenCubeBoxHeight = woodenCubeSide - hourglassProtrusionHeight;
woodenCubeBoxLength = woodenCubeSide;

largeWoodenCubeSide = 10.4 + .5;
largeWoodenCubeBoxHeight = largeWoodenCubeSide - hourglassProtrusionHeight;
largeWoodenCubeBoxWidth = largeWoodenCubeSide;

wallThickness = 6;
lipThickness = 2;

woodenCubeCount = 3;
largeWoodenCubeCount = 1;
woodenCubeBoxWidth = woodenCubeSide * woodenCubeCount + .5;
largeWoodenCubeBoxLength = largeWoodenCubeSide * largeWoodenCubeCount + .5;

meepleBoxLength = 10.31 + .5;
meepleBoxWidth = 16.36 + .5;
meepleHeight = 16.14 + .5;
meepleBoxHeight = meepleHeight - hourglassProtrusionHeight;



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
   
    union() {    
        difference() {    
            
                difference(){
                    translate([-lipThickness, -lipThickness, 0])
                        cube([length + lipThickness * 2, width + lipThickness * 2, totalHeight]);
                    translate([0, 0, height])
                        cube([length, width, totalHeight - height]);
                    
                    translate([wallThickness, wallThickness, 0])
                        WoodenCubeBox();
                    translate([wallThickness, width - (wallThickness + largeWoodenCubeBoxWidth), 0])
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
                        length - (1 * wallThickness + 3 * hourglassDiameter/2 + 2),
                        width/2 - 2 * (hourglassDiameter + wallThickness),
                        floorHeight])
                        cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                    translate([
                        length - (1 * wallThickness + 3 * hourglassDiameter/2 + 2),
                        width/2 - (hourglassDiameter + wallThickness),
                        floorHeight])
                        cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                    translate([
                        length - (1 * wallThickness + 3 * hourglassDiameter/2 + 2),
                        width/2 + (hourglassDiameter + wallThickness),
                        floorHeight])
                        cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                    translate([
                        length - (1 * wallThickness + 3 * hourglassDiameter/2 + 2),
                        width/2 + 2 * (hourglassDiameter + wallThickness),
                        floorHeight])
                        cylinder(hourglassHeight - hourglassProtrusionHeight, d=hourglassDiameter);
                    
                }
               
            
            translate([0, width - lipThickness, floorHeight + hourglassHeight + 1])
                cube([length, wallThickness * 2, totalHeight - hourglassHeight]);
        }
        difference() {
            translate([length/2, width/2, 0])
                cylinder(height + hourglassProtrusionHeight, d=magnetBaseOuterDiameter);
            translate([length/2, width/2, height + hourglassProtrusionHeight - magnetHeight])
                 cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        }
    }
    
    
    
module WoodenCubeBox()
{

    translate([0, 0, height - woodenCubeBoxHeight])
        cube([woodenCubeBoxLength, woodenCubeBoxWidth, woodenCubeBoxHeight]);

}

module LargeWoodenCubeBox()
{

    translate([0, 0, height - largeWoodenCubeBoxHeight])
        cube([largeWoodenCubeBoxLength, largeWoodenCubeBoxWidth, largeWoodenCubeBoxHeight]);

}

