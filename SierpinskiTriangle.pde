public void setup()
{
	size(400, 400);
}
public void draw()
{
	//sierpinski(60, 60, 60);
	sierpinski(10, 390, 390);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 200)
	{
	  triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(x-len/2, y, len);
		sierpinski(x-len/4, y+len/2, len);
	}
}