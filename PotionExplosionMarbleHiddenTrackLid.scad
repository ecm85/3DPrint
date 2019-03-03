include<PotionExplosionMarbleHiddenTrackCore.scad>
lipHeight = 10;
openingLength = diameter + 5;
    union() {
        cube([(length - openingLength) + (lidHeight), width - wallThickness, lidHeight]);
        cube([lidHeight, width - wallThickness, lipHeight]);
    }
 