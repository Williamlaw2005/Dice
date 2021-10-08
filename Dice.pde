Die bruh;    
    void setup()
  {
    noLoop();
    size(800,800);
    frameRate(30);
    background(256,256,256);
    
    
    
   
  }
  void draw()
  {  
    int sum = 0;
    background(255,255,255);
    for(int i = 0; i < 800; i+=100)
    {
     for(int q = 0; q < 700; q+=100)
     {
     bruh = new Die(i+50,q+50);
     bruh.roll();
     bruh.show();
     sum+=bruh.value;
     }
    }
        textSize(50);
        text("Total sum:" + sum,400,750);
    
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
          int diceX;
          int diceY;
          int tall = 1;
          int wide = 1;
          int value = 1;
          int rgb = (int)(Math.random()*256);
      Die(int x, int y) //constructor
      {
           diceX = x;
           diceY = y;
         
      }
      void roll()
      {
          value = (int)(Math.random()*6)+1;
           
      }
      void show()
      { 
        
        
        
        fill((int)(Math.random()*255));
        rect(diceX-50,diceY-50,tall+100,wide+100,15);
        fill(0);
     
        if(value == 1){
          ellipse(diceX+wide/2, diceY+tall/2,tall+20, wide+20);
        }
        if(value == 2){
          ellipse(diceX+wide/2-25, diceY+tall/2 + 25,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2-25,tall+20, wide+20);
        }
        if(value == 3){
          ellipse(diceX+wide/2-25, diceY+tall/2+25,tall+20, wide+20);
          ellipse(diceX+wide/2, diceY+tall/2,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2-25,tall+20, wide+20);
        }
        if(value == 4){
          ellipse(diceX+wide/2-25, diceY+tall/2+25,tall+20, wide+20);
          ellipse(diceX+wide/2-25, diceY+tall/2-25,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2-25,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2+25,tall+20, wide+20);
        }
        if(value == 5){
           ellipse(diceX+wide/2-25, diceY+tall/2+25,tall+20, wide+20);
          ellipse(diceX+wide/2-25, diceY+tall/2-25,tall+20, wide+20);
           ellipse(diceX+wide/2, diceY+tall/2,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2-25,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2+25,tall+20, wide+20);
        }
        if(value == 6){
          ellipse(diceX+wide/2-25, diceY+tall/2+25,tall+20, wide+20);
          ellipse(diceX+wide/2-25, diceY+tall/2,tall+20, wide+20);
          ellipse(diceX+wide/2-25, diceY+tall/2-25,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2-25,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2,tall+20, wide+20);
          ellipse(diceX+wide/2+25, diceY+tall/2+25,tall+20, wide+20);
        }
      
      }         
  }
