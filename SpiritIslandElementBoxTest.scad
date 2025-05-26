length = 167;
height = 35 - 22;
wallThickness = 2;
floorThickness = 3;
widthDividers = 1;
lengthDividers = 3;
widthDividerToSkip = -1;
rimThickness = 2;
rimPadding = 1.5;
width = 50;
holeLength = (length - (wallThickness * 5)) / 4;
holeWidth = (width - (wallThickness * 3)) / 2;

difference() {
    import("c://code//3DPrint//SpiritIslandElementBox.stl");
    translate([holeLength + wallThickness * 2, 0, 0])
        cube([length, width, height]);
    translate([0, holeWidth + wallThickness * 2, 0])
        cube([length, width, height]);
}

