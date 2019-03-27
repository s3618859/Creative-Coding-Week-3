int dotx=1;
int timelapsed;
PImage pic;
PGraphics topLayer;
boolean showImage=true;
void setup(){
  smooth();
  background(255);
  size(500,500);
  noStroke();
  fill(0);
  topLayer=createGraphics (500,500);
  pic=loadImage("Picture.jpg");
}

void draw(){
  if (showImage == false) {background(255);}
  else {image (pic,0,0);}
  image(topLayer,0,0);
}

void mousePressed (){
  topLayer.beginDraw();
  topLayer.smooth();
  topLayer.fill(0);
  topLayer.ellipse (mouseX, mouseY,6,6);
  topLayer.textSize(10);
  topLayer.text(dotx,mouseX+10,mouseY+10);
  dotx++;
  topLayer.endDraw();
}

void keyPressed () {
  if (key=='a'){
    showImage=!showImage;
  }
  else{
  save ("Picture.jpg");
  }
}
