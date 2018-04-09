length = 45;
width = 55;
height = 14;
magnetPadding = 15;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

plasticCubeSide = 9.8;
plasticCubeBoxHeight = 10 + .5;
plasticCubeBoxWidth = plasticCubeSide;

wallThickness = 2;

fingerNotchSize = 11;


plasticCubeCount = 1;
plasticCubeBoxLength = plasticCubeSide * plasticCubeCount + .5;

meepleBoxHeight = 7.9 + .5;
meepleBoxWidth = 18 + .5;
meepleBoxLength = 15.8 + .5;

    difference(){
        cube([length, width, height]);  
        
        rotate([0,0,90])
            translate([wallThickness,-38, 0])
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