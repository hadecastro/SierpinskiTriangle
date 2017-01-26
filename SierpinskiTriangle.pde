int limit = 10;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int r1 = (int)(Math.random()*255);
int g1 = (int)(Math.random()*255);
int b1 = (int)(Math.random()*255);
int r2 = (int)(Math.random()*255);
int g2 = (int)(Math.random()*255);
int b2 = (int)(Math.random()*255);


public void setup()
{
	size(800, 800);
}
public void draw()
{	
	noStroke();
	fill(r, g, b);
	sierpinski(mouseX - 200, mouseY + 150, 400);
	fill(0, 30);
	rect(0, 0, 2000, 2000);
}
public void mouseClicked()//optional
{
	limit = limit*2;
	if(limit > 1200)
	{
		limit = 10;
	}
}

public void keyPressed()
{
	if(key == ' ')
	{
		r = (int)(Math.random()*255);
		g = (int)(Math.random()*255);
		b = (int)(Math.random()*255);
		r1 = (int)(Math.random()*255);
		g1 = (int)(Math.random()*255);
		b1 = (int)(Math.random()*255);
		r2 = (int)(Math.random()*255);
		g2 = (int)(Math.random()*255);
		b2 = (int)(Math.random()*255);
	}
}
public void sierpinski(int x, int y, int len) 
{
	
	if(len <= limit)
	{

	    triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else 
	{	
		fill(r, g, b);
		sierpinski(x, y, len/2);
		fill(r1, g1, b1);
		sierpinski(x+len/2, y, len/2);
		fill(r2, g2, b2);		
		sierpinski(x+len/4, y-len/2, len/2);
	}
	
}