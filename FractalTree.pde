private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angel1 = angle + branchAngle;
	double angel2 = angle - branchAngle;
	branchLength = branchLength*fractionLength;	
	int endX1 = (int)(branchLength*Math.cos(angel1) + x);
	int endY1 = (int)(branchLength*Math.sin(angel1) + y);
	int endX2 = (int)(branchLength*Math.cos(angel2) + x);
	int endY2 = (int)(branchLength*Math.sin(angel2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);	
	if(branchLength>smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angel1);
		drawBranches(endX2,endY2,branchLength,angel2);
	}
} 
