package repository;

import connectDB.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ImageRepository {

    public List<String> getAllImageNames() {
        List<String> imageNames = new ArrayList<>();
        String sql = "SELECT fileName FROM Images";

        try (Connection conn = ConnectDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                imageNames.add(rs.getString("fileName"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return imageNames;
    }
}
