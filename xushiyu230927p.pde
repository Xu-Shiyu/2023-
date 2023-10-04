void setup(){
size(800,800);
 background(255);
 frameRate(25);
 noStroke();
}
void draw(){
  fill(random(0,255),random(0,255),random(0,255));
  strokeWeight(5);
  //stroke(random(0,255),random(0,255),random(0,255));
  circle(random(0,width),random(0,height),100);
//for(int i=0;i<50;i++){
 // noStroke();
  //fill(255,255-0.5*i*frameCount)
}
