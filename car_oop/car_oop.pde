color audiColor = color(220, 220, 220);
color volvoColor = color(255, 0, 0);

Car audi = new Car(audiColor, 100, 200);
Car volvo = new Car(volvoColor, 100, 400);

void setup(){
  size(800, 600);
}

void draw(){
  clear();
  background(255, 255, 255);
  audi.drawCar();
  volvo.drawCar();
  
  audi.moveCar(1);
  volvo.moveCar(0.5);
}

//CLASSES BELOW HERE

class Car{
  
  //variables
  float xPos;
  float yPos;
  color colour;
  Wheel wheelFront = new Wheel(30, 20);
  Wheel wheelBack = new Wheel(-30, 20);
  
  //constructor
  Car(color tempColour, float tempXPos, float tempYPos){
    colour = tempColour;
    xPos = tempXPos;
    yPos = tempYPos;
  }
  
  //functionality
  void drawCar(){
    println("debug " + colour);
    rectMode(CENTER);
    fill(colour);
    rect(xPos, yPos, 100, 40);
    wheelFront.drawWheel(xPos, yPos);
    wheelBack.drawWheel(xPos, yPos);
  }
  
  void moveCar(float speed){
    xPos += speed;
  }
}

class Wheel{
  
  //variables
  float xPos;
  float yPos;
  
  //constructor
  Wheel(float tempXPos, float tempYPos){
    xPos = tempXPos;
    yPos = tempYPos;
  }
  
  //functionality
  void drawWheel(float baseX, float baseY){
    fill(0, 0, 0);
    circle(baseX + xPos, baseY + yPos, 25);
  }
}
