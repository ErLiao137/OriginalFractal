float baseangle = (float)((int)(Math.random()*70));
float baselength =(float)((int)(Math.random()*10)+1);
public void setup() {
size(500,500);
}

public void draw() {
 strokeWeight(2);
tree(250,500,-90,8);
}

public void tree(float x1, float y1, float angle, int n){
 if(n > 0){
  float x2=x1+cos(radians(angle))*n*baselength;
  float y2=y1+sin(radians(angle))*n*baselength;
  line(x1,y1,x2,y2);
  if((int)(Math.random()*10) < 8){
  tree(x2,y2,angle-baseangle,n-1);
  tree(x2,y2,angle+baseangle,n-1);
  noLoop();
  }
}
}
