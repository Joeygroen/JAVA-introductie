import controlP5.*;
ControlP5 cp;

int player=0;
int computer=0;
int steen=1;
int papier=2;
int schaar=3;
int reset;
int win=0;
int lose=0;
Button Knop1;
Button Knop2;
Button Knop3;
Button Reset;
Button Restart;

void setup(){
  size(600,600);
  background(255,150,110);
  textSize(64);
  textAlign(CENTER, CENTER);
  cp = new ControlP5(this);
  Knop1 = cp.addButton("Knop1").setPosition(50,400).setSize(100,100).setCaptionLabel("Steen");
  Knop2 = cp.addButton("Knop2").setPosition(250,400).setSize(100,100).setCaptionLabel("Papier");
  Knop3 = cp.addButton("Knop3").setPosition(450,400).setSize(100,100).setCaptionLabel("Schaar");
  Reset = cp.addButton("Reset").setPosition(280,530).setSize(40,40).setCaptionLabel("Reset");
  Restart = cp.addButton("Restart").setPosition(540,10).setSize(40,40).setCaptionLabel("Restart");
}

void draw(){
  textSize(30);
  text("Speler", 50,120);
  fill(0,150,240);
  rect(10,150,50,50);
  fill(0,0,0);
  textSize(64);
  text(win,35,165);
  textSize(30);
  text("Computer",530,120);
  fill(0,150,240);
  rect(540,150,50,50);
  fill(0,0,0);
  textSize(64);
  text(lose,565,165);
  
}

//knop steen
void Knop1(){
  player=steen;
  computer=(int) random(1,4);
  checkWinner();
}

//knop papier
void Knop2(){
  player=papier;
  computer=(int) random(1,4);
  checkWinner();
}

//knop schaar
void Knop3(){
  player=schaar;
  computer=(int) random(1,4);
  checkWinner();
}

//reset
void Reset(){
  background(255,150,110);
  player=0;
  computer=0;
  Knop1.show();
  Knop2.show();
  Knop3.show();
}

void Restart(){
 background(255,150,110);
  player=0;
  computer=0;
  win=0;
  lose=0;
  Knop1.show();
  Knop2.show();
  Knop3.show();
  Reset.show();
}
void checkWinner(){
  if (player==1 && computer==3){
    fill(0,255,100);
    text("Gewonnen", width / 2, height /2);
    fill(255,0,100);
    text("Schaar", width/2, height/6);
    win++;
  }
  if (player==2 && computer==1){
    fill(0,255,100);
    text("Gewonnen", width / 2, height /3);
    fill(255,0,100);
    text("Steen", width/2, height/2);
    win++;
  }
  if (player==3 && computer==2){
    fill(0,255,100);
    text("Gewonnen", width / 2, height /6);
    fill(255,0,100);
    text("Papier", width/2, height/3);
    win++;
  }
  if (player==3 && computer==1){
    fill(0,255,100);
    text("Steen", width / 2, height /2);
    fill(255,0,100);
    text("Verloren", width/2, height/6);
    lose++;
  }
  if (player==2 && computer==3){
    fill(0,255,100);
    text("Schaar", width / 2, height /6);
    fill(255,0,100);
    text("Verloren", width/2, height/3);
    lose++;
  }
  if (player==1 && computer==2){
    fill(0,255,100);
    text("Papier", width / 2, height /3);
    fill(255,0,100);
    text("Verloren", width/2, height/2);
    lose++;
  }
  if (player==computer){
    fill(0,50,255);
    text("Gelijkspel", width / 2, height /3);
  }
  if (win==2){
   fill(255,150,110);
   rect(0,380,600,300);
   fill(0,255,100);
   text("Speler wint!!!",300,450);
   Knop1.hide();
   Knop2.hide();
   Knop3.hide();
   Reset.hide();
  }
  if (lose==2){
    fill(255,150,110);
    rect(0,380,600,300);
    fill(255,0,100);
    text("Computer wint!",300,450);
    Knop1.hide();
    Knop2.hide();
    Knop3.hide();
    Reset.hide();
  }
}
