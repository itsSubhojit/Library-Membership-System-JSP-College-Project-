<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member List - Library Membership System</title>
    <!-- Link to external stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="dashboard-container">

        <!-- Left Division (Link Division / Sidebar) -->
        <aside class="sidebar">
            <div class="sidebar-header">
                <div class="sidebar-logo">LM</div>
                <div class="sidebar-title">
                    <span>System</span>
                </div>
            </div>

            <nav>
                <ul class="sidebar-menu">
                    <li class="menu-item">
                        <a href="home.jsp">
                            <span class="menu-icon">&#127968;</span>
                            Home
                        </a>
                    </li>
                    <!-- Member List is active on this page -->
                    <li class="menu-item active">
                        <a href="member-list.jsp">
                            <span class="menu-icon">&#128203;</span>
                            Member List
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="new-member.jsp">
                            <span class="menu-icon">&#128100;</span>
                            Form for a New Member
                        </a>
                    </li>
                </ul>
            </nav>

            <div class="sidebar-footer">
                &copy; 2026 Library Membership
            </div>
        </aside>

        <!-- Right Division (Display Division / Content Area) -->
        <main class="main-content">

            <header class="content-header">
                <h1>Member List</h1>
                <p>List of registered library members.</p>
            </header>

            <!-- Member Table Section -->
            <section class="table-container">
                <table class="member-table">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Name</th>
                            <th>Validity upto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            /*
                               JSP JDBC Program — connects to MySQL 'members' database,
                               reads memberlist table and displays records.
                               As required by assignment BCSL-057(Set-IV).
                            */
                            Connection conn = null;
                            Statement stmt = null;
                            ResultSet rs   = null;

                            try {
                                // Step 1: Load MySQL JDBC Driver
                                Class.forName("com.mysql.cj.jdbc.Driver");

                                // Step 2: Connect to the 'members' database
                                conn = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/members" +
                                    "?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
                                    "root", "");

                                // Step 3: Create a statement and execute the query
                                stmt = conn.createStatement();
                                rs   = stmt.executeQuery(
                                    "SELECT id, name, validity_upto FROM memberlist ORDER BY id ASC");

                                // Step 4: Format dates (e.g. "31 Dec 2023")
                                SimpleDateFormat sdf = new SimpleDateFormat("dd MMM yyyy");

                                // Step 5: Loop through ResultSet and output table rows
                                while (rs.next()) {
                                    java.sql.Date d = rs.getDate("validity_upto");
                                    String validity  = (d != null) ? sdf.format(d) : "";
                        %>
                        <tr>
                            <td><span class="badge-id"><%= rs.getString("id") %></span></td>
                            <td><span class="badge-name"><%= rs.getString("name") %></span></td>
                            <td><span class="badge-date"><%= validity %></span></td>
                        </tr>
                        <%
                                }

                            } catch (ClassNotFoundException e) {
                        %>
                        <tr>
                            <td colspan="3">
                                <div class="empty-state">
                                    <div class="empty-state-icon">&#9888;</div>
                                    <p>JDBC Driver not found. Please add MySQL Connector/J to project libraries.</p>
                                </div>
                            </td>
                        </tr>
                        <%
                            } catch (SQLException e) {
                        %>
                        <tr>
                            <td colspan="3">
                                <div class="empty-state">
                                    <div class="empty-state-icon">&#9888;</div>
                                    <p>Database error: <%= e.getMessage() %></p>
                                    <p style="font-size:0.85rem;margin-top:0.4rem;">
                                        Ensure MySQL is running and the 'members' database exists.
                                    </p>
                                </div>
                            </td>
                        </tr>
                        <%
                            } finally {
                                // Step 6: Close resources
                                try { if (rs   != null) rs.close();   } catch (Exception ex) {}
                                try { if (stmt != null) stmt.close(); } catch (Exception ex) {}
                                try { if (conn != null) conn.close(); } catch (Exception ex) {}
                            }
                        %>
                    </tbody>
                </table>
            </section>

        </main>

    </div>
</body>
</html>
