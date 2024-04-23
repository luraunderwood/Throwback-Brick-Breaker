

class Ball {
  //initialize variables
  int x;
  int y;
  int d; 
  
  color c;
  
  int xSpeed;
  int ySpeed;
  
  int speed; 
  
  boolean isOnPlayer;
  
  boolean isMovingLeft;
  boolean isMovingRight; 
  boolean isMovingUp;
  boolean isMovingDown; 
  
  boolean hitTop; 
  boolean hitBottom; 
  boolean hitLeft; 
  boolean hitRight; 
  
  int left; 
  int right; 
  int top; 
  int bottom; 
  
  
  //Constructor 
  Ball(int startingX, int startingY, int startingD, color startingC){
   
    x = startingX;
    y = startingY;
    d = startingD;
    c = startingC;
    
    //speed = 10;
    
    isOnPlayer = false;
    
    isMovingUp = false; 
    isMovingDown =false;
    isMovingLeft = false;
    isMovingRight = false;
    
    left = x-d/2; 
    right = x+d/2; 
    top = y-d/2; 
    bottom = y+d/2; 
    
    
    
  }
  
  //Render the ball
  void render(Player aPlayer) {
   if(isOnPlayer==true){ 
     x = aPlayer.x;
     y = aPlayer.y;
     
     isMovingUp = true;
     isMovingRight = true;
     isMovingDown = false;
     isMovingLeft = false;
     
     isOnPlayer = false;
   }
   else{ 
      circle(x, y, d);
   }
  }


  //Move the ball
 void move(){ 
    if (isMovingLeft == true){ 
      x= x - speed;
      //println("left");
  }
  if (isMovingRight == true){ 
      x= x + speed;
      //println("right");
  }  
  
  if (isMovingUp == true){ 
       y = y - speed;
       //println("up");
  }  
  if (isMovingDown == true){ 
       y = y + speed;
       //println("down");
  } 
  //wall detect
   left = x-d/2; 
    right = x+d/2; 
    top = y-d/2; 
    bottom = y+d/2; 
}
 
//  /*
//This function checks if the ball is touching an edge. If it is, the speed flips
//   */
  void wallDetect() {
    // detects wall detection for the right wall
    if (x+d/2 >= width) {
      isMovingRight = false;
      isMovingLeft = true;
    }
    // wall detection for left wall
    if (x-d/2 <= 0) {
     isMovingRight = true;
      isMovingLeft = false;
    }

    // wall detection for the bottom wall
    if (y+d/2 >= height) {
      println("lost"); 
      //add here the subtracting score
      // p1Score -= 1;
    }
    // wall detection for top wall
    if (y-d/2 <= 0) {
     isMovingUp = false;
      isMovingDown = true;
    }
  }
  
  void hitBrick(Brick abrick){
    if (top<= abrick.bottom && 
    bottom>= abrick.top &&
    left<= abrick.right &&
    right>= abrick.left){ 
      abrick.shouldRemove = true;
      
      if (hitTop(abrick) == true){
        isMovingDown = false;
        isMovingUp = true;
      }
      if (hitBottom(abrick) == true){
        isMovingDown = true;
        isMovingUp = false;
        //println("hit bottom");
      }
      if (hitLeft(abrick) == true){
        isMovingLeft = true;
        isMovingRight = false;
        //println("hit bottom");
      }
      if (hitRight(abrick) == true){
        isMovingLeft = false;
        isMovingRight = true;
        //println("hit bottom");
      }
    }
  }
 
  boolean hitTop(Brick abrick)
  {
    // if the ball is between the obstacle's
    // left and right bound
    if (right >= abrick.left && left <= abrick.right)
    {
      // if the ball is hitting the top of the obstacle
      if (bottom >= abrick.top && top <= abrick.top)
      {
        return true;
      }
    }

    return false;
  }
  
  boolean hitBottom(Brick abrick)
  {
    // if the ball is between the obstacle's
    // left and right bound
    if (right >= abrick.left && left <= abrick.right)
    {
      // if the ball is hitting the bottom of the obstacle
      if (top <= abrick.bottom && bottom >= abrick.bottom)
      {
        return true;
      }
    }

    return false;
  }
  
  boolean hitLeft(Brick aBrick)
  {
    // if the ball is between the obstacle's
    // top and bottom bound
    if (top <= aBrick.bottom && bottom >= aBrick.top)
    {
      // if the ball is hitting the left of the obstacle
      if (right >= aBrick.left && left <= aBrick.left)
      {
        return true;
      }
    }

    return false;
  }
  
  boolean hitRight(Brick abrick)
  {
    // if the ball is between the obstacle's
    // top and bottom bound
    if (top <= abrick.bottom && bottom >= abrick.top)
    {
      // if the ball is hitting the left of the obstacle
      if (left <= abrick.right && right >= abrick.right)
      {
        return true;
      }
    }

    return false;
  }
  
  void hitPlayer(Player aPlayer)
  {
    if (top<= aPlayer.bottom && 
    bottom>= aPlayer.top &&
    left<= aPlayer.right &&
    right>= aPlayer.left){ 
      println("hit");
      isMovingDown = false; 
      isMovingUp = true;
      
    }
  }
 
 
  
}
