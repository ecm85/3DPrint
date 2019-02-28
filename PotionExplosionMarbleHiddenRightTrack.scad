include<PotionExplosionMarbleHiddenTrackCore.scad>

difference(){

    Track(true, false);
    translate([wallThickness,0,height - backstopHeight])
        cube([length,width - wallThickness,backstopHeight]);

}

