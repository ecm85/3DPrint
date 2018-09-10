rightWidth = 35;
totalWidth = 75;
leftWidth = totalWidth - rightWidth;
gapLength = 44.55;
difference()
{
    import("C:\\Users\\ezra.mcnichols\\Downloads\\Floating_Earring_Holder\\files\\floating_earring_holder_w_slots.STL");
    translate([rightWidth, 0, 0])
        cube([200, 25, 15]);
}

translate([-gapLength, 0, 0])
    difference()
    {
        import("C:\\Users\\ezra.mcnichols\\Downloads\\Floating_Earring_Holder\\files\\floating_earring_holder_w_slots.STL");
        translate([0, 0, 0])
            cube([gapLength + rightWidth, 25, 15]);
    }
