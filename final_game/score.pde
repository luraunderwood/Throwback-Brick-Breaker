class Score { 
//initialize my vars
  int p1Score = 4;

int x;
int y; 
int d; 
int c;


// score positions
int p1ScoreX;
int p1ScoreY;
//constructors 
Score(int startingX, int startingY, int startingD, color startingC){
   
    x = startingX;
    y = startingY;
    d = startingD;
    c = startingC;
} 



    // Method to draw score
    void render(int p1Score) {
        text(p1Score, x, y);
    }

}
