include<ColonistsWarehouseExtensionLib.scad>
wallThickness = 2;
floorHeight = 3;
tileCount = 4;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
height = warehouseExtensionPileHeight(tileCount) + floorHeight;
length = singleWarehouseExtensionPileWidth + wallThickness * 2;
echo(length);
width = singleWarehouseExtensionPileWidth + singleWarehouseExtensionPileLength + wallThickness * 3;
echo(width);

difference() {
    
    cube([length, width, height]);
    translate([0, 0, 0])
        LeftWarehouseExtensionPile(wallThickness, height, tileCount);
    translate([length, 0, 0])
        RightWarehouseExtensionPile(wallThickness, height, tileCount);
    
    translate([0, width, 0])
        TopWarehouseExtensionPile(wallThickness, height, tileCount);
    
   
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}