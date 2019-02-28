include<PotionExplosionMarbleHiddenTrackCore.scad>

difference(){

    Track(true, true);
    translate([wallThickness,0,height - backstopHeight])
        cube([length,width,backstopHeight]);

}


