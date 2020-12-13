color audiColor = color(220, 220, 220);
color volvoColor = color(255, 0, 0);
color toyotaColor = color(0, 255, 0);
color volkswagenColor = color(0, 0, 255);

Car audi = new Car(audiColor, 100, 200);
Car volvo = new Car(volvoColor, 100, 400);
Car toyota = new Car(toyotaColor, 150, 300);
Car volkswagen = new Car(volkswagenColor, 50, 500);

void setup(){
  size(800, 600);
}

void draw(){
  clear();
  background(255, 255, 255);
  audi.drawCar();
  volvo.drawCar();
  toyota.drawCar();
  volkswagen.drawCar();
  
  audi.moveCar(1, -0.2);
  volvo.moveCar(0.5, 0);
  toyota.moveCar(1.2, 0.5);
  volkswagen.moveCar(0.75, 0);
}

//CLASSES BELOW HERE

class Car{
  
  //variables
  float xPos;
  float yPos;
  color colour;
  Wheel wheelFront = new Wheel(30, 20);
  Wheel wheelBack = new Wheel(-30, 20);
  Headlight headlight = new Headlight(50, -15);
  
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
    headlight.drawHeadlight(xPos, yPos);
  }
  
  void moveCar(float xSpeed, float ySpeed){
    xPos += xSpeed;
    yPos += ySpeed;
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

class Headlight{
  
  //variables
  float xPos;
  float yPos;
  
  //constructor
  Headlight(float tempXPos, float tempYPos){
    xPos = tempXPos;
    yPos = tempYPos;
  }
  
  //functionality
  void drawHeadlight(float baseX, float baseY){
    fill(0, 0, 0);
    rectMode(CENTER);
    rect(baseX + xPos, baseY + yPos, 5, 5);
  }
}
