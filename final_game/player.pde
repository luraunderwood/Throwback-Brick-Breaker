class Player{ 
  //variables
  int w; 
  int h; 
  int x; 
  int y;
  
  boolean isMovingLeft;
  boolean isMovingRight; 
  
  int speed; 
  
  //class variables
 
  int xSpeed;
  int ySpeed;
  
  int left; 
  int right; 
  int top; 
  int bottom; 
  
  // constructor 
  Player(int startingX, int startingY, int startingW, int startingH){ 
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    isMovingLeft = false;
    isMovingRight = false;
    
    speed = 20; 
    
   left = x-w/2; 
    right = x+w/2; 
    top = y-h/2; 
    bottom = y+h/2; 
  } 
  // function 
  void render(){ 
   stroke (0);
   strokeWeight(1);
    rect(x,y,w,h);
  }
  
  void move(){ 
    if (isMovingLeft == true){ 
      x -= speed; // x= x - speed
  }
  if (isMovingRight == true){ 
      x += speed; // x= x + speed
  }
 
  left = x-w/2; 
    right = x+w/2; 
    top = y-h/2; 
    bottom = y+h/2; 
}

void wallDetect() {
    // detects wall detection for the right wall
    if (x+w/2 >= width) {
     x = width-w/2;
    }
    // wall detection for left wall
    if (x-w/2 <= 0) {
     x = 0+w/2;
    }
   
  } 

}
