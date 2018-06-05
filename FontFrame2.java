import java.awt.BorderLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;

/**
This frame has a menu with commands to change the font
of a text sample. */

 public class FontFrame2 extends JFrame
 {
private static final int FRAME_WIDTH = 300; 
private static final int FRAME_HEIGHT = 400;
private JLabel label;
private String facename;
private int fontstyle;
private int fontsize;

 /**
 Constructs the frame.
 */
 public FontFrame2()
 {
 // Construct text sample
 label = new JLabel("Big Java");
 add(label, BorderLayout.CENTER);

 // Construct menu
 JMenuBar menuBar = new JMenuBar();
 setJMenuBar(menuBar);
 menuBar.add(createFileMenu());
 menuBar.add(createFontMenu());

 facename = "Serif";
 fontsize = 24;
 fontstyle = Font.PLAIN;

 setLabelFont();
 setSize(FRAME_WIDTH, FRAME_HEIGHT);
 }

 class ExitItemListener implements ActionListener
 {
 public void actionPerformed(ActionEvent event)
 {
 System.exit(0);
 }
 }

 /**
 Creates the File menu.
58 @return the menu
59 */
 public JMenu createFileMenu()
 {
 JMenu menu = new JMenu("File");
 JMenuItem exitItem = new JMenuItem("Exit");
 ActionListener listener = new ExitItemListener();
 exitItem.addActionListener(listener);
 menu.add(exitItem);
 return menu;
 }

 /**
71 Creates the Font submenu.
72 @return the menu
73 */
 public JMenu createFontMenu()
 {
 JMenu menu = new JMenu("Font");
 menu.add(createFaceMenu());
 menu.add(createSizeMenu());
 menu.add(createStyleMenu());
return menu;
 } 
 /**
84 Creates the Face submenu.
85 @return the menu
86 */

 public JMenu createFaceMenu()
 {
 JMenu menu = new JMenu("Face");
 menu.add(createFaceItem("Serif"));
 menu.add(createFaceItem("SansSerif"));
 menu.add(createFaceItem("Monospaced"));
 return menu;
 }

 /**
97 Creates the Size submenu.
98 @return the menu
99 */
 public JMenu createSizeMenu()
 {
 JMenu menu = new JMenu("Size");
 menu.add(createSizeItem("Smaller", -1));
 menu.add(createSizeItem("Larger", 1));
  return menu;
 }

 /**
109 Creates the Style submenu.
110 @return the menu
111 */
 public JMenu createStyleMenu()
 {
 JMenu menu = new JMenu("Style");
 menu.add(createStyleItem("Plain", Font.PLAIN));
 menu.add(createStyleItem("Bold", Font.BOLD));
 menu.add(createStyleItem("Italic", Font.ITALIC));
 menu.add(createStyleItem("Bold Italic", Font.BOLD + Font.ITALIC));
 return menu;
 }

 /**
124 Creates a menu item to change the font face and set its action listener.
125 @param name the name of the font face
126 @return the menu item
127 */
public JMenuItem createFaceItem(final String name)
 {
 class FaceItemListener implements ActionListener
 {
 public void actionPerformed(ActionEvent event)
 {
 facename = name;
 setLabelFont();
 }
 }

 JMenuItem item = new JMenuItem(name);
 ActionListener listener = new FaceItemListener();
 item.addActionListener(listener);
 
 return item;
 }

 /**
146 Creates a menu item to change the font size
147 and set its action listener.
148 @param name the name of the menu item
149 @param increment the amount by which to change the size
150 @return the menu item
 */
 public JMenuItem createSizeItem(String name, final int increment)
 {
 class SizeItemListener implements ActionListener
 {
 public void actionPerformed(ActionEvent event)
 {
 fontsize = fontsize + increment;
 setLabelFont();
 }
 }

 JMenuItem item = new JMenuItem(name);
 ActionListener listener = new SizeItemListener();
 item.addActionListener(listener);
 return item;
 }

 /**
170 Creates a menu item to change the font style
171 and set its action listener.
172 @param name the name of the menu item
173 @param style the new font style
174 @return the menu item
175 */
 public JMenuItem createStyleItem(String name, final int style)
 {
 class StyleItemListener implements ActionListener
 {
 public void actionPerformed(ActionEvent event)
 {
 fontstyle = style;
 setLabelFont();
 }
 }

 JMenuItem item = new JMenuItem(name);
 ActionListener listener = new StyleItemListener();
 item.addActionListener(listener);
 return item;
 }

 /**
194 Sets the font of the text sample.
195 */
 public void setLabelFont()
 {
 Font f = new Font(facename, fontstyle, fontsize);
 label.setFont(f);

}
}