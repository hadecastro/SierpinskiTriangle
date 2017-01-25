int limit = 10;
public void setup()
{
	size(800, 800);
}
public void draw()
{
	noStroke();
	//fill(220, 210, 0);
	fill((int)(Math.random()), (int)(Math.random()), 255);
	sierpinski(mouseX - 200, mouseY + 150, 400);
	fill(0, 20);
	rect(0, 0, 2000, 2000);
}
public void mouseClicked()//optional
{
	limit = limit*2;
	if(limit > 1700)
	{
		limit = 10;
	}
}

public void keyPressed()
{
}
public void sierpinski(int x, int y, int len) 
{
	
	if(len <= limit)
	{
	    triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else 
	{	
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);		
		sierpinski(x+len/4, y-len/2, len/2);
	}
	
}