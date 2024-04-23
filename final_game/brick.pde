class Brick{ 
  //initialze my vars
  int x; 
  int y; 
  int w; 
  int h; 
  
  int left;
  int right;
  int top; 
  int bottom; 
  color c;
  
  boolean shouldRemove;

//constuctor
Brick(int startingX, int startingY, int startingW, int startingH){ 
  x = startingX;
  y = startingY;
  w = startingW;
  h = startingH;
  c  = color(255,255,255);//color(random(0,255),random(0,255), random(0,255));
  
    left = x-w/2; 
    right = x+w/2; 
    top = y-h/2; 
    bottom = y+h/2; 
  
    shouldRemove = false;
}
  void render(){ 
    rectMode(CENTER);
    strokeWeight(5);
    stroke(0);
    rect(x,y,w,h);
    fill (c);
  }
   
} 
