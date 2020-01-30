int amount = 500;
public void setup()
{
	size(500,500);
	noLoop();
}
public void draw()
{
	sierpinski(20,480,460);

}
public void mousePressed()//optional
{
		 amount = amount/2;
		 redraw();
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= amount){
		// draw triangle at x, y and base and height are len.
		fill(0,255,0);
		triangle(x,y,x+len,y,x+len/2,y-len);
		
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}