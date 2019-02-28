include<PotionExplosionMarbleHiddenTrackCore.scad>

difference(){

    Track(false, true);
    translate([wallThickness,wallThickness,height - backstopHeight])
        cube([length,width,backstopHeight]);

}

