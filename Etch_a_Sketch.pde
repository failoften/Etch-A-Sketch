float valuex;
float pvaluex;
float valuey;
float pvaluey;
//float valuey;


void setup()
{
  size(1024,1024);
  background(255);
}

void draw()
{
  //fading background
  fill(225,225,225, 15);
  strokeWeight(0);
  rect(0,0,width,height);  
  
  //draw line
  strokeWeight(2);
  line(pvaluex, pvaluey, valuex, valuey); 

} 


void mouseDragged() {
  // get message till line break (ASCII > 13)
  pvaluex = valuex;
  pvaluey = valuey;
  
  if(mouseY < height){
    valuey = mouseY;
    println(valuey);
  }
  
  if(mouseX < width){
    valuex = mouseX;
    println(valuex);
  }
}

void mousePressed() {
 valuex = mouseX;
 valuey = mouseY;
 pvaluex = mouseX;
 pvaluey = mouseY;
}


void mouseReleased(){
 valuex = -1;
 valuey = -1;
 pvaluex = -1;
 pvaluey = -1;
}