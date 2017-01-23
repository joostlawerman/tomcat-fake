/**
 * Created by joost on 19/01/2017.
 */
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/*
create database tomcat;

use tomcat;

create table users (
	id int primary key auto_increment,
	email varchar(255) unique,
	password varchar(255)
);

create table supporters (
	id int primary key auto_increment,
	user_id int,
	amount int
);
*/

public class Database {

    public static Connection connection;

    public static void boot(String database) {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "");


            PreparedStatement stmt = connection.prepareStatement("use ?");

            stmt.setString(0, database);

            stmt.execute();

            stmt.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void close() {
        try {
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
