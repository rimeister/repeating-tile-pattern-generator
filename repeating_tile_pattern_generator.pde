/***********************
*** Global variables ***
***********************/

int docWidth = 700;
int docHeight = 700;
int artboardWidth = 200;
int artboardHeight = 200;
int unit = 110;
int count;
int i;

float[] startPositions;
Circle[] circles;

/***********************
******* Classes ********
***********************/

class Circle {
  
  color c;
  int xpos;
  int ypos;
  
  Circle(int xposTemp, int yposTemp) {
    c = color(153,10,90);
    xpos = xposTemp;
    ypos = yposTemp;
  }
  
  void display() {
    noStroke();
    fill(c);
    ellipse(xpos,ypos,100,100);
  }
  
}

/***********************
****** Functions *******
***********************/

void setupArtboard(int boardWidth, int boardHeight) {
  int xPos = (docWidth/2) - (boardWidth/2);
  int yPos = (docHeight/2) - (boardHeight/2);
  rect(xPos,yPos,boardWidth,boardHeight);
}

float[] calcStartPos(int documentWidth, int documentHeight, int artboardWidth, int artboardHeight) {
  float xPos = 100;//( (documentWidth / 2) % artboardWidth ) - ( artboardWidth/2 );
  float yPos = 100;//( (documentHeight / 2) % artboardHeight ) - ( artboardHeight/2 );

 // print("The X start posiion is :" + xPos);
 // print("The Y start posiion is :" + yPos);

  float[] startPos = new float[2];
  startPos[0] = xPos;
  startPos[1] = yPos;

  return startPos;

}

// Setup
void setup() {
  
  // Set up canvas
  size(700,700);
  background(255,255,255);
  startPositions = calcStartPos(docWidth,docHeight,artboardWidth,artboardHeight);
}

// Draw to the canvas 
void draw() {

  // White background
  background(255);
  
  // Draw the artboard
  setupArtboard(artboardWidth,artboardHeight);

  //print(startPositions[1]);
  while (i < 1) {
    print("The X start position is :" + startPositions[0] + "\n");
    print("The Y start position is :" + startPositions[1]);
    i++;    
  }

}