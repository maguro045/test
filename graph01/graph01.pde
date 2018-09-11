PShape s;
PVector[] pointsNum = new PVector[500];

int count = 0;
float x1,x2,x3,x4,y1,y2,y3,y4;
int size = 200;

void setup(){
  size(800,800, P2D);
  //size(displayWidth, displayHeight, P2D);
  background(0);
  blendMode(ADD);
  stroke(0);
  smooth(16);
  for(int i = 0; i < pointsNum.length;i++){
    pointsNum[i] = PVector.random2D();
  }
  s = createShape();
  s.beginShape();
  translate(width/2,height/2);
  for(int i = 0; i < pointsNum.length; i++){
    x1 = 0;
    y1 = 0;
    x2 = size*pointsNum[(int)random(pointsNum.length)].x;
    y2 = size*pointsNum[(int)random(pointsNum.length)].y;
    x3 = size*pointsNum[(int)random(pointsNum.length)].x;
    y3 = size*pointsNum[(int)random(pointsNum.length)].y;
    x4 = x1;
    y4 = y1;
    //stroke(x2+x3,y2+y3,255-x2+x3);
    stroke(255,5);
    noFill();
    //bezier(x1,y1,x2,y2,x3,y3,x4,y4);
    s.vertex(size*pointsNum[i].x,size*pointsNum[i].y,size*pointsNum[i].z);
  }
  s.endShape();
  shape(s);

}