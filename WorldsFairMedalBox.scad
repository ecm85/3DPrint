length = 70;
width = 70;
height = 27;

//Based on magnet size:
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
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


smallCircleDiameter = 19.05 + .8 + .5;
smallCircleOffset = 4;
smallCircleHeight1 = 23.45 + .5;
smallCircleHeight2 = 21.39 + .5;
smallExtraBoxLength=13.7 + .5;
smallExtraBoxWidth = 9.05 + 2 + .5;
smallBoxWidthOffset = 3;

mediumCircleDiameter = 23.17 + .5;
mediumCircleOffset = 4;
mediumCircleHeight1 = 15.68 + .5;
mediumCircleHeight2 = 13.74 + .5;
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
    
    
    translate([spaceBetweenCircles + mediumCircleDiameter/2, width - (mediumCircleDiameter/2 - mediumCircleOffset), height - mediumCircleHeight2])
        cylinder(mediumCircleHeight2, d=mediumCircleDiameter);
translate([spaceBetweenCircles + mediumCircleDiameter/2 - mediumExtraBoxLength/2, width - (mediumExtraBoxWidth + mediumCircleDiameter - mediumCircleOffset) + mediumBoxWidthOffset, height - mediumCircleHeight2])
        cube([mediumExtraBoxLength, mediumExtraBoxWidth, mediumCircleHeight2]);


    
    translate([length - (smallCircleDiameter/2 + spaceBetweenCircles), width - (smallCircleDiameter/2 - smallCircleOffset), height - smallCircleHeight2])
        cylinder(smallCircleHeight2, d=smallCircleDiameter);

    
translate([length - (smallExtraBoxLength + spaceBetweenCircles + smallCircleDiameter/2 - smallExtraBoxLength/2), width - (smallExtraBoxWidth + smallCircleDiameter - smallCircleOffset) + smallBoxWidthOffset, height - smallCircleHeight2])
        cube([smallExtraBoxLength, smallExtraBoxWidth, smallCircleHeight2]);



        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

