float[]d,eX,eY;//声明新变量 array数组
float connectedDist=50;
int num=1000;

void setup(){
 size(800,800);
 background(0);
 d=new float[num];//初始化!! d=0.0 []定数量
 eX=new float[num];
 eY=new float[num];
 initiateData();
}

void initiateData(){
 for(int idx=0;idx<d.length;idx++){
  d[idx]=random(10,50);//赋予单独元素一个数据
  eX[idx]=random(0,width);
  eY[idx]=random(0,height);
 }
}

void draw(){
 background(0);
 for(int idx=0;idx<d.length;idx++){
  strokeWeight(map(d[idx],10,50,4,0.1));//半径越大边框越细 直径映射边框
  stroke(200,0,200);
  // float r=random(10,50);
  //ellipse(eX[idx],eY[idx],d[idx],d[idx]);//读取存储数据
 }
 
 for(int m=0;m<d.length;m++){//for嵌套 对比两个圆距离
  for(int n=m+1;n<d.length;n++){//减少工作量
    float dd=dist(eX[m],eY[m],eX[n],eY[n]);//圆心距小于一定距离时连线
    if(dd<=connectedDist){
      stroke(153);
      strokeWeight(map(dd,0,50,3,0.1));
      line(eX[m],eY[m],eX[n],eY[n]);
   }
  }
 }
}

void keyPressed(){//control+t自动对齐
 if(key=='r'){
 initiateData();
 }
}
