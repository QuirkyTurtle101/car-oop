Car audi = new Car(255);
Car volvo = new Car(120);

void setup(){
  audi.drawCar();
  volvo.drawCar();
}

void draw(){
  
}

class Car{
  
  //variables
  int colour;
  
  //constructor
  Car(int tempColour){
    colour = tempColour;
  }
  
  //functionality
  void drawCar(){
    println("debug " + colour);
  }
}
