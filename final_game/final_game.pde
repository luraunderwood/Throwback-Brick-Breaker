// declaring my vars
//sound
import processing.sound.*;
//images 
PImage picImg;
PImage lineImg; 
PImage blueImg; 
PImage stageImg; 
PImage stage2Img; 
PImage fireImg; 
PImage luraImg;
PImage lura2Img;
int state = 0;

//sound
SoundFile popSound;
SoundFile heheSound;


Score s1;
Player p1;
Ball b1;
Brick r1;
Brick r2;
Brick r3;
Brick r4;
Brick r5;
Brick r6;
Brick r7;
Brick r8;
Brick r9;
Brick r10;

Brick r11;
Brick r12;
Brick r13;
Brick r14;
Brick r15;
Brick r16;
Brick r17;
Brick r18;
Brick r19;
Brick r20;
Brick r41;
Brick r42;

Brick r21;
Brick r22;
Brick r23;
Brick r24;
Brick r25;
Brick r26;
Brick r27;
Brick r28;
Brick r29;
Brick r30;
Brick r31;
Brick r32;
Brick r33;
Brick r34;
Brick r35;
Brick r36;
Brick r37;
Brick r38;
Brick r39;
Brick r40;

//differnt brick levels
ArrayList<Brick> brickList1;
ArrayList<Brick> brickList2;
ArrayList<Brick> brickList3;

//declaring the score
int score = 4;

void setup() {
  size(1200, 800);
  rectMode(CENTER);
  imageMode(CENTER);

//image
 picImg = loadImage("pic.jpeg");
 picImg.resize(width,height); 
 
 lineImg = loadImage("line.jpeg");
 lineImg.resize(width,height); 
 
  blueImg = loadImage("blue.jpeg");
 blueImg.resize(width,height); 
 
 stageImg = loadImage("stage.jpeg");
 stageImg.resize(width,height); 
 
 stage2Img = loadImage("stage2.jpeg");
 stage2Img.resize(width,height); 
 
 fireImg = loadImage("fire.jpeg");
 fireImg.resize(width,height); 
 
 luraImg = loadImage("lura.JPG");
 luraImg.resize(width,height); 
 
 lura2Img = loadImage("lura2.JPG");
 lura2Img.resize(width,height); 


// how the sounds play
  popSound= new SoundFile(this, "pop.wav");
  heheSound = new SoundFile(this, "hehe.wav");// these must be exact

  heheSound.play();
 

  //initialize my vars
  s1 = new Score(1000, 600, 50, 100);
  p1 = new Player(width/2, 700, 130, 40);
  b1 = new Ball(width/2, 620, 50, color(0, 100, 255));
  r1 = new Brick(200, 100, 100, 60);
  r2 = new Brick(200, 200, 100, 60);
  r3 = new Brick(200, 300, 100, 60);
  r4 = new Brick(200, 400, 100, 60);
  r5 = new Brick(200, 500, 100, 60);
  r6 = new Brick(900, 100, 100, 60);
  r7 = new Brick(900, 200, 100, 60);
  r8 = new Brick(900, 300, 100, 60);
  r9 = new Brick(900, 400, 100, 60);
  r10 = new Brick(900, 500, 100, 60);

  r11 = new Brick(600, 100, 100, 60);
  r12 = new Brick(500, 200, 100, 60);
  r13 = new Brick(600, 200, 100, 60);
  r14 = new Brick(400, 300, 100, 60);
  r15 = new Brick(500, 300, 100, 60);
  r16 = new Brick(600, 300, 100, 60);
  r17 = new Brick(300, 400, 100, 60);
  r18 = new Brick(400, 400, 100, 60);
  r19 = new Brick(500, 400, 100, 60);
  r20 = new Brick(600, 400, 100, 60);
  r41 = new Brick(700, 400, 100, 60);
  // r4 = new Brick(700, 400, 100, 60);
  //r16 = new Brick(600, 00, 100, 60);
  
 

  r21 = new Brick(300, 100, 100, 60);
  r22 = new Brick(300, 200, 100, 60);
  r23 = new Brick(300, 300, 100, 60);
  r24 = new Brick(300, 400, 100, 60);
  r25 = new Brick(200, 500, 100, 60);
  r26 = new Brick(200, 100, 100, 60);
  r27 = new Brick(200, 200, 100, 60);
  r28 = new Brick(200, 300, 100, 60);
  r29 = new Brick(200, 400, 100, 60);
  r30 = new Brick(200, 500, 100, 60);
  r31 = new Brick(800, 100, 100, 60);
  r32 = new Brick(800, 200, 100, 60);
  r33 = new Brick(800, 300, 100, 60);
  r34 = new Brick(800, 400, 100, 60);
  r35 = new Brick(800, 500, 100, 60);
  r36 = new Brick(900, 100, 100, 60);
  r37 = new Brick(900, 200, 100, 60);
  r38 = new Brick(900, 300, 100, 60);
  r39 = new Brick(900, 400, 100, 60);
  r40 = new Brick(900, 500, 100, 60);



  brickList1 = new ArrayList<Brick>();
  brickList1.add(r1);
  brickList1.add(r2);
  brickList1.add(r3);
  brickList1.add(r4);
  brickList1.add(r5);
  brickList1.add(r6);
  brickList1.add(r7);
  brickList1.add(r8);
  brickList1.add(r9);
  brickList1.add(r10);

  brickList2 = new ArrayList<Brick>();
  brickList2.add(r11);
  brickList2.add(r12);
  brickList2.add(r13);
  brickList2.add(r14);
  brickList2.add(r15);
  brickList2.add(r16);
  brickList2.add(r17);
  brickList2.add(r18);
  brickList2.add(r19);
  brickList2.add(r20);
  brickList2.add(r41);
  


  brickList3 = new ArrayList<Brick>();
  brickList3.add(r21);
  brickList3.add(r22);
  brickList3.add(r23);
  brickList3.add(r24);
  brickList3.add(r25);
  brickList3.add(r26);
  brickList3.add(r27);
  brickList3.add(r28);
  brickList3.add(r29);
  brickList3.add(r30);

  brickList3.add(r31);
  brickList3.add(r32);
  brickList3.add(r33);
  brickList3.add(r34);
  brickList3.add(r35);
  brickList3.add(r36);
  brickList3.add(r37);
  brickList3.add(r38);
  brickList3.add(r39);
  brickList3.add(r30);
}

void draw() {
 
  //image(picImg, width/2, height/2); 
  //imageMode(CENTER);
  // background(picImg);
  
  switch(state) {
  //start screen 
    case 0:
  image(stageImg, width/2, height/2); 
  imageMode(CENTER);
  background(stageImg);
    startScreen();
    break;
//level 1
  case 1:
  image(picImg, width/2, height/2); 
  imageMode(CENTER);
  background(picImg);
    //background(42);
    if (heheSound.isPlaying() == false) {
      heheSound.play();
    }

    //player
    p1.render();
    p1.move();
    p1.wallDetect();


//BALL
    b1.render(p1);
    b1.move();
    b1.wallDetect();
    b1.speed = 10;
     
    s1.render(score);

    for (Brick abrick : brickList1) {
      abrick.render();
      b1.hitBrick(abrick);
    }
//removing the bricks
    b1.hitPlayer(p1);

    for (int i = brickList1.size()-1; i>= 0; i=i-1) {
      Brick abrick = brickList1.get(i);

      if (abrick.shouldRemove == true) {
        brickList1.remove(abrick);
      }
    }
// to move the next level after winning that level
    if (brickList1.isEmpty()) {
      state = 2;
      newLevelScreen();
    }
//resetting the player and ball
    if (b1.y + b1.d/2 >= height) {
      score -= 1;
      p1 = new Player(width/2, 700, 130, 40);
      b1 = new Ball(width/2, 620, 50, color(0, 100, 255));
    }
    
// whne you lsoe a level 
  
    if (brickList1.size() > 0 && score == 0) {
        state = 7; // Change to lose screen state
        println("go to 7");
      }
    else if (score == 0){
      println("go to next levl");
     state = 2;
     score = 4;
    }
    break;
//intro to levl 2
  case 2:
  image(stage2Img, width/2, height/2); 
  imageMode(CENTER);
  background(stage2Img);
    newLevelScreen();
    break;
//level 2
  case 3:
  image(lineImg, width/2, height/2); 
  imageMode(CENTER);
  background(lineImg);
    //if(stayaliveSound.isPlaying() == false){
    //  stayaliveSound.play();
    //}
    p1.render();
    p1.move();
    p1.wallDetect();

    b1.render(p1);
    b1.move();
    b1.wallDetect();
    b1.speed = 12;
    
     s1.render(score);
//drawing the brick list 2
    for (Brick abrick : brickList2) {
      abrick.render();
      b1.hitBrick(abrick);
    }

    b1.hitPlayer(p1);
//getting ride of bricks
    for (int i = brickList2.size()-1; i>= 0; i=i-1) {
      Brick abrick = brickList2.get(i);

      if (abrick.shouldRemove == true) {
        brickList2.remove(abrick);
      }
    }
//moving on to the next case 
    if (brickList2.isEmpty()) {
      state = 4;
      newLevelScreen();
    }
    //resetting the player balla and score 
    if (b1.y + b1.d/2 >= height) {
      score -= 1;
      p1 = new Player(width/2, 700, 130, 40);
      b1 = new Ball(width/2, 620, 50, color(0, 100, 255));
    }
    
    if (brickList1.size() > 0 && score == 0) {
        state = 8; // Change to lose screen state
        println("go to 8");
      }
    else if (score == 0){
      println("go to next levl");
     state = 4;
     score = 4;
    }
     
    break;
//intro screen to level 3
    case 4:
   image(fireImg, width/2, height/2); 
  imageMode(CENTER);
  background(fireImg);
    newLevelScreen3();
    break;

  case 5:
  image(blueImg, width/2, height/2); 
  imageMode(CENTER);
 background(blueImg);
 
  //player
    p1.render();
    p1.move();
    p1.wallDetect();
//ball
    b1.render(p1);
    b1.move();
    b1.wallDetect();
    b1.speed = 15;
    //score
    s1.render(score);

//draw 3 brick list
    for (Brick abrick : brickList3) {
      abrick.render();
      b1.hitBrick(abrick);
    }

    b1.hitPlayer(p1);
//removing bricks
    for (int i = brickList3.size()-1; i>= 0; i=i-1) {
      Brick abrick = brickList3.get(i);

      if (abrick.shouldRemove == true) {
        brickList3.remove(abrick);
      }
    }
//if thereh is no bricsk thne move on 
    if (brickList3.isEmpty()) {
      state = 6;
    }
    if (b1.y + b1.d/2 >= height) {
      score -= 1;
      p1 = new Player(width/2, 700, 130, 40);
      b1 = new Ball(width/2, 620, 50, color(0, 100, 255));
    }
  //telling it to show the lose screen of lost
    if (brickList1.size() > 0 && score == 0) {
        state = 9; // Change to lose screen state
        println("go to 9");
      }
    else if (score == 0){
      println("go to next levl");
     state = 6;
     score = 4;
    }
    break;

  case 6:
    winScreen();
    break;
    case 7: 
    loseScreen1();
    break;
    case 8: 
    loseScreen2();
    break;
    case 9: 
    loseScreen3(); 
    break;
  }
}





void keyPressed() {
  if (key == 'a') {
    p1. isMovingLeft = true;
  }

  if (key == 'd') {
    p1. isMovingRight = true;
  }

  if ( key == '1') {
    state = 1;
    score = 4;
  }

  if (key == '2') {
    playerLevelUp2();
    state = 3;
    score = 4;
  }

  if (key == '3') {
    playerLevelUp3();
    state = 5;
    score = 4;
  }
}

void keyReleased() {
  if (key == 'a') {
    p1. isMovingLeft = false;
  }

  if (key == 'd') {
    p1. isMovingRight = false;
  }
  if (key==' ') {
    popSound.play();
    b1.isOnPlayer = true;
  }
}



void startScreen() {
  //background(#F290ED);
  textSize(80);
  text( "WELCOME TO BRICK BREAKER",  width/8, height/8 );
  textSize(80);
  text( "press 1 to start level 1",  width/4, height/2 );
   textSize(50);
  text(" use spacebar to shoot the ball ", width/5, height/2 +200);
  text("use 'a' and 'd' to move left and right ", width/5, height/2 + 250);
}

void playerLevelUp2() {
  reset();
  brickList2 = new ArrayList<Brick>( brickList2);
}

void newLevelScreen() {
  //background(#F290ED);
  textSize(50);
  text( "press 2 to play next level", width/3, height/2);
}

void newLevelScreen3() {
  //background(#F290ED);
  textSize(50);
  text( "press 3 to play next level", width/3, height/2);
}

void playerLevelUp3() {
  reset();
  brickList3 = new ArrayList<Brick>( brickList3);
}

void winScreen() {
 image(luraImg, width/2, height/2); 
  imageMode(CENTER);
  background(luraImg);
  //background(#F290ED);
  textSize(100);
  text( "YOU WON!", width/3, height/4);
  
}

void reset() {
  background(42);
  /// player
  p1.x = width/2;
  p1.y = 700;

  //ball
  b1.x= width/2;
  b1.y = 620;
}

void loseScreen1() {
  // Display lose message or image
 image(lura2Img, width/2, height/2); 
  imageMode(CENTER);
  background(lura2Img); // Change background color or display an image
  textSize(100);
  fill(255,255,255); // Change text color to red
  textAlign(CENTER, CENTER);
  text("You Lost!", width / 2, height / 2);
  textSize(80);
  textAlign(CENTER, CENTER);
  text( "press 1 to replay the level",  width/2, height/3 );
}

void loseScreen2() {
  // Display lose message or image
 image(lura2Img, width/2, height/2); 
  imageMode(CENTER);
  background(lura2Img); // Change background color or display an image
  textSize(100);
  fill(255,255,255); // Change text color to red
  textAlign(CENTER, CENTER);
  text("You Lost!", width / 2, height / 2);
  textSize(80);
  textAlign(CENTER, CENTER);
  text( "press 2 to replay the level",  width/2, height/3 );
}

void loseScreen3() {
  // Display lose message or image
image(lura2Img, width/2, height/2); 
  imageMode(CENTER);
  background(lura2Img); // Change background color or display an image
  textSize(100);
  fill(255,255,255); // Change text color to red
  textAlign(CENTER, CENTER);
  text("You Lost!", width / 2, height / 2);
  textSize(80);
  textAlign(CENTER, CENTER);
  text( "press 3 to replay the level",  width/2, height/3 );
}
