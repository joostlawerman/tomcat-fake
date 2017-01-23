import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.Writer;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static java.lang.Integer.parseUnsignedInt;

public class MagicController extends HttpServlet {

    public void init() {
        Database.boot("tomcat");
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        int amount = parseUnsignedInt(request.getParameter("amount"));

        Writer writer = response.getWriter();

        try {
            PreparedStatement createUser = Database.connection.prepareStatement("INSERT INTO table (email) VALUES (?) ON DUPLICATE KEY UPDATE email=email ");

            createUser.execute();

            if (createUser.getResultSet().rowInserted()) {
                PreparedStatement getUserId = Database.connection.prepareStatement("SELECT id FROM users WHERE email=?");

                getUserId.execute();

                getUserId.getResultSet().getArray(0);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        writer.write("<center><h1>Thank you!</h1></center>");


    }

    public void destroy() {
        Database.close();
    }

}
