// Shape classes
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

// Variable declarations
int unit = 110;
int count;
Circle[] circles;

void setup() {
  
  // Set up canvas
  size(1000,1000);
  background(255,255,255);
  
  int wideCount = width/unit;
  int highCount = height/unit;
  count = wideCount * highCount;
  circles = new Circle[count];

  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      circles[index++] = new Circle(x*unit,y*unit);
    }
  }
  
}

void draw() {

  background(255);
  for (Circle circ : circles) {
    circ.display();
  }

}