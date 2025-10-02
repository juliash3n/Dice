Die bob;
int sum;
void setup()
{
  size(300, 350);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  background(196);
  fill(0,0,0);
  strokeWeight(1);
  
  for(int b = 20; b<285; b+=70){
     for(int i=20; i<285; i+=70){
     bob = new Die(i, b);
     bob.roll();
     bob.show();
     sum += bob.face;
    }
  }
  text("total: " + sum, 150,325);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die
{
  //three member variables
  int face;
  int myX, myY;

  //three member functions
  Die(int x, int y) //constructor
  {
    //job of the constructor
    // is to initialize member variables
    face = 0;
    myX = x;
    myY = y;
  }
  void roll()
  {
    face = (int)(Math.random()*6+1);
    sum+=face;
  }
  void show(){
    strokeWeight(2);
    if(face == 1){
    fill(255);
    rect(myX,myY,50,50,20);
    fill(0);
    ellipse(myX+25,myY+25,10,10);
    }
    if(face == 2){
    fill(255);
    rect(myX,myY,50,50,20);
    fill(0);
    ellipse(myX+15,myY+25,10,10);
    ellipse(myX+35,myY+25,10,10);
    }
    if(face == 3){
    fill(255);
    rect(myX,myY,50,50,20);
    fill(0);
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX+25,myY+25,10,10);
    ellipse(myX+35,myY+35,10,10);
    }
    if(face == 4){
    fill(255);
    rect(myX,myY,50,50,20);
    fill(0);
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX+35,myY+15,10,10);
    ellipse(myX+15,myY+35,10,10);
    ellipse(myX+35,myY+35,10,10);
    }
    if(face == 5){
    fill(255);
    rect(myX,myY,50,50,20);
    fill(0);
    ellipse(myX+25,myY+25,10,10);
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX+35,myY+15,10,10);
    ellipse(myX+15,myY+35,10,10);
    ellipse(myX+35,myY+35,10,10);
    }
    if(face == 6){
    fill(255);
    rect(myX,myY,50,50,20);
    fill(0);
    //rowone
    ellipse(myX+15,myY+13,10,10);
    ellipse(myX+35,myY+13,10,10);
    //rowtwo
    ellipse(myX+15,myY+25,10,10);
    ellipse(myX+35,myY+25,10,10);
    //rowthree
    ellipse(myX+15,myY+37,10,10);
    ellipse(myX+35,myY+37,10,10);
    }
  }
} //class ends
