import javax.swing.JFrame;

public class StickmanViewer 
{

/* This is the main class responsible for creating the frame of my stickman */

public static void main(String[] args)
 {

	JFrame frame = new JFrame();
	frame.setSize(500,400);
	frame.setTitle("Drawing Box");
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	
	StickmanComponent component = new StickmanComponent();
	frame.add(component);
	frame.setVisible(true);
	
 } 

}