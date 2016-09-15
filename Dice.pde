Die brand;
int count=0;
void setup()
{
	size(400, 400);
	noLoop();
	}
void draw()
{
	background(255);
	for(int C=15; C < 315; C = C+60)
	{

		for (int R=50; R < 350; R = R+60) 
		{
		brand = new Die(R,C);
		brand.show();
		brand.roll();
		count = count + brand.numDot;

	
}
}
fill(0);
strokeWeight(5);
textSize(20);
text("YOUR SUM IS " + count, 115,350);
strokeWeight(1);	
}

void mousePressed()
{
	redraw();
	count=0;
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY,numDot;
	Die(int x,int y)
	{
	myX=x;
	myY=y;
	numDot=(int)(Math.random()*6)+1;
	}


	
	void roll()
	{

		if(numDot == 1)
		{
			fill(0);
			ellipse(myX+25, myY+25, 10, 10);
		}
		else if(numDot == 2)
		{
			fill(0);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+38, myY+38, 10, 10);
		}
		else if(numDot == 3)
		{
			fill(0);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+38, myY+38, 10, 10);
			
		}
		else if(numDot == 4)
		{
			fill(0);
			ellipse(myX+12.25, myY+12.25, 10, 10);
			ellipse(myX+37.5, myY+12.25, 10, 10);
			ellipse(myX+12.25, myY+37.5, 10, 10);
			ellipse(myX+37.5, myY+37.5, 10, 10);
		}
		else if(numDot == 5)
		{
			fill(0);
			ellipse(myX+12.25, myY+12.25, 10, 10);
			ellipse(myX+37.5, myY+12.25, 10, 10);
			ellipse(myX+12.25, myY+37.5, 10, 10);
			ellipse(myX+37.5, myY+37.5, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		}
		else if(numDot == 6)
		{
			fill(0);
			ellipse(myX+12.25, myY+12.25, 10, 10);
			ellipse(myX+37.5, myY+12.25, 10, 10);
			ellipse(myX+12.25, myY+37.5, 10, 10);
			ellipse(myX+37.5, myY+37.5, 10, 10);
			ellipse(myX+12.25, myY+25, 10, 10);
			ellipse(myX+37.5, myY+25, 10, 10);
		}

		}
		
	
	void show()
	{
		
		fill(255);
		rect(myX, myY, 50, 50);
	
	}
		
}