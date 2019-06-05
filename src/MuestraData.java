import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class MuestraData {

	public static JFrame frame;
//	public static boolean sesionIniciada=false;
//	public static JLabel lblData;
	public static String data;
//	public static JTextField textField_1;
//	public static JButton btnOk;

	/**
	 * Create the application.
	 */
	public MuestraData() {
		
	}

	/**
	 * Initialize the contents of the frame.
	 * @wbp.parser.entryPoint
	 */
	public static void initialize() {
		frame = new JFrame();
		frame.setBounds(200, 200, 450, 200);
		frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JLabel lblData = new JLabel("Esta consultando a :" +data);
		lblData.setBounds(80, 46, 500, 14);
		frame.getContentPane().add(lblData);
		
			
		
		frame.setVisible(true);
	}
	
	
}
