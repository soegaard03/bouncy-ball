float x = 375, y = 375;
float dx = 6, dy = 5;
float rectX = 375, rectY = 375, strl = 375;


void setup(){
  size(750,750);
}

void draw(){
 clear();
 background(0);

  x += dx;
  y += dy;
  
   //kassen bliver mindre
  strl = strl/1.003;
  
  
  //flytte den på x-aksen
  if(x > strl/2+ rectX-10)
   dx = -6;
  if(x < rectX-strl/2+10){
dx =6;
  }
  
  //flytte den på y-aksen
  if(y > rectY +strl/2-10)
  dy = -1;
  if (y < rectY-strl/2+10 ){
  dy = 1;
  }
 
    //figure
    fill(250,250,250);
  rectMode(CENTER);
  rect(rectX,rectY,strl,strl);
  
  fill(230,0,70);
  ellipse(x,y,20,20);
 
 
}
