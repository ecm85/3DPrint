originalLength = 300;
originalHeight = 20;
originalWidth = 25;

leftLength = 51.55;
rightLength = 213.55;
newLength = leftLength + rightLength;
gapCutout = 35.45;

union() {
    difference() {
        import("C:/code/3DPrint/FloatingEarringHolder Mark IV.stl");
        translate([leftLength, 0, 0])
            cube([originalLength - leftLength, originalWidth, originalHeight]);
    }
    translate([-gapCutout, 0, 0])
        difference() {
            import("C:/code/3DPrint/FloatingEarringHolder Mark IV.stl");
            translate([0, 0, 0])
                cube([originalLength - rightLength, originalWidth, originalHeight]);
        }

}