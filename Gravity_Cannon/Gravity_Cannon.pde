float accelx = 7; //what acceleration x starts with
float accely = 3;  //what acceleration y starts with

float speedx = 10;  //speed that x starts with
float speedy = -15; //speed that y starts with

float tex = 100;  //position x
float tey = 200; //position y

int d = 0;


  float [] bally = new float [10];{
  for(int i =0; i<bally.length;i++){
    bally[i] = -10;
  }
  }
 float [] ball = new float [10];{
  for(int i =0; i<ball.length;i++){
    ball[i] = -10;
  }
 }


void setup() {
  size (600, 300);
}

void draw() {
  background (#5B7BC9); //in draw so circles do not repeat
  fill(#E0C29A);
  rect(-1,200,370,100); //ground repeats
  rect(500,200,600,100);
  drawEllipse(); //brings in void drawEllipse()
  fill(0);
  ellipse (109,220,17,17); //wheel
  
  fill(0);

  ellipse (tex,tey,15,15);
    
  speedx = speedx * 1.001;
  speedy++;
  
  for ( int i = 0; i<10; i++){
    ellipse (ball[i],bally[i],15,15);
     ball[i] = (speedx + ball[i]);
     bally[i] = (speedy + bally[i]);
  }
  
  
  }

void mouseClicked(){

  
  ball[d]=100;
  bally[d] = 200;
  
  speedx = 10;
  speedy = -15;
  
  d++;
  
  if (d>=10)
  d=0;
  
}
  
  
  

























// NO TOUCHING
void drawEllipse() {
  fill(0);
  pushMatrix();
  translate(100, 200);
  rotate(-PI/4.0);
  ellipse(0, 0, 70, 30);
  popMatrix();
}
