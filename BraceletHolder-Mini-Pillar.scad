length = 115;
diameter = 40;
floorThickness = 3;
width = diameter;
pillarHoleSide = 20;
smallPillar = pillarHoleSide - .5;
smallPillarHeight = diameter;
largePillar = pillarHoleSide + 5;
largePillarHeight = 50;

union() {
    cube([length, width, floorThickness]);
    translate([length/2 - largePillar/2, width/2 - largePillar/2, floorThickness])
        cube([largePillar, largePillar, largePillarHeight]);
    translate([length/2 - smallPillar/2, width/2 - smallPillar/2, floorThickness + largePillarHeight])
        cube([smallPillar, smallPillar, smallPillarHeight]);
}
