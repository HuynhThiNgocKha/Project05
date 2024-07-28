package controller;

import connectDB.ConnectDB;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class ImageUploadServlet extends HttpServlet {
    private static final String IMAGE_DIR = "/path/to/image/directory";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Part filePart = request.getPart("image"); // "image" là tên của trường trong form
        String fileName = filePart.getSubmittedFileName();
        File file = new File(IMAGE_DIR, fileName);
        filePart.write(file.getAbsolutePath());

        // Save file name to database if needed
        try (Connection conn = ConnectDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO Images (fileName) VALUES (?)")) {
            stmt.setString(1, fileName);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("success.jsp"); // Redirect to a success page
    }
}
