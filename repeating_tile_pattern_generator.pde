/***********************
*** Global variables ***
***********************/

int artboardWidth = 200;
int artboardHeight = 200;
int count;
int i;
float startPosX;
float startPosY;
float[] startPositions;
Circle[] circles;

/***********************
******* Classes ********
***********************/

class Circle {
  
  color c;
  float xpos;
  float ypos;
  
  Circle(float xposTemp, float yposTemp) {
    c = color(153,10,90);
    xpos = xposTemp;
    ypos = yposTemp;
  }
  
  void display() {
    noStroke();
    fill(c);
    ellipseMode(CORNER);
    ellipse(xpos,ypos,100,100);
  }
  
}

/***********************
****** Functions *******
***********************/

void setupArtboard(int boardWidth, int boardHeight) {
  int xPos = (width/2) - (boardWidth/2);
  int yPos = (height/2) - (boardHeight/2);
  fill(255);
  rect(xPos,yPos,boardWidth,boardHeight);
}

float[] calcStartPos(int documentWidth, int documentHeight, int artboardWidth, int artboardHeight) {

  float xPos = ( (documentWidth / 2) % artboardWidth ) - ( artboardWidth/2 );
  float yPos = ( (documentHeight / 2) % artboardHeight ) - ( artboardHeight/2 );

  float[] startPos = new float[2];
  startPos[0] = xPos;
  startPos[1] = yPos;

  return startPos;

}

// Setup
void setup() {
  
  // Set up canvas
  size(700,700);
  background(155);
  noStroke();
  startPositions = calcStartPos(width,height,artboardWidth,artboardHeight);
  startPosX = startPositions[0];
  startPosY = startPositions[1];

  // Circles array
  int wideCount = width/artboardWidth + 1;
  int highCount = height/artboardHeight + 1;
  count = wideCount * highCount;
  circles = new Circle[count];
}

// Draw to the canvas 
void draw() {
  
  // Draw the artboard
  setupArtboard(artboardWidth,artboardHeight);

  float elePosX = startPosX;
  int eleIndex = 0;

  // Nested while loops add Circle objects to array with proper X and Y coords
  while (elePosX < width) {

  float elePosY = startPosY;


    while (elePosY < height) {

      circles[eleIndex++] = new Circle(elePosX,elePosY);

      elePosY += artboardHeight;

    }

    elePosX += artboardWidth;

  }

  // For each Circle in the array, display it on the page
  for (Circle circ : circles) {
    circ.display();
  }

  //print(startPositions[1]);
  while (i < 1) {
    print("The X start position is :" + startPosX + "\n");
    print("The Y start position is :" + startPosX);
    i++;    
  }

}