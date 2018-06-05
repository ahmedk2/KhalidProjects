import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JRadioButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JScrollPane;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JMenuBar;
import javax.swing.border.EtchedBorder;
import javax.swing.border.TitledBorder;

/**
This class provides all the details 
*/

public class ShoeFormFrame extends JFrame
{
	private static final int FRAME_WIDTH = 500; 
	private static final int FRAME_HEIGHT = 500;
	
	private JLabel label;
	private JCheckBox blueCheckBox;
	private JCheckBox redCheckBox;
	private JCheckBox blackCheckBox;
	private JCheckBox whiteCheckBox;
	private JRadioButton firstButton;
	private JRadioButton secondButton;
	private JRadioButton thirdButton;
	private JRadioButton fourthButton;
	private JComboBox<String> shoenameCombo; 
	private ActionListener listener;
	private DoneListener DListener;
	private JButton done;
	private JTextArea result;
	private JTextField comment;
	private String blue = "";
	private String black = "";
	private String white = "";
	private String red = "";
	private int size = 0;
	private final int SIZE_SEVEN = 7;
	private final int SIZE_EIGHT = 8;
	private final int SIZE_NINE = 9;
	private final int SIZE_TEN= 10;	
	
	public ShoeFormFrame() 
	{
		// Details for the frame
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
		setTitle("Shoe Frame");
		setSize(FRAME_WIDTH, FRAME_HEIGHT);
		
		// Construct text greeting 
		label = new JLabel("Your Order");
		add(label, BorderLayout.NORTH);
		
		// Construct menu bar
		JMenuBar menuBar = new JMenuBar();
		setJMenuBar(menuBar);
		menuBar.add(createCloseMenu());
		
		JPanel control = createControlPanel();
		add(control);
	}
	
	/** 
	This method creates an exit listener which allows you to leave the 
	program
	*/
	        
	class ExitItemListener implements ActionListener 
	{
		public void actionPerformed(ActionEvent event) 
		{
			System.exit(0);
		}
	}
	/** 
	This method creates a done listener so that the done button tells the program that 
	you are finished inputing data
	*/
	class DoneListener implements ActionListener 
	{
		public void actionPerformed(ActionEvent event) 
		{
			setOrder();
		}
	}
	/** 
	Creates menu for exiting the program
	*/
	private JMenu createCloseMenu()
	{
		JMenu menu = new JMenu("File");
		JMenuItem exitItem = new JMenuItem("Exit");
		ActionListener listener = new ExitItemListener();
		exitItem.addActionListener(listener);
		menu.add(exitItem);
		return menu;
	}
	
    /** 
    Creates control panel for shoe brand, size, color, 
    done button as well as a result panel
    */
	private JPanel createControlPanel()
	{
		JPanel shoenamePanel = createComboBox();
		JPanel shoesizePanel = createCheckBoxes();
		JPanel colorPanel = createRadioButtons();
		JPanel resultPanel = createTextArea();	
		JPanel buttonPanel = createButton();
		JPanel textPanel = createTextField();
	
	// Line up the component panels
	
		JPanel mainPanel = new JPanel();
		mainPanel.setLayout(new BorderLayout());
		
		JPanel controlPanel = new JPanel();
		controlPanel.setLayout(new GridLayout(2,2));
		mainPanel.add(controlPanel, BorderLayout.CENTER);
		controlPanel.add(shoenamePanel);
		controlPanel.add(shoesizePanel);
		controlPanel.add(colorPanel);
		controlPanel.add(buttonPanel);
		mainPanel.add(resultPanel, BorderLayout.SOUTH);
		mainPanel.add(textPanel, BorderLayout.NORTH);
		
		return mainPanel;
	}
	
	/** 
	This method creates done button to tell the program the user is done inputing data
	*/
	private JPanel createButton() 
	{
		JPanel panel = new JPanel();
		done = new JButton ("Done");
		DListener = new DoneListener();
		
		done.addActionListener(DListener);
		panel.add(done);
		return panel;
	}
	/** 
	This method creates text area for the result panel as well as
	a scroll panel
	*/
	private JPanel createTextArea()
	{
		JPanel panel = new JPanel();
		
		final int ROWS = 10;
		final int COLUMNS= 30;
		result = new JTextArea(ROWS,COLUMNS);
		result.setEditable(false);
		
		panel.add(result);
		panel.setBorder(new TitledBorder(new EtchedBorder(), "Results"));
		JScrollPane scrollPane = new JScrollPane(result);
		panel.add(scrollPane);
		add(panel);
		
		return panel;
	}
	
	private JPanel createTextField()
	{
		JPanel panel = new JPanel();
		
		final int FIELD_WIDTH = 10;
		comment = new JTextField(FIELD_WIDTH);
		comment.setEditable(true);
		panel.add(new JLabel("Comments: "));
		panel.add(comment);
		
		return panel;
	}
	
	/**  
	This method creates combobox choices for the brand
	of the shoe
	*/
	private JPanel createComboBox()
	{
		shoenameCombo = new JComboBox<String>();
		shoenameCombo.addItem("Nike");
		shoenameCombo.addItem("Adidas");
		shoenameCombo.addItem("Reebok");
		shoenameCombo.setEditable(true);
		
		JPanel panel = new JPanel();
		panel.add(shoenameCombo);
		panel.setBorder(new TitledBorder(new EtchedBorder(), "Choice"));
		
		return panel;
	}	
	
	/** 
	This method creates the checkboxes the color of the shoe
	*/
	private JPanel createCheckBoxes()
	{
		blueCheckBox = new JCheckBox("Blue");
		
		redCheckBox = new JCheckBox("Red");
				
		blackCheckBox = new JCheckBox("Black");
		
		whiteCheckBox = new JCheckBox("White");
		
		JPanel panel = new JPanel();
		panel.add(blueCheckBox);
		panel.add(redCheckBox);
		panel.add(blackCheckBox);
		panel.add(whiteCheckBox);
		panel.setBorder(new TitledBorder(new EtchedBorder(), "Color"));
		
		return panel;	
	}
	
	/** 
	This method creates the radio buttons for the shoe size
	*/
	
	private JPanel createRadioButtons()
	{
		firstButton = new JRadioButton("7");
		
		secondButton = new JRadioButton("8");
		
		thirdButton = new JRadioButton("9");
		thirdButton.setSelected(true);
		
		fourthButton = new JRadioButton("10");
			
		ButtonGroup group = new ButtonGroup();
		group.add(firstButton);
		group.add(secondButton);
		group.add(thirdButton);
		group.add(fourthButton);
		
		JPanel panel = new JPanel();
		panel.add(firstButton);
		panel.add(secondButton);
		panel.add(thirdButton);
		panel.add(fourthButton);
		panel.setBorder(new TitledBorder(new EtchedBorder(), "Size"));
		
		return panel;
	}
	
	/** 
	This method calculates all the data that was entered by the user and outputs
	a response based on the data given
	*/
	private void setOrder()
	{
		
		// Determines choice for combobox
		String shoename = (String) shoenameCombo.getSelectedItem();
		
		// Determines choice for checkboxes
		
		if ( blueCheckBox.isSelected()) 
		{
			blue = "blue ";
		}
		if ( redCheckBox.isSelected())
		{
			red = "red ";
		}
		if ( blackCheckBox.isSelected()) 
		{
			black = "black ";
		}
		if ( whiteCheckBox.isSelected()) 
		{
			white = "white ";
		}
		
		// Determines choice for radiobuttons
		
		if ( firstButton.isSelected()) { size = SIZE_SEVEN; }
		else if ( secondButton.isSelected()) { size = SIZE_EIGHT; }
		else if ( thirdButton.isSelected()) { size = SIZE_NINE; }
		else if ( fourthButton.isSelected()) { size = SIZE_TEN; }	
		
		// Outputs a response based on the choices selected by the user
		
		String lastString = "Your order for today is a " + shoename + " shoe with " 
				+ blue + red + black + white + "color(s) and size " + size 
				 + "\n" + "Thank you for your order have a great day. \n";
				
		result.append(lastString);
	}
}
