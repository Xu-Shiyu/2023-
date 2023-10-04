float[] x, y, s;
//float s;

void setup() {
  size(800, 600);
  background(255);
  frameRate(1);
  x=new float[5];
  y=new float[5];
  s=new float[5];
}

void draw()
{
  background(255);
  for (int i=0; i<5; i++)
  {
    x[i]=random(0, 600);
    y[i]=random(0, 800);
    s[i]=random(0, i*10);
    strokeWeight(s[i]);
    line(0, x[i], y[i], x[i]);
    line(y[i], 0, y[i], height);
    strokeWeight(s[i]);
    rect( y[i], x[i], random(0, 200), random(0, 200));
    fill(random(0, 255), random(0, 255), random(0, 255));
  }
}
