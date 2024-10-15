import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class LoginApp {
    private static final String USERNAME = "user";
    private static final String PASSWORD = "password";

    public static void main(String[] args) {
        // Create the frame
        JFrame frame = new JFrame("Login");
        frame.setSize(300, 150);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(null);

        // Create components
        JLabel userLabel = new JLabel("Username:");
        userLabel.setBounds(10, 10, 80, 25);
        frame.add(userLabel);

        JTextField userText = new JTextField();
        userText.setBounds(100, 10, 160, 25);
        frame.add(userText);

        JLabel passwordLabel = new JLabel("Password:");
        passwordLabel.setBounds(10, 40, 80, 25);
        frame.add(passwordLabel);

        JPasswordField passwordText = new JPasswordField();
        passwordText.setBounds(100, 40, 160, 25);
        frame.add(passwordText);

        JButton loginButton = new JButton("Login");
        loginButton.setBounds(10, 80, 80, 25);
        frame.add(loginButton);

        JLabel messageLabel = new JLabel();
        messageLabel.setBounds(100, 80, 200, 25);
        frame.add(messageLabel);

        // Add action listener
        loginButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String username = userText.getText();
                String password = new String(passwordText.getPassword());

                if (USERNAME.equals(username) && PASSWORD.equals(password)) {
                    messageLabel.setText("Login successful!");
                    messageLabel.setForeground(java.awt.Color.GREEN);
                } else {
                    messageLabel.setText("Invalid username or password.");
                    messageLabel.setForeground(java.awt.Color.RED);
                }
            }
        });

        // Make frame visible
        frame.setVisible(true);
    }
}
