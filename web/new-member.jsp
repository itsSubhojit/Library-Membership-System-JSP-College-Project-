<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Member Form - Library Membership System</title>
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
                            <span class="menu-icon">🏠</span>
                            Home
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="member-list.jsp">
                            <span class="menu-icon">&#128203;</span>
                            Member List
                        </a>
                    </li>
                    <!-- Form for New Member is active on this page -->
                    <li class="menu-item active">
                        <a href="new-member.jsp">
                            <span class="menu-icon">👤</span>
                            Form for New Member
                        </a>
                    </li>
                </ul>
            </nav>
            
            <div class="sidebar-footer">
                © 2026 Library Membership
            </div>
        </aside>
        
        <!-- Right Division (Display Division / Content Area) -->
        <main class="main-content">
            
            <header class="content-header">
                <h1>Registration</h1>
                <p>Register a new library user to issue library memberships.</p>
            </header>
            
            <!-- Membership Form Card -->
            <section class="form-card">
                <h2 class="form-card-title">
                    Membership Form
                </h2>
                
                <!-- Action set to post to home.jsp since database insertion code is not required -->
                <form action="home.jsp" method="GET">
                    
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" class="form-control" placeholder="Enter full name" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="age">Age</label>
                        <input type="number" id="age" name="age" class="form-control" placeholder="Enter age" min="1" max="120" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Were you a member earlier?</label>
                        <div class="radio-group">
                            <label class="radio-option">
                                <input type="radio" name="previousMember" value="Yes" required>
                                Yes
                            </label>
                            <label class="radio-option">
                                <input type="radio" name="previousMember" value="No" checked>
                                No
                            </label>
                        </div>
                    </div>
                    
                    <div class="form-group form-group-last">
                        <label for="phone">Phone</label>
                        <input type="tel" id="phone" name="phone" class="form-control" placeholder="Enter phone number" pattern="[0-9]{10,12}" required>
                    </div>
                    
                    <div>
                        <button type="submit" class="btn-primary">
                            <span>SUBMIT</span>
                        </button>
                    </div>
                    
                </form>
            </section>
            
        </main>
        
    </div>
</body>
</html>
