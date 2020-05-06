package jsp_hw;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import jsp_hw.DB;

public class BookDAO {
	public static List<Book> findAll() throws Exception {
		 String sql = "SELECT s.*, d.foreignkey  " +
                 "FROM student s LEFT JOIN foreignkey d ON s.foreignkeyId = d.id";
    try (Connection connection = DB.getConnection("student1");
         PreparedStatement statement = connection.prepareStatement(sql);
         ResultSet resultSet = statement.executeQuery()) {
        ArrayList<Student> list = new ArrayList<Student>();
        while (resultSet.next()) {
            Student student = new Student();
            student.setId(resultSet.getInt("id"));
            student.setStudentNumber(resultSet.getString("studentNumber"));
            student.setName(resultSet.getString("name"));
            student.setDepartmentId(resultSet.getInt("departmentId"));
            student.setYear(resultSet.getInt("year"));
            student.setDepartmentName(resultSet.getString("departmentName"));
            list.add(student);
        }
        return list;
    }
}
	}
}
