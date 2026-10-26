# PRJ301 — JSP and JSTL user management

Coursework web app in Java Servlet, JSP and JSTL: login with a captcha, role-based pages, user management and a small tea shop with a session cart.

**Status:** Coursework (PRJ301), FPT University, 2023 — archived.

## My role

Sole developer. Every commit in this repository is mine.

## Stack

Java 8, Servlet and JSP, JSTL, MVC with a front controller (`MainController`), JDBC with SQL Server, Bootstrap 5, Apache Tomcat, NetBeans (Ant).

## Features

- Login with a text captcha; an authentication filter guards every page.
- Two roles: admin (`AD`) and user (`US`), each with its own page.
- Admin: search users by name, update and delete users; a sign-up form creates users with field validation.
- Shop page: add tea products to a session cart, view the cart, change quantities, remove items.

## How to run

1. Open the project in NetBeans with Apache Tomcat and JDK 8 or newer.
2. Add the Microsoft SQL Server JDBC driver (`sqljdbc4.jar` or a newer `mssql-jdbc` jar) to the project libraries. The jar path in `nbproject/project.properties` is a local path from 2023 and will not exist on your machine.
3. Create a SQL Server database `UserManagement` with a table `tblUsers(userID, fullName, password, roleID)`. No database script is included.
4. Set your database login in `web/META-INF/context.xml` (the `DBCon` data source) and `src/java/sample/utils/DBUtils.java`.
5. Run the project. The start page is `MainController`.

## Database credentials

The database password in this repository is a placeholder (`REPLACE_WITH_DB_PASSWORD`); the username is the SQL Server default `sa`. Replace them with your own local values and do not commit real credentials.

## Known limitations

- Passwords are stored and compared in plain text.
- The captcha is generated in the browser, so it does not stop automated logins.
- No database script and no automated tests.
