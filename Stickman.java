import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Point2D;

public class Stickman 
{

 private int xLeft = 0;
 private int yTop = 0;

 /** Constructs a stickman with a given top left corner
    @ param x the x coordinate of the top left corner
    @ param y the y coordinate of the top left corner
 */

  public Stickman(int x, int y)
  {

  	xLeft = x;
    yTop = y;
    
  }


	/** Draws the stickman
    @ param g2 the graphics content
	*/


	public void draw(Graphics2D g2)
	{

	/* The head */
	Ellipse2D.Double head = new Ellipse2D.Double(xLeft, yTop, 100, 100); 


	/* The mouth */
	Point2D.Double r0 = new Point2D.Double(xLeft + 35, yTop + 80);
	Point2D.Double r1 = new Point2D.Double(xLeft + 65, yTop + 80);  

	/* The eyes */
	Rectangle eye = new Rectangle(xLeft + 15, yTop + 40, 20, 15);
 
	/* The neck */
	Point2D.Double r2 = new Point2D.Double(xLeft + 50, yTop + 100);
	Point2D.Double r3 = new Point2D.Double(xLeft + 50, yTop + 115); 

	/* The chest */
	Rectangle chest = new Rectangle(xLeft + 20, yTop + 115, 55, 25);	

	/* Left arm */
	Point2D.Double r4 = new Point2D.Double(xLeft + 5, yTop + 130);
	Point2D.Double r5 = new Point2D.Double(xLeft + 20, yTop + 130);

	/* Right arm */
	Point2D.Double r6 = new Point2D.Double(xLeft + 75, yTop + 130);
	Point2D.Double r7 = new Point2D.Double(xLeft + 90, yTop + 130);

	/* Left leg */
	Point2D.Double r8 = new Point2D.Double(xLeft + 35, yTop + 140);
	Point2D.Double r9 = new Point2D.Double(xLeft + 35, yTop + 160);

	/* Right leg */
	Point2D.Double r10 = new Point2D.Double(xLeft + 65, yTop + 140);
	Point2D.Double r11 = new Point2D.Double(xLeft + 65, yTop + 160);

	/* These lines are used to connect the point and form the mouth, arms, and legs */
	Line2D.Double mouth = new Line2D.Double(r0, r1);
	Line2D.Double neck = new Line2D.Double(r2, r3);
	Line2D.Double armL = new Line2D.Double(r4, r5);
	Line2D.Double armR = new Line2D.Double(r6, r7);
	Line2D.Double legL = new Line2D.Double(r8, r9);
	Line2D.Double legR = new Line2D.Double(r10, r11);

	g2.setColor(Color.CYAN);
	g2.fill(head);
	
	g2.setColor(Color.RED);
	g2.draw(mouth);
	
	g2.setColor(Color.GREEN);
	g2.fill(eye);
	eye.translate(50,0);
	g2.fill(eye);
	
	g2.setColor(Color.BLUE);
	g2.draw(neck);
	
	g2.setColor(Color.YELLOW);
	g2.fill(chest);
	
	g2.setColor(Color.LIGHT_GRAY);
	g2.draw(armL);
	
	g2.setColor(Color.LIGHT_GRAY);
	g2.draw(armR);
	
	g2.setColor(Color.MAGENTA);
	g2.draw(legL);
	
	g2.setColor(Color.MAGENTA);
	g2.draw(legR);

	/* Creates a message */
	g2.drawString("This is the drawing that I chose to create for this assignment", 5, 190);
	g2.drawString("It contains three rectangles, one circle, five lines and six colors!", 5, 210);
	
	}
} 