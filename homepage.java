import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class HomePage {
    public static void main(String[] args) {
        // Create the frame
        JFrame frame = new JFrame("Home Page");
        frame.setSize(400, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(null);

        // Create components
        JLabel welcomeLabel = new JLabel("Welcome to the Home Page");
        welcomeLabel.setBounds(100, 20, 200, 30);
        frame.add(welcomeLabel);

        JButton profileButton = new JButton("Profile");
        profileButton.setBounds(50, 70, 100, 30);
        frame.add(profileButton);

        JButton settingsButton = new JButton("Settings");
        settingsButton.setBounds(200, 70, 100, 30);
        frame.add(settingsButton);

        JButton logoutButton = new JButton("Logout");
        logoutButton.setBounds(125, 120, 100, 30);
        frame.add(logoutButton);

        JLabel messageLabel = new JLabel();
        messageLabel.setBounds(100, 170, 200, 30);
        frame.add(messageLabel);

        // Add action listeners
        profileButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                messageLabel.setText("Profile button clicked");
            }
        });

        settingsButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                messageLabel.setText("Settings button clicked");
            }
        });

        logoutButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                messageLabel.setText("Logout button clicked");
            }
        });

        // Make frame visible
        frame.setVisible(true);
    }
}
