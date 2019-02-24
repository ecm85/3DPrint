include<ColonistsWarehouseExtensionLib.scad>
difference() {
    testBoxHeight = warehouseExtensionPileHeight(10) + 3;
    testBoxLength = 115;
    testBoxWidth = 115;
    wallThickness = 3;
    
    cube([testBoxLength, testBoxWidth, testBoxHeight]);
    LeftWarehouseExtensionPile(wallThickness, testBoxHeight, 10);
//    translate([100 - (15.05 + .8), 0, 0])
    translate([testBoxLength, 0, 0])
        RightWarehouseExtensionPile(wallThickness, testBoxHeight, 6);
    translate([singleWarehouseExtensionPileLength + wallThickness, 0, 0])
        BottomWarehouseExtensionPile(wallThickness, testBoxHeight, 1);
    translate([0, testBoxWidth, 0])
        TopWarehouseExtensionPile(wallThickness, testBoxHeight, 10);
}