[第五讲：创意编程元素｜静态与动态图像（续）]作业：创意图像






<img width="539" alt="搜狗截图20231017235025" src="https://github.com/Xu-Shiyu/2023-/assets/146098228/a9f41ded-4349-42a6-ae9f-82f9c3698ebc">









[PImage img;
float s;

void settings() {
  img=loadImage("selfie.jpg");
  size(img.width, img.height);
}

void setup() {
  //img=loadImage("selfie.jpg");
  background(255);
  //size(2316/2, 3088/2);
  image(img, 0, 0, img.width, img.height);
}

void draw() {
  background(255);
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      //      //fill(img.pixels[loc]);
      //      rectMode(CENTER);
      float bt=brightness(img.pixels[loc]);//（读取像素
      float d=dist(x,y,mouseX,mouseY);
      s=map(d,0,width,1,30);
      ellipseMode(CENTER);
      tile(bt, s, x, y);
    }
  }
}

void tile(float bt, float sSize, int ellipseX, int ellipseY) {//迭代图片明度
  int iter= int(map(bt, 0, 255, 10, 0));//迭代次数
  if (iter>0) {
    float interval=sSize/(iter*2);
    for (int i=0; i<iter; i++) {//同心圆 sSize=第一个圆与第二个圆的间距
      float ellipseSize=sSize-interval*i*2;
      ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);
    }
  }
}
Uploading xushiyu231012b.pde…]()











