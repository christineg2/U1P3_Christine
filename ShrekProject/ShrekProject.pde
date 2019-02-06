int Screen = 1;
float x = 400;
float y = 400;
float speed = 10;

PImage shrek;
int shrekY = 400;
int shrekX = 570;

PImage swamp;
int swampX = 800;
int swampY = 800;

PImage far;
int farY = 800;
int farX= 800;

PImage duloc;
int dulocX =800;
int dulocY = 800;

import ddf.minim.*;
Minim minim;
AudioPlayer allstar;
AudioPlayer dulocsong;
 

void setup()

{
    minim = new Minim(this);
     allstar = minim.loadFile("allstar.mp3");
     allstar.play ();
     dulocsong= minim.loadFile("dulocsong.mp3");
   
    
  size (800,800);
  
  shrek = loadImage ("shrek.png");
  shrek.resize (150,150);
  swamp = loadImage ("swamp.png");
  swamp.resize (800,800);
  far = loadImage("farfar.jpg");
  far.resize (800,800);
  duloc = loadImage ("duloc.jpg");
  duloc.resize (800,800);
}


void draw()

{
  
  
  if (Screen ==1)
  {
    background(swamp);
    
  }
  
  if (Screen == 2)
  
  {
    background (far);
  }
  
  if (Screen == 3)
  {
    background (duloc);
  }
  
  
  image (shrek, y-40,x+200);
  
 
 

 for(int i = 0; i < allstar.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, allstar.bufferSize(), 0, width );
    float x2 = map( i+1, 0, allstar.bufferSize(), 0, width );
    line( x1, 50 + allstar.left.get(i)*50, x2, 50 + allstar.left.get(i+1)*50 );
    line( x1, 150 + allstar.right.get(i)*50, x2, 150 + allstar.right.get(i+1)*50 );
  }
 
}


void keyPressed()

{
  if (key == '1')
  
  {
    Screen = 1;
    
  }
  
  if (key == '2')
  
  {
    Screen = 2;
   
  }
  
  if (key == '3')
  
  {
    Screen = 3;
  }
  
  if(key== 'a')
  {
    y=y-speed;
  }
  
  if (key== 'w')
  {
    x=x-speed;
    
  }
  
  if (key== 'd')
  {
    y=y+speed;
  }
  
  if (key== 's')
  {
    x=x+speed;
  }
  
  if (key=='4')
  {
dulocsong.play();
allstar.pause ();
  }
  
  
}
