function whiteSpaceBetweenBoxes(side, numberOfBoxes, boxLength) =
    (side - (numberOfBoxes * boxLength)) / (numberOfBoxes + 1);
    
function getOffsetForWhiteSpace(whiteSpaceBetweenBoxes, index, boxLength, singleBoxOffset) =
    ((index + 1) * whiteSpaceBetweenBoxes + boxLength * (index)) + singleBoxOffset;