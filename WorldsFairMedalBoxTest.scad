length = 50;
width = 33;
height = 8;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;

//
//		2s
//			23 tokens
//			19.05 diameter
//			extra box 13.7 x 9.05
//			height 23.45 + 21.39
//		4s
//			15 tokens
//			23.17 diameter
//			extra box 17.11 x 10.7
//			height 29.35, or 15.68 + 13.74


smallCircleDiameter = 19.05 + .5;
smallCircleOffset = 4;
//smallCircleHeight1 = 23.45 + .5;
//smallCircleHeight2 = 21.39 + .5;
smallCircleHeight1 = 5 + .5;
smallCircleHeight2 = 5 + .5;

smallExtraBoxLength=13.7 + .5;
smallExtraBoxWidth = 9.05 + 2 + .5;
smallBoxWidthOffset = 3;

mediumCircleDiameter = 23.17 + .5;
mediumCircleOffset = 4;
//mediumCircleHeight1 = 15.68 + .5;
//mediumCircleHeight2 = 13.74 + .5;
mediumCircleHeight1 = 5 + .5;
mediumCircleHeight2 = 5 + .5;
mediumExtraBoxLength=17.11 + .5;
mediumExtraBoxWidth = 10.7 + 3 + .5;
mediumBoxWidthOffset = 4;



spaceBetweenCircles = 3;

    

difference(){
    cube([length, width, height]);

    translate([spaceBetweenCircles + smallCircleDiameter/2, smallCircleDiameter/2 - smallCircleOffset, height - smallCircleHeight1])
        cylinder(smallCircleHeight1, d=smallCircleDiameter);


    translate([spaceBetweenCircles + smallCircleDiameter/2 - smallExtraBoxLength/2, (smallCircleDiameter - smallCircleOffset) - smallBoxWidthOffset, height - smallCircleHeight1])
        cube([smallExtraBoxLength, smallExtraBoxWidth, smallCircleHeight1]);
    
    
    translate([length - (mediumCircleDiameter/2 + spaceBetweenCircles), mediumCircleDiameter/2 - mediumCircleOffset, height - mediumCircleHeight1])
        cylinder(mediumCircleHeight1, d=mediumCircleDiameter);
    
    translate([length - (mediumExtraBoxLength + spaceBetweenCircles + mediumCircleDiameter/2 - mediumExtraBoxLength/2), (mediumCircleDiameter - mediumCircleOffset) - mediumBoxWidthOffset, height - mediumCircleHeight1])
        cube([mediumExtraBoxLength, mediumExtraBoxWidth, mediumCircleHeight1]);
    
    
    
        

}

