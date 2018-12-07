//add thank you code here
PImage ttv;
PImage chobbs;
PImage baseball;
PImage tball;
PImage footbal;
float  baseballX=10;
float  speed=45;

void setup(){
  
  size(1000,800);
 
  ttv=loadImage("ttv.png");
  chobbs=loadImage("scared calvin&hobbs.png");
  baseball=loadImage("ball.png");
  tball=loadImage("transparent basketball.png");
  footbal=loadImage("footbal.jpg");
 

}
void draw(){
    background(0,0,255);
    rect(400,500,500,600);
    
  image(ttv,400,500,500,300);

  fill(random(255),random(255),random(255));
  textAlign(50);//pos.of text
  textSize(40);//size.of text
  text("WILLIAM",530,690);


    image(chobbs,10,500,300,300);
  
  image(baseball,baseballX,0,80,80);
 baseballX=baseballX+speed;
  if  (baseballX > 900) {
    speed= -95;
  }
  if (baseballX < 10){
 speed= +45;
  }

  image(tball,mouseX,mouseY,210,210);
  
  image(footbal,700,200,300,200);

save("thank_you_collage.png");
}
