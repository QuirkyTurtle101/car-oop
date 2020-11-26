color audiColor = color(220, 220, 220);
color volvoColor = color(255, 0, 0);

Car audi = new Car(audiColor, 100, 200);
Car volvo = new Car(volvoColor, 100, 400);

void setup(){
  size(800, 600);
}

void draw(){
  clear();
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
    rect(xPos, yPos, 100, 60);
  }
  
  void moveCar(float speed){
    xPos += speed;
  }
}
