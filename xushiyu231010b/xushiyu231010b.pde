int numFrames = 2;
int frame=0;
//PImage img;
PImage[] images = new PImage[numFrames];

void setup(){
 size(800,800);
 background(255);
 //loadPixels();
 //for (int x=0;x<width;x++){
  //for (int y=0;y<height;y++){
  //int loc =x+y*width;
  //float bt=brightness(images[frame].pixels[loc]);
 // }
 //}
 //frameRate(8);
 images[0] = loadImage("01.jpg");
 image(images[frame],0,0,width,height);
 for(int i=0;i<800;i+=16){
   //noFill();
   fill(0);
  rect(i,0,14,height);
 }
 images[1] = loadImage("02.jpg");
  image(images[frame],0,0,width,height);
 for(int i=0;i<800;i+=16){
   fill(0);
  rect(i+2,0,14,height);
   }
 }
 
 //images[2] = loadImage("03.jpg");
 //for(int i=0;i<800;i+=16){
 //  fill(0);
 // rect(i+4,0,14,height);
 //}
 //images[3] = loadImage("04.jpg");
 //for(int i=0;i<800;i+=16){
 //  fill(0);
 // rect(i+6,0,14,height);
 //}
 //images[4] = loadImage("05.jpg");
 //for(int i=0;i<800;i+=16){
 //  fill(0);
 // rect(i+8,0,14,height);
 //}
 //images[5] = loadImage("06.jpg");
 //for(int i=0;i<800;i+=16){
 //  fill(0);
 // rect(i+10,0,14,height);
 //}
 //images[6] = loadImage("07.jpg");
 //for(int i=0;i<800;i+=16){
 //  fill(0);
 // rect(i+12,0,14,height);
 //}
 //images[7] = loadImage("08.jpg");
 //for(int i=0;i<800;i+=16){
 //  fill(0);
 // rect(i+14,0,14,height);
 //}


void draw(){
 //background(255);
 //frame++;
 //if (frame == numFrames) {
 //frame = 0;
 }
 //for(int i=0;i<8;i++){
 //   s = map(mouseX, 0, width, 1, 100);
 //  for (int y = 0; y < imgages[i].height; y+=s ) {
 //   for (int x = 0; x < imgages[i].width; x+=s) {
 //     int loc = x + (y * imgages[i].width);
 //     float bt = brightness(img.pixels[loc]);
    
// }
//}
