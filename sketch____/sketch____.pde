PImage img;
float s;

void settings() {
  img=loadImage("1.jpg");
  size(img.width, img.height);
}

int i, t=0; 
float[] x=new float[800];

void setup() {
  background(255);
  image(img, 0, 0, img.width, img.height);
  stroke(0, 32);
  for (i=0; i<800; i++) x[i]=i;
}

void draw() {
  
  for (int i = 0; i< 50; i ++) {
    int xx = (int)random(width);
    int yy = (int)random(height);
    color fc = img.get(xx, yy);
    fill(fc);
    noStroke();
     for (i=0; i<800; i++) rect(xx,yy,x[i]+=noise(i*.05, t*.01)-.12, t);
  t++;
  }
 
}
