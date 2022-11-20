volumeInMl = 76.891;
totalVolumeInCubicMillimeters = volumeInMl * 1000;
volumeWidth = 40;
volumeLength = 40;
volumeHeight = (totalVolumeInCubicMillimeters / (volumeWidth * volumeLength)) + .5;

topSectionHeight = 10;
topSectionOffset = 2;
topSectionWidth = volumeWidth + topSectionOffset * 2;
topSectionLength = volumeLength + topSectionOffset * 2;
spoutNotchWidth = 10;


wallThickness = 3;
width = volumeWidth + wallThickness * 2;
length = volumeLength + wallThickness * 2;
height = volumeHeight + wallThickness + topSectionHeight;

union() {
    difference() {
        minkowski()
        {
          cube([width, length, height - 1]);
          cylinder(r=2,h=1);
        }
        
        translate([wallThickness, wallThickness, wallThickness])
            cube([volumeWidth, volumeLength, volumeHeight + topSectionHeight]);
        translate([wallThickness - topSectionOffset, wallThickness - topSectionOffset, wallThickness + volumeHeight])
            cube([topSectionWidth, topSectionLength, topSectionHeight]);
        translate([width/2 - spoutNotchWidth/2, -10, wallThickness + volumeHeight])
            cube([spoutNotchWidth, 20, topSectionHeight]);
    }
    translate([wallThickness - topSectionOffset, wallThickness - topSectionOffset, volumeHeight + topSectionHeight])
            cube([topSectionWidth, topSectionLength/3, wallThickness]);
}