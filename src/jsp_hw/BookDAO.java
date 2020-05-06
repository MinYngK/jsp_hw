package jsp_hw;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
	public static List<Book> findAll() throws Exception {
		String sql = "SELECT b.*, d.id"+
				"FROM book b LEFT JOIN category d ON b.id = d.id";
		try (Connection connection = DB.getConnection("book");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {

			List<Book> list = new ArrayList<Book>();
			while (resultSet.next()) {
				Book book = new Book();
				book.setId(resultSet.getInt("id"));
				book.setTitle(resultSet.getString("title"));
				book.setAuthor(resultSet.getString("author"));
				book.setCategoryId(resultSet.getString("categoryId"));
				book.setPrice(resultSet.getInt("price"));
				book.setPublisher(resultSet.getString("publisher"));
				list.add(book);
			}
			return list;
		}
	}
	public static List<Book> findByAuthor(String author) throws Exception {
		String sql = "SELECT b.*, d.id"+
				"FROM book b LEFT JOIN category d ON b.id = d.id" +
				"WHERE b.author LIKE ?";
		try (Connection connection = DB.getConnection("book");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, author + "%");
			try (ResultSet resultSet = statement.executeQuery()) {
				ArrayList<Book> list = new ArrayList<Book>();
				while (resultSet.next()) {
					Book book = new Book();
					book.setId(resultSet.getInt("id"));
					book.setTitle(resultSet.getString("title"));
					book.setAuthor(resultSet.getString("author"));
					book.setCategoryId(resultSet.getString("categoryId"));
					book.setPrice(resultSet.getInt("price"));
					book.setPublisher(resultSet.getString("publisher"));
					list.add(book);
				}
				return list;
			}
		}
	}
}