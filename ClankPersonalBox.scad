length = 110;
width = 98;
height = 14;
magnetPadding = 15;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

plasticCubeSide = 10.5;
plasticCubeBoxHeight = plasticCubeSide;
plasticCubeBoxWidth = plasticCubeSide;

woodenCubeSide = 8.6;
woodenCubeBoxHeight = woodenCubeSide;
woodenCubeBoxWidth = woodenCubeSide;

wallThickness = 2;

fingerNotchSize = 11;
woodenCubeCount = 5;
woodenCubeBoxLength = woodenCubeSide * woodenCubeCount + .5;

plasticCubeCount = 2;
plasticCubeBoxLength = plasticCubeSide * plasticCubeCount + .5;

meepleBoxHeight = 9.8 + .5;
meepleBoxWidth = 19.05 + .5;
meepleBoxLength = 17.7 + .5;


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
   
        
        

    difference(){
        cube([length, width, height]);  
        translate([wallThickness, wallThickness, 0])
            WoodenCubeBoxes();
        translate([length - (wallThickness + woodenCubeBoxLength), wallThickness, 0])
            WoodenCubeBoxes();
        rotate([0,0,90])
            translate([75,-35, 0])
                PlasticCubeBox();
        //magnet
        translate([
            length/2,
            width/2,
            height - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
        translate([length - wallThickness, width - (wallThickness + meepleBoxLength), 0])
            rotate([0,0,90])
            MeepleBox();

    }
    
module WoodenCubeBoxes()
{
    translate([0,0, 0])
    {
        WoodenCubeBox();
    }
    translate([0,fingerNotchSize + woodenCubeSide, 0])
    {
        WoodenCubeBox();
    }
    translate([0,fingerNotchSize * 2 + woodenCubeSide * 2, 0])
    {
        WoodenCubeBox();
    }
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

module PlasticCubeBox()
{
    translate([0, 0, height - (plasticCubeBoxHeight/2)])
        cube([plasticCubeBoxLength, fingerNotchSize, plasticCubeBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - plasticCubeBoxHeight])
        cube([plasticCubeBoxLength, plasticCubeBoxWidth, plasticCubeBoxHeight]);
    translate([0, 0 + fingerNotchSize + plasticCubeBoxWidth, height - (plasticCubeBoxHeight/2)])
        cube([plasticCubeBoxLength, fingerNotchSize, plasticCubeBoxHeight / 2]);
}

module MeepleBox()
{
    translate([0, 0, height - (meepleBoxHeight/2)])
        cube([meepleBoxLength, fingerNotchSize, meepleBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - meepleBoxHeight])
        cube([meepleBoxLength, meepleBoxWidth, meepleBoxHeight]);
    translate([0, 0 + fingerNotchSize + meepleBoxWidth, height - (meepleBoxHeight/2)])
        cube([meepleBoxLength, fingerNotchSize, meepleBoxHeight / 2]);
}