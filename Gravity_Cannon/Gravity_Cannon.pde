float accelx = 7; //what acceleration x starts with
float accely = 3;  //what acceleration y starts with

float speedx = 10;  //speed that x starts with
float speedy = -15; //speed that y starts with

float tex = 100;  //position x
float tey = 200; //position y

int d = 0;


  float [] bally = new float [10];{              //compressed array of Ball y  position
  for(int i =0; i<bally.length;i++){
    bally[i] = -10;
  }
  }
 float [] ball = new float [10];{                //array for Ball x position
  for(int i =0; i<ball.length;i++){
    ball[i] = -10;
  }
 }
 
  float [] spdx = new float [10];{               // Array for Ball speed in x way
  for(int i =0; i<spdx.length;i++){
    spdx[i] = 0;
  }
 }
 float [] spdy = new float [10];{                //Array for Ball speed in y way
  for(int i =0; i<spdy.length;i++){
    spdy[i] = 0;
  }
 }



void setup() {
  size (600, 300);
}

void draw() {
  background (#5B7BC9); //in draw so circles do not repeat
  fill(#E0C29A);
  rect(-1,200,370,100); //ground repeats
  rect(500,200,140,100); //2nd ground
  drawEllipse(); //brings in void drawEllipse()
  fill(0);
  ellipse (109,220,17,17); //wheel
  fill(#ADACAB);
  ellipse (109,220,9,9); // wheel decor
  fill(0);

  ellipse (tex,tey,15,15);
    
  
  
  for ( int i = 0; i<10; i++){                       //a for loop that loops the arrays and places the arrays into the ellipse command
    ellipse (ball[i],bally[i],15,15);
     ball[i] = (spdx[i] + ball[i]);
     bally[i] = (spdy[i] + bally[i]);
     spdx[i] = spdx[i] * 1.001;
     spdy[i]++;
  }
  
  
  }

void mouseClicked(){

  
  ball[d]=100;            //if mouse clicked, ball goes to (100,200)
  bally[d] = 200;
  
  spdx[d] = 10;           //if mouse clicked, ball goes a speed of 10 x ways and -15 y ways
  spdy[d] = -15;
  
  d++;
  
  if (d>=10)              //allows for more than only 10 balls
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
