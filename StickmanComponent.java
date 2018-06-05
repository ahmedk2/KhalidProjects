
import java.awt.Graphics;
import java.awt.Graphics2D;
import javax.swing.JComponent;

/* This class is used to display a stickman */

public class StickmanComponent extends JComponent 
{

 public void paintComponent(Graphics g) 
 {
 
 Graphics2D g2 = (Graphics2D) g; 
 
 Stickman stickman = new Stickman(0, 0);
 stickman.draw(g2);
 
 }

}