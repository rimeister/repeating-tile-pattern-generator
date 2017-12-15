/***********************
*** Global variables ***
***********************/

int docWidth = 700;
int docHeight = 700;
int artboardWidth = 200;
int artboardHeight = 200;
int unit = 110;
int count;
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

// Setup
void setup() {
  
  // Set up canvas
  size(700,700);
  background(255,255,255);
    
}

// Draw to the canvas 
void draw() {

  // White background
  background(255);
  
  // Draw the artboard
  setupArtboard(artboardWidth,artboardHeight);

}