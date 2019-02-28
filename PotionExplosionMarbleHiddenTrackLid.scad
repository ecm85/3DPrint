include<PotionExplosionMarbleHiddenTrackCore.scad>
lipHeight = 10;
openingLength = diameter + 5;
    union() {
        cube([(length - openingLength) + (lidHeight - .5), width - wallThickness, lidHeight - .5]);
        cube([lidHeight - .5, width - wallThickness, lipHeight]);
    }
 