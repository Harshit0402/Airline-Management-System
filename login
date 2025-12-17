package org.example;

import javax.swing.*;
import java.awt.*;

public class LoginGUI {

    public LoginGUI() {
        JFrame frame = new JFrame("Airline Management Login");
        frame.setSize(350, 220);
        frame.setLayout(new GridLayout(3, 2, 10, 10));
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JTextField userField = new JTextField();
        JPasswordField passField = new JPasswordField();

        frame.add(new JLabel("Username:"));
        frame.add(userField);
        frame.add(new JLabel("Password:"));
        frame.add(passField);

        JButton loginBtn = new JButton("Login");
        frame.add(new JLabel());
        frame.add(loginBtn);

        loginBtn.addActionListener(e -> {
            String u = userField.getText();
            String p = new String(passField.getPassword());

            if (u.equals("Admin") && p.equals("admin")) {
                frame.dispose();
                new AdminDashboard();
            } else if (u.equals("Customer") && p.equals("Harshit4204#")) {
                frame.dispose();
                new CustomerDashboard();
            } else {
                JOptionPane.showMessageDialog(frame, "Invalid credentials");
            }
        });

        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}
