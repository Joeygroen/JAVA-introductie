import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(800,800);
  background(255,255,255);
  cp = new ControlP5(this);
  
  knop1= cp.addButton("knop1");
  
  knop1.setCaptionLabel("Klik");
  
  tekstveld1 = cp
  .addTextfield("textInput1")
  .setPosition(100,100)
  .setText("Joey Groentetuin")
  .setCaptionLabel("type iets")
  .setColorLabel(color(255,0,0));
}

void draw(){
  
}

void knop1(){
  println("Hoi mijn naam is: " + tekstveld1.getText());
}
