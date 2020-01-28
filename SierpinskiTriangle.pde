int len = 500;
int x1 = 0;
int x2 = 
int x3 = 250;
int y1 = 
int y2 = 
int y3 = 




public void setup()
{
	size(500,500);
}
public void draw()
{
	triangle(0,500,500,500,250,0);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		// draw triangle at x, y and base and height are len.
		triangle(0,len,len,len,250,0);
	}
	else
	{
		sierpinski(x,y,len/2);
	}
}