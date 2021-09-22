//declare start and end coords for lightning
int startX = 150;
int startY = 0;
int endX = 0;
int endY = 0;

void setup()
{
  size(500,500);
  background(#183571);
}
void draw()
{
  //opacity rectangle
  //make lightning fade into the background
  fill(#183571,10);
  rect(0,0,500,500);
  //lightning draw
  while(endY < 500){
    endY = startY + (int)(Math.random()*15);
    endX = startX + (int)(Math.random()*20 - 10);
    strokeWeight(5);
    stroke((int)(Math.random()*255), 200,(int)(Math.random()*30 + 220));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  //clear skies
  if(frameCount%60 == 0){
    fill(#183571);
    rect(0,0,500,500);
  }
    cloudDraw();

}
void mousePressed()
{
  //reset lightning starting coords
  //click mouse gives lightning strike
  startY = 0;
  startX = (int)(Math.random()*100 + 130);
  endX = 0;
  endY = 0;
}

void cloudDraw(){
  noStroke();
  fill(#23417C);
  ellipse(10,20,100,300);
  ellipse(50,200,60,270);
  ellipse(40,450,200,150);
  fill(#594FA0);
  ellipse(0,200,100,300);
  ellipse(40,370,50,200);
  fill(#47458E);
  ellipse(230,50,370,280);
  ellipse(70,105,200,150);
  ellipse(400,75,250,140);
  ellipse(400,205,230,200);
  ellipse(450,305,150,260);
  ellipse(70,450,180,60);
  ellipse(200,470,200,160);
  ellipse(350,450,220,300);
  ellipse(450,470,300,150);
  fill(#7665AA);
  ellipse(400,30,180,70);
  ellipse(320,60,220,50);
  ellipse(130,120,180,100);
  ellipse(230,100,200,170);
  ellipse(330,250,130,250);
  ellipse(300,400,200,150);
  ellipse(350,340,200,100);
}
