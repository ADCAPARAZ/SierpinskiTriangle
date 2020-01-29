
public void setup()
{
	size(500,500);
}
public void draw()
{
	sierpinski(20,480,460);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 0.99999999){
		// draw triangle at x, y and base and height are len.
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}