<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Library Membership System</title>
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
                    <!-- Home is active on this page -->
                    <li class="menu-item active">
                        <a href="home.jsp">
                            <span class="menu-icon">&#127968;</span>
                            Home
                        </a>
                    </li>
                    <li class="menu-item">
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

            <div class="content-header">
                <h1>Welcome to Library Membership System</h1>
                <p>Manage and verify library membership records easily.</p>
            </div>

            <div class="info-panel">
                <h2 class="info-panel-title">Member's Information</h2>
                <p class="info-panel-text">
                    You may use this web application to check, if you are still a
                    member of this library. If not, you may download the membership form.
                </p>
                <a href="new-member.jsp" class="btn-primary" style="text-decoration: none; margin-top: 1.5rem;">Download Membership Form</a>
            </div>

        </main>

    </div>
</body>
</html>
