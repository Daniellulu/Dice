void setup()
{
	noLoop();
size(500,500);
}
void draw()
{
  background(41,255,250);
  int total = 0;
	//your code here
for(int y = 50; y < 450; y+= 50)
{
  for(int x = 50; x < 450; x+= 50)
  {
  Die yes = new Die(x,y);
yes.show();
yes.roll();
total += yes.sum;
  }
}
text("The sum is " + total, 200,470);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int size, myCol, side, sum;
float myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
  
  myX = (float) x;
  myY = (float) y;
  myCol = color(255);
  size = 50;
  sum = 0;
	}
	void roll()
	{
		//your code here
  side = (int)(Math.random()* 6) +1;
  if(side == 1){
  fill(0);
  ellipse(myX +25, myY + 25, 5,5);
  sum+= side;
  }
  if(side == 2){
    fill(0);
  ellipse(myX +20, myY + 25, 5,5);
  ellipse(myX + 35, myY + 25,5,5);
  sum+= side;
  }
  if(side == 3){
    fill(0);
  ellipse(myX +15, myY + 15, 5,5);
  ellipse(myX + 25, myY + 25,5,5);
  ellipse(myX + 35, myY + 35,5,5);
  sum+= side;
  }
    if(side == 4){
    fill(0);
  ellipse(myX +15, myY + 15, 5,5);
  ellipse(myX + 35, myY + 15,5,5);
  ellipse(myX + 15, myY + 35,5,5);
  ellipse(myX + 35, myY + 35, 5,5);
  sum+= side;
  }
  if(side == 5){
    fill(0);
  ellipse(myX +15, myY + 15, 5,5);
  ellipse(myX + 35, myY + 15,5,5);
  ellipse(myX + 15, myY + 35,5,5);
  ellipse(myX + 35, myY + 35, 5,5);
  ellipse(myX + 25, myY + 25, 5,5);
  sum+= side;
  }
  if(side == 6){
    fill(0);
  ellipse(myX +15, myY + 15, 5,5);
  ellipse(myX + 15, myY + 25,5,5);
  ellipse(myX + 15, myY + 35,5,5);
  ellipse(myX + 35, myY + 15, 5,5);
  ellipse(myX + 35, myY + 25, 5,5);
  ellipse(myX + 35, myY + 35, 5,5);
  sum+= side;
  }
	}
	void show()
	{
		//your code here
fill(myCol);
  rect(myX,myY,size,size);
  
	}
}
