// Shape classes
class Circle {
  
  color c;
  float xpos;
  float ypos;
  
  Circle() {
    c = color(153,10,90);
    xpos = width/2;
    ypos= height/2;
  }
  
  void display() {
    stroke(0,0,0);
    fill(c);
    ellipse(xpos,ypos,100,100);
  }
  
}

// Variable declarations
Circle circle1;

void setup() {
  // Set up canvas
  size(1000,1000);
  background(255,255,255);
  
  // Initialize shapes
  circle1 = new Circle();
  
}

void draw() {

  circle1.display();

}