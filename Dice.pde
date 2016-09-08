Die brand;
void setup()
{
	size(400, 400);
	noLoop();
	brand = new Die(200,200);
}
void draw()
{
	background(255);
	brand.show();
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	Die(int x,int y)
	{
	myX=x;
	myY=y;
	}


	
	void roll()
	{
		
			
		}
	
	void show()
	{
		for (myX=20; myX < 380; myX = myX+60) {
			rect(myX, myY*5, 50, 50,8);
}
		}
		
}