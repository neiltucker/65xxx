                                                     INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22

                                                             65317A
                                    3-day course ? 10 modules ? beginner level

Contents

Module 1: Querying Data with SQL Server Management Studio 22

Lesson 1: Introduction to SQL Server Management Studio 22 Lesson 2: Installing and Launching SSMS 22 Lesson 3: Connecting to SQL Server Instances Lesson 4: Navigating Object Explorer Lesson 5: Query Window Features and Result Management Lesson 6: GitHub Copilot Integration for SQL Development Lesson 7: Saving and Organizing Query Scripts Lab: Connecting to SQL Server 2025 and Executing Your First Queries Answer Key Module Summary  Module 1: Querying Data with SQL Server Management Studio 22 1-1

Learning Objectives

After completing this module, you will be able to: Connect to SQL Server 2025 (version 17) instances using SSMS 22 Navigate Object Explorer and query execution windows Execute Transact-SQL queries and view results Use GitHub Copilot for query assistance and code generation

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                   65317A - Querying and Analyzing SQL Server 2025

1-2 Module 1: Querying Data with SQL Server Management Studio 22

       Module Overview
     This foundational module introduces learners to SQL Server Management Studio 22 as their
     primary tool for database interaction and query development. Students will progress from
     installation through basic connectivity and query execution, culminating in hands-on practice
     with SQL Server 2025. The module emphasizes SSMS navigation, query management, and
     introduces modern AI-assisted development with GitHub Copilot integration. Total estimated
     delivery time: 90-120 minutes.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-3

Lesson 1: Introduction to SQL Server Management Studio 22

       Estimated Time: 10 minutes

Welcome to SQL Server Management Studio 22

SQL Server Management Studio 22 (SSMS 22) is the premier integrated environment for managing and querying SQL Server databases. As Microsoft’s flagship database administration tool, SSMS 22 provides a comprehensive interface that combines powerful query editing capabilities with robust database management features. What is SSMS 22? SSMS 22 represents the latest evolution of Microsoft’s database management platform, designed specifically to work seamlessly with SQL Server 2025 (version 17). This free tool serves as your primary workspace for writing queries, managing database objects, analyzing performance, and administering SQL Server instances across your organization. Key Features of SSMS 22

    Modern Query Editor: IntelliSense-powered code completion and syntax highlighting make
    writing Transact-SQL queries faster and more accurate
    GitHub Copilot Integration: AI-powered query assistance helps generate SQL code based on
    natural language descriptions and code patterns
    Object Explorer: Hierarchical tree view of all database objects including tables, views, stored
    procedures, and security settings
    Results Management: Flexible result viewing with grid, text, and file output options
    Script Generation: Automatic script creation for database objects and operations
    Performance Tools: Built-in execution plan analysis and query tuning capabilities

Why SSMS 22 Matters Whether you’re a database administrator, developer, or data analyst, SSMS 22 serves as your command center for all SQL Server interactions. The tool streamlines complex database operations

                                                         65317A - Querying and Analyzing SQL Server 2025

1-4 Module 1: Querying Data with SQL Server Management Studio 22

into intuitive workflows while providing advanced features for power users. With SSMS 22’s enhanced support for SQL Server 2025, you gain access to the latest database innovations while maintaining compatibility with earlier SQL Server versions. Throughout this module, you’ll discover how SSMS 22 transforms database interaction from complex command-line operations into an accessible, visual experience.

    Modern workspace showing SSMS 22 interface with Object Explorer, query editor, and results pane displayed on dual
                                              monitors in a professional development environment

     Key Takeaways
          SSMS 22 is a free, comprehensive tool for SQL Server database management and querying
          The interface combines visual database navigation with powerful query editing
          GitHub Copilot integration provides AI-assisted query development
          SSMS 22 supports SQL Server 2025 (version 17) and earlier versions

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-5

Instructor Notes Talking Points:

    SSMS 22 is the primary IDE for SQL Server development and administration
    Key differences between SSMS 22 and earlier versions (enhanced GitHub Copilot support,
    improved IntelliSense)
    SSMS 22 supports both SQL Server 2019 and newer versions including SQL Server 2025
    The tool ecosystem includes Query Editor, Object Explorer, and integrated debugging
    capabilities
    Version compatibility: SSMS 22 is the recommended version for SQL Server 2025 (version 17)

Demo Suggestion: Open SSMS 22 and highlight the main interface components (menu bar, toolbar, Object Explorer pane, query editor area, Results pane). Show the Help menu and point out the ‘About’ dialog to verify version 22.x installation. Common Student Questions: Q: Why do I need SSMS if I can use other tools like Azure Data Studio? A: SSMS 22 is the native IDE for SQL Server and includes enterprise features like SQL Server Agent management, replication setup, and advanced debugging. While other tools exist, SSMS is the industry standard for SQL Server-specific tasks. Q: Can I use SSMS 22 with older SQL Server versions? A: Yes, SSMS 22 is backward compatible with SQL Server 2012 and later. However, some features specific to newer SQL Server versions (like SQL Server 2025 features) may not be available when connecting to older instances. Q: Is there a cost associated with SSMS 22? A: No, SSMS is a free tool provided by Microsoft. It is included with SQL Server installations and is also available as a standalone download.

                                                   65317A - Querying and Analyzing SQL Server 2025

1-6 Module 1: Querying Data with SQL Server Management Studio 22

Lesson 2: Installing and Launching SSMS 22

       Estimated Time: 15 minutes

Getting Started with SSMS 22

Before you can harness the power of SQL Server Management Studio, you need to install and configure the application on your workstation. The installation process is straightforward, but understanding the options and requirements ensures a smooth setup. System Requirements SSMS 22 runs on Windows 10 (version 1607 or later) and Windows 11, as well as Windows Server 2016 and newer versions. The application requires .NET Framework 4.7.2 or later, which is typically included with modern Windows installations. You’ll need at least 2 GB of available hard disk space, though 4 GB or more is recommended for optimal performance. Installation Process Download SSMS 22 from the official Microsoft SQL Server downloads page. The installer is a standalone package that doesn’t require SQL Server to be installed on your local machine–a significant advantage for developers and analysts who connect to remote database servers. Run the installer with administrative privileges. The setup wizard guides you through language selection and installation location. Unlike SQL Server itself, SSMS installation is lightweight and typically completes in just a few minutes. The installer automatically configures file associations for SQL query files (.sql) and registers SSMS as the default handler. First Launch After installation, launch SSMS from the Windows Start menu. The first startup may take slightly longer as the application initializes your user profile and prepares the workspace. You’ll be greeted with the Connect to Server dialog–don’t worry if you’re not ready to connect immediately; you can dismiss this dialog and explore the interface first. Configuration Considerations On first launch, SSMS uses default settings optimized for general use. You can customize the environment later through Tools \> Options, adjusting themes, fonts, query execution behavior, and

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-7

keyboard shortcuts to match your preferences. The startup dialog can be configured to appear automatically, prompt for connection details, or be suppressed entirely through the Tools \> Options \> Environment \> Startup settings.

Step-by-step installation journey showing download, installation wizard screens, and successful first launch of SSMS 22

     Key Takeaways
         SSMS 22 requires Windows 10 (1607+), Windows 11, or Windows Server 2016+
         Installation is standalone and doesn't require local SQL Server installation
         First launch presents a Connect to Server dialog that can be dismissed
         Configuration options allow customization of themes, behavior, and shortcuts

                                                         65317A - Querying and Analyzing SQL Server 2025

1-8 Module 1: Querying Data with SQL Server Management Studio 22

       Instructor Notes
     Talking Points:

          SSMS 22 installation requirements: Windows 10/11 or Windows Server 2016 or later
          .NET Framework 4.7.2 is a prerequisite; installer handles dependency checks
          Download from official Microsoft sources (microsoft.com/sql-server-downloads)
          Installation is straightforward with minimal configuration; accept defaults for first-time users
          Post-installation: verify installation by launching from Start menu or checking Program Files
          First launch may take longer due to initialization and feature discovery
     Demo Suggestion: If time permits, demonstrate the installation wizard showing the Download
     Center location, prerequisites check, installation progress, and final completion screen.
     Alternatively, walk through the launch process showing where to find SSMS in Windows Start
     menu and what to expect on first load.
     Common Student Questions:
     Q: My computer doesn't meet the system requirements--what should I do?
     A: Check Microsoft's official system requirements on the SQL Server download page. For older
     computers, consider using Azure Data Studio (lighter weight) or SQL Server Express with basic
     Management Tools. Alternatively, use cloud-based SQL Server instances where you don't need
     local installation.
     Q: The installation keeps failing. What's the most common cause?
     A: The most common issue is missing .NET Framework prerequisites. Run Windows Update first,
     then download the standalone .NET Framework installer before attempting SSMS installation
     again.
     Q: Do I need to uninstall older SSMS versions before installing SSMS 22?
     A: No, multiple SSMS versions can coexist on the same machine. However, for learning purposes,
     having only SSMS 22 installed prevents confusion about version differences.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-9

Lesson 3: Connecting to SQL Server Instances

       Estimated Time: 20 minutes

Establishing Your First Database Connection

Connecting to a SQL Server instance is the gateway to all database operations in SSMS. Understanding connection parameters and authentication methods is essential for successful database access. The Connect to Server Dialog When you launch SSMS or select File \> Connect Object Explorer, the Connect to Server dialog appears. This dialog contains several critical fields:

    Server type: Typically "Database Engine" for standard SQL Server connections
    Server name: The name or network address of the SQL Server instance
    Authentication: The security method used to verify your identity
    Login credentials: Username and password (for SQL Server Authentication)

Server Naming Conventions For local SQL Server instances installed on your workstation, you can use several shorthand notations: localhost or 127.0.0.1 for the default instance localhostfor named instances . (single period) as shorthand for localhost (local) as an alternative localhost notation For remote servers, use the server’s network name, fully qualified domain name (FQDN), or IP address. Port numbers can be appended using comma notation: servername,1433 . Authentication Methods SSMS supports two primary authentication modes:

                                                         65317A - Querying and Analyzing SQL Server 2025

1-10 Module 1: Querying Data with SQL Server Management Studio 22

Windows Authentication uses your current Windows login credentials to authenticate against SQL Server. This method leverages Active Directory integration and is generally more secure as credentials aren’t transmitted over the network. Simply select Windows Authentication and your current account details appear automatically. SQL Server Authentication uses a dedicated SQL Server login account with username and password. This method is useful when connecting from non-domain systems or when specific SQL Server accounts are required. Enter the username (such as ‘sa’ for system administrator, though this is discouraged for security reasons) and the corresponding password. Testing Your Connection Before clicking Connect, you can click the Options button to set connection properties such as the default database, connection timeout values, and network protocol preferences. Once you click Connect, SSMS attempts to establish the connection. A successful connection populates the Object Explorer tree with the server and its databases.

Network connection visualization showing a laptop connecting to both local and remote SQL Server instances through different authentication pathways

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-11

Key Takeaways Server name specifies the target SQL Server instance (local or remote) Windows Authentication uses your Windows credentials; SQL Server Authentication requires a database login Localhost can be specified as ‘localhost’, ‘.’, ‘(local)’, or ‘127.0.0.1’ Connection options allow specification of default database and timeout settings

                                                   65317A - Querying and Analyzing SQL Server 2025

1-12 Module 1: Querying Data with SQL Server Management Studio 22

       Instructor Notes
     Talking Points:

          Connection methods: Windows Authentication (trusted connection) vs. SQL Server
          Authentication (username/password)
          Windows Authentication is recommended for corporate environments; SQL Server
          Authentication for development and testing
          Connection string anatomy: Server name, authentication type, database selection
          Server naming conventions: localhost, (local), machine name, IP address, or fully qualified
          domain name
          Port configuration: default 1433; custom ports require special syntax (servername,port)
          Connection timeouts and testing connectivity before proceeding
          Trusted/untrusted connections and their security implications
          SQL Server 2025 (version 17) specific connection considerations
     Demo Suggestion: Open the Connect to Server dialog and demonstrate: 1) entering localhost or
     (local) for local instances, 2) selecting Windows Authentication, 3) clicking 'Options' to show
     additional connection settings, 4) clicking 'Connect' to establish connection. Show what a
     successful connection looks like in Object Explorer. If available, demonstrate a second connection
     using SQL Server Authentication to show the difference.
     Common Student Questions:
     Q: What's the difference between 'localhost' and '(local)'?
     A: Both refer to the default instance on the local machine. '(local)' is SQL Server-specific syntax
     and is more commonly used. 'localhost' is a network name that resolves to 127.0.0.1. Both work,
     but '(local)' is preferred in SQL Server contexts.
     Q: I'm getting 'Cannot connect to server' error. What should I check?
     A: Verify: 1) SQL Server service is running (Windows Services), 2) correct server name entered, 3)
     correct authentication type selected, 4) firewall isn't blocking port 1433, 5) SQL Server is
     configured for remote connections if accessing another machine.
     Q: Should I use Windows or SQL Server Authentication?
     A: For learning and development: SQL Server Authentication is often easier. For production:
     Windows Authentication is more secure. For this course, use whichever credential type you have
     available for your SQL Server 2025 instance.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-13

Q: Why does my connection keep timing out? A: Check network connectivity, SQL Server service status, firewall rules, and increase the connection timeout value in Options \> Connection Properties if connecting to a remote or slow server.

                                                   65317A - Querying and Analyzing SQL Server 2025

1-14 Module 1: Querying Data with SQL Server Management Studio 22

Lesson 4: Navigating Object Explorer

       Estimated Time: 15 minutes

Exploring Your Database Landscape

Object Explorer serves as your primary navigation tool in SSMS, providing a hierarchical view of all SQL Server objects. Mastering Object Explorer navigation dramatically improves your efficiency when working with databases. Understanding the Object Hierarchy Object Explorer organizes SQL Server components in a logical tree structure. At the root sits the server instance, below which you’ll find major categories:

    Databases: Both system databases (master, model, msdb, tempdb) and user databases
    Security: Logins, server roles, and credentials
    Server Objects: Backup devices, endpoints, and linked servers
    Replication: Replication configuration and publications
    Management: Maintenance plans, data collection, and extended events

Expanding the Databases Node Click the expansion arrow next to Databases to reveal all databases on the server. Each database node expands further to show: Database Diagrams: Visual representations of table relationships Tables: The fundamental data storage objects Views: Saved SELECT queries that act as virtual tables Synonyms: Aliases for database objects Programmability: Stored procedures, functions, triggers, and assemblies Security: Database users, roles, and schemas Storage: Filegroups and files Working with Tables

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-15

Expanding the Tables node reveals all tables in the database. Each table can be further expanded to show columns, keys, constraints, indexes, and triggers. Right-click any table to access common operations:

    Select Top 1000 Rows: Quickly view table data
    Edit Top 200 Rows: Modify data directly in a grid
    Design: Open the visual table designer
    Script Table as: Generate CREATE, ALTER, or DROP scripts

Object Explorer Toolbar The toolbar above Object Explorer provides quick access to frequently used operations: Connect: Add connections to additional servers Disconnect: Close the current server connection Refresh: Update the object tree to reflect recent changes Object Explorer Details: Open a detailed list view of objects Filter: Apply filtering criteria to reduce visible objects Search and Filter Capabilities For large databases with hundreds or thousands of objects, SSMS 22 offers enhanced search functionality. Right-click on any container node (like Tables or Stored Procedures) and select Filter \> Filter Settings to establish name patterns, creation dates, or schema filters.

      Visual representation of Object Explorer hierarchy shown as an organizational tree with expandable branches for
                                                          databases, tables, and other objects

                                                         65317A - Querying and Analyzing SQL Server 2025

1-16 Module 1: Querying Data with SQL Server Management Studio 22

     Key Takeaways
          Object Explorer organizes SQL Server components in a hierarchical tree structure
          Databases contain tables, views, programmability objects, and security settings
          Right-click context menus provide quick access to common operations
          Filter and search capabilities help navigate large databases efficiently

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-17

Instructor Notes Talking Points:

    Object Explorer is the hierarchical navigation pane for databases and their objects
    Top-level nodes: Databases, Security, Server Objects, Replication, Management, SQL Server
    Agent
    Database node expansion reveals: Tables, Views, Stored Procedures, Functions, Synonyms,
    Types, Assemblies
    Table expansion shows columns with data types and properties
    Right-click context menus provide object-specific actions
    Filter objects to reduce clutter in large databases
    Expand/collapse nodes to manage interface complexity
    Search functionality (Ctrl+F in Object Explorer) for finding objects by name
    System vs. user databases distinction

Demo Suggestion: Starting from the connection, expand: Databases select a user database (or system database like tempdb) Tables select a specific table to show column details. Right-click on a table and show context menu options (Select Top 1000 Rows, New Query, Rename, Properties). Demonstrate the filter feature to search for specific object names. Show how expanding nodes reveals object hierarchy. Common Student Questions: Q: What’s the difference between system databases and user databases? A: System databases (master, tempdb, msdb, model) are created by SQL Server for internal operations. User databases contain application data. For learning, focus on user databases; avoid modifying system database structures. Q: The Object Explorer seems cluttered with many objects. How do I find what I need? A: Use the filter feature in Object Explorer (funnel icon) to show only specific object types. Alternatively, use Ctrl+F to search by name. You can also expand only the nodes you’re currently working with. Q: Why can’t I expand certain nodes? A: Some nodes expand only when they contain objects. For example, if a table has no indexes, the Indexes node may not expand. Also, permissions may restrict what you can view in certain nodes.

                                                   65317A - Querying and Analyzing SQL Server 2025

1-18 Module 1: Querying Data with SQL Server Management Studio 22

     Q: How do I refresh Object Explorer to see new objects I just created?
     A: Right-click the connection name or specific node and select 'Refresh' (F5), or press F5 while
     focused on Object Explorer.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-19

Lesson 5: Query Window Features and Result Management

       Estimated Time: 15 minutes

Mastering the Query Editor

The query editor window is where SQL queries come to life. Understanding its features and result management capabilities transforms you from a casual user into an efficient database professional. Opening a New Query Window Create a new query window by clicking the New Query button on the toolbar, pressing Ctrl+N, or selecting File \> New \> Query with Current Connection. Each query window maintains its own connection context, allowing you to work with multiple databases simultaneously. Query Editor Features The editor provides numerous productivity enhancements: IntelliSense offers real-time code completion as you type. Begin typing “SELECT” and IntelliSense suggests keywords, table names, and column names from your current database context. Press Tab or Enter to accept suggestions, dramatically reducing typing and syntax errors. Syntax Highlighting color-codes different SQL elements: keywords appear in blue, strings in red, comments in green, and operators in gray. This visual differentiation makes queries easier to read and debug. Line Numbers can be enabled through Tools \> Options \> Text Editor \> All Languages \> General \> Line numbers. This feature is invaluable when debugging errors that reference specific line numbers. Code Snippets provide templates for common query patterns. Type “ssf” and press Tab twice to insert a snippet for creating a scalar function. SSMS includes dozens of built-in snippets, and you can create custom ones. Executing Queries Execute the entire query window by pressing F5 or clicking the Execute button. To run only part of a query, highlight the desired SQL statements and press F5–SSMS executes only the selected text.

                                                         65317A - Querying and Analyzing SQL Server 2025

1-20 Module 1: Querying Data with SQL Server Management Studio 22

The status bar displays execution details: number of rows affected, execution time, and the current server/database context. Result Set Options Results appear in one of three formats, selectable from the Query menu: Results to Grid displays data in a scrollable table format, ideal for viewing and copying data. You can right-click on the grid to copy results, save to file, or copy with headers. Results to Text outputs data in plain text format, useful for console-style output or copying to plain text documents. Results to File prompts for a file location and writes results directly to a .rpt file, perfect for large result sets that would overwhelm the grid display. Messages and Execution Plans Below the results grid, the Messages tab shows SQL Server feedback: row counts, error messages, and PRINT statement output. The Execution Plan tab reveals how SQL Server processed your query, essential for performance tuning.

Query editor workspace showing IntelliSense suggestions, syntax highlighting, and result grid with multiple tabs for results and messages

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-21

Key Takeaways Query windows maintain independent connection contexts for multi-database work IntelliSense, syntax highlighting, and code snippets accelerate query development Execute entire queries with F5 or selected portions by highlighting first Results can be displayed as grid, text, or file depending on your needs

                                                   65317A - Querying and Analyzing SQL Server 2025

1-22 Module 1: Querying Data with SQL Server Management Studio 22

       Instructor Notes
     Talking Points:

          New Query button creates a new editor window in the current connection context
          Query Editor includes syntax highlighting, IntelliSense (Ctrl+Space), and code completion
          Multiple query tabs allow concurrent work on different scripts
          Result tab vs. Messages tab: Results shows data sets; Messages shows execution info and
          errors
          Results can be displayed as Grid (tabular), Text (formatted text), or saved to File
          Grid results allow sorting, filtering, and copying
          Execution time and row count statistics in the Messages tab
          Query execution shortcuts: Ctrl+E or F5 to execute entire script; Ctrl+Shift+E to execute
          selected text
          Execution plan icon (Ctrl+L) shows query performance details
     Demo Suggestion: Create a new query window and type a simple SELECT statement (e.g., SELECT
     * FROM sys.tables LIMIT 10). Show IntelliSense by typing 'SE' and allowing autocomplete. Execute
     the query and show: Results tab with data in grid format, Messages tab with execution statistics.
     Change results display format to Text and back to Grid. Copy a cell, show sorting by clicking
     column headers. Demonstrate clearing results and executing multiple times. If time allows, show
     Ctrl+L to view execution plan.
     Common Student Questions:
     Q: The results are showing in Text format and hard to read. How do I switch to Grid view?
     A: Look for the 'Results to Grid' button in the Query toolbar (looks like a grid), or go to Tools >
     Options > Query Results > SQL Server > Results to Grid, then re-execute the query.
     Q: Why does my query run very slowly? How do I optimize it?
     A: Use the execution plan (Ctrl+L) to identify bottlenecks. Look for table scans, missing indexes, or
     inefficient joins. For now, ensure your SELECT statements are appropriately filtered with WHERE
     clauses.
     Q: I accidentally cleared my results. Can I get them back?
     A: Results are not stored permanently once cleared. You must re-execute the query to regenerate
     the results. Save important result sets to file if you need them later.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-23

Q: Can I save query results to a file? A: Yes, right-click the Results grid and select ‘Save Results As’, or use Query \> Save Results As. Choose CSV, tab-separated, or other formats as needed.

                                                   65317A - Querying and Analyzing SQL Server 2025

1-24 Module 1: Querying Data with SQL Server Management Studio 22

Lesson 6: GitHub Copilot Integration for SQL Development

       Estimated Time: 15 minutes

AI-Powered Query Assistance

SSMS 22 introduces native GitHub Copilot integration, bringing AI-assisted development directly into your SQL workflow. This powerful feature accelerates query writing and helps you learn SQL patterns through intelligent suggestions. What is GitHub Copilot? GitHub Copilot is an AI pair programmer that analyzes your code context and natural language comments to suggest complete lines or blocks of SQL code. Trained on billions of lines of public code, Copilot understands SQL patterns, best practices, and common query structures. Enabling Copilot in SSMS 22 Before using Copilot, you need an active GitHub Copilot subscription (available for individuals or through GitHub Enterprise). In SSMS, navigate to Tools \> Options \> GitHub Copilot and sign in with your GitHub account. Once authenticated, Copilot becomes available in all query windows. How Copilot Assists Your SQL Development As you type SQL queries, Copilot analyzes your context–database schema, existing code, and comments–to provide suggestions. These appear as gray, ghost text that you can accept by pressing Tab or dismiss by continuing to type. Comment-Driven Development One of Copilot’s most powerful features is generating code from natural language comments. Type a comment describing what you want:

– Get all customers who placed orders in the last 30 days

Press Enter, and Copilot suggests a complete query that likely includes the appropriate joins, date filtering, and SELECT clause. While the suggestion may need refinement, it provides an excellent

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-25

starting point. Pattern Completion Copilot recognizes SQL patterns and completes them intelligently. Start typing a SELECT statement with specific columns from one table, and Copilot may suggest the logical JOIN clause needed to include related data from another table. Learning Opportunity For beginners, Copilot serves as an interactive learning tool. Observe the patterns it suggests, study the syntax it uses, and understand why certain approaches are recommended. Over time, you’ll internalize these patterns and write queries more independently. Best Practices with Copilot Always review Copilot suggestions before accepting them. The AI is powerful but not infallible–it may suggest syntactically correct code that doesn’t perfectly match your business logic or database structure. Use Copilot as a productivity accelerator and learning aid, not as a replacement for understanding SQL fundamentals. Copilot works best when you provide clear context through descriptive comments, meaningful variable names, and well-structured existing code.

       Split-screen comparison showing a developer writing a natural language comment on the left and GitHub Copilot
                                                  generating corresponding SQL code on the right

                                                         65317A - Querying and Analyzing SQL Server 2025

1-26 Module 1: Querying Data with SQL Server Management Studio 22

     Key Takeaways
          GitHub Copilot provides AI-powered code suggestions directly in SSMS 22
          Natural language comments can generate complete SQL query suggestions
          Copilot learns from context including schema, existing code, and patterns
          Always review and validate Copilot suggestions before execution

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-27

Instructor Notes Talking Points:

    GitHub Copilot in SSMS 22 provides AI-assisted code suggestions for T-SQL queries
    Requires GitHub Copilot subscription (linked GitHub account in SSMS 22)
    Access Copilot via Ctrl+I (inline chat) or right-click context menu 'Copilot'
    Copilot can generate queries, explain existing code, and suggest optimizations
    Type natural language descriptions and Copilot generates corresponding T-SQL
    Example: 'Find all customers from California' generates appropriate SELECT statement
    Copilot is a development aid, not a replacement for SQL knowledge
    Always review and test AI-generated queries before executing on production data
    Copilot understands context from database schema and previous queries in the same session

Demo Suggestion: If GitHub Copilot is enabled: Open a query window, type a comment like ‘– Find all tables in the current database’, then press Ctrl+I to see Copilot suggestions. Accept a suggestion to see the generated code. Alternatively, right-click and show the Copilot context menu. If not available, show a screenshot or screen recording of Copilot in action. Explain that while Copilot is helpful, it should be used to accelerate development, not replace understanding of T-SQL fundamentals. Common Student Questions: Q: Do I need to pay for GitHub Copilot in SSMS 22? A: Yes, GitHub Copilot requires an active subscription (approximately \$10/month or \$100/year for individual developers). Some organizations provide it as part of GitHub Enterprise subscriptions. Q: Can I trust the SQL that Copilot generates? A: Copilot is a helpful tool but can generate syntactically correct but semantically incorrect SQL. Always review generated code, test it on non-production data first, and ensure it aligns with your business logic. Q: What if I don’t have GitHub Copilot? Is the module still relevant? A: Absolutely. Copilot is presented as a modern enhancement to SQL development but is optional. All core learning objectives can be met without it. The module focuses on foundational SSMS skills that remain essential. Q: How does Copilot know about my database schema? A: Copilot uses the context of your current SSMS session, including visible Object Explorer

                                                   65317A - Querying and Analyzing SQL Server 2025

1-28 Module 1: Querying Data with SQL Server Management Studio 22

     contents and previously executed queries, to understand your schema and provide relevant
     suggestions.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-29

Lesson 7: Saving and Organizing Query Scripts

       Estimated Time: 10 minutes

Building Your Query Library

As you develop SQL expertise, you’ll accumulate a valuable library of queries, scripts, and database operations. Proper organization and saving practices ensure you can find and reuse this work efficiently. Saving Your First Query After writing a query you’ll want to reuse, click File \> Save or press Ctrl+S. SSMS prompts you to choose a location and filename. Query files use the .sql extension by default, and Windows associates these files with SSMS for easy opening. Choose descriptive filenames that indicate the query’s purpose: “CustomerOrderReport.sql” or “MonthlyRevenueAnalysis.sql” rather than generic names like “Query1.sql”. Folder Organization Strategies Create a dedicated folder structure for your SQL scripts. Consider organizing by:

    Project or Application: Separate folders for each database or application you support
    Function: Subfolders for reports, maintenance scripts, data modifications, and analysis queries
    Frequency: Daily, weekly, monthly, or ad-hoc queries in separate locations
    Database: Folders named after specific databases if you work with multiple systems

For example:

C:\
AdventureWorks\
Reports\
Maintenance\
Analysis\
HumanResources\
Templates\

Version Control Integration

                                                         65317A - Querying and Analyzing SQL Server 2025

1-30 Module 1: Querying Data with SQL Server Management Studio 22

For professional environments, consider integrating your query files with version control systems like Git. SSMS 22 supports source control integration through Tools \> Options \> Source Control. This enables tracking changes, collaborating with team members, and maintaining query history. Solution Explorer SSMS includes Solution Explorer (View \> Solution Explorer) for organizing related queries into projects. Create a SQL Server Scripts project, add existing .sql files, and organize them into folders within the project. Solutions (.ssmssln files) remember your project structure and can be shared with colleagues. Query Templates SSMS provides template queries for common operations through View \> Template Explorer. You can also save your frequently used queries as templates. Create a query with parameters marked as \<parameter_name, data_type, default_value\> , save it to your templates folder, and reuse it by specifying parameter values. Opening Saved Queries Open saved queries through File \> Open \> File or by dragging .sql files from Windows Explorer directly into SSMS. Recently used files appear in File \> Recent Files for quick access. Query Snippets for Reusability For frequently used code fragments shorter than full queries, create code snippets through Tools \> Code Snippets Manager. Snippets can include placeholder parameters that you fill in when inserting the snippet into a query window.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-31

Organized filing system visualization showing SQL script files arranged in a hierarchical folder structure with categories for different types of queries

    Key Takeaways
         Save queries with descriptive filenames using the .sql extension
         Organize scripts using logical folder structures based on project, function, or frequency
         Solution Explorer enables project-based organization of related queries
         Code snippets and templates provide reusability for common query patterns

                                                        65317A - Querying and Analyzing SQL Server 2025

1-32 Module 1: Querying Data with SQL Server Management Studio 22

       Instructor Notes
     Talking Points:

          Save queries as .sql files for reusability and version control
          Default save location: user's Documents folder; customize via Tools > Options > Environment
          > General
          Naming conventions: use descriptive names (e.g., 'GetCustomersByRegion.sql' vs. 'Query1.sql')
          Organize scripts into folders by database, functionality, or project
          Recent files list in File menu for quick access
          Source control integration: store .sql files in Git/GitHub/Azure DevOps for collaboration
          Script headers should include purpose, author, date, and modification history
          Use comments (--) liberally for documentation within scripts
          Backup important queries to version control before extensive modifications
     Demo Suggestion: Create a new query, type a simple SELECT statement, then File > Save (Ctrl+S).
     Show the Save As dialog, demonstrate creating a folder structure (e.g., MyQueries > Chapter1),
     and save with a descriptive name. Show Recent Files in File menu. Open the saved file to
     demonstrate reopening. If Git is available, show how to initialize a local repository and commit
     the .sql file (briefly, as this is primarily a SSMS note).
     Common Student Questions:
     Q: Where should I save my query files?
     A: A good practice is to create a dedicated folder structure on your computer or shared drive. For
     example: C:\SQLScripts\[ProjectName]\. This makes finding and backing up scripts easier.
     Q: Should I use version control for my SQL scripts?
     A: Yes, especially for shared work or production scripts. Store .sql files in Git/GitHub/Azure
     DevOps to track changes, enable collaboration, and maintain history. For learning exercises, local
     folders are acceptable.
     Q: What's the best way to document my queries?
     A:

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-33

Lab: Connecting to SQL Server 2025 and Executing Your First Queries

Objective: Connect to a SQL Server 2025 instance using SSMS 22, navigate the Object Explorer, execute basic Transact-SQL queries, and utilize GitHub Copilot for query assistance. Estimated Time: 45 minutes Platform: Cloud-based virtual machine accessible through Azure Portal running Windows Server 2025, SQL Server 2025 (version 17), and SSMS 22 Prerequisites:

    Access to Azure Portal with lab credentials provided by instructor
    Cloud-based VM with SQL Server 2025 (version 17) and SSMS 22 pre-installed
    GitHub Copilot enabled in SSMS 22
    AdventureWorks2025 sample database restored on the SQL Server instance

Procedures

Step 1: Connect to the lab virtual machine through Azure Portal

1.  Navigate to https://portal.azure.com and sign in with your lab credentials

2.  In the left navigation pane, select Virtual machines

3.  Locate and select the VM named SQLLab-\[YourInitials\]-VM

4.  On the VM overview page, select Connect from the top menu

5.  Choose Native RDP from the dropdown

6.  Select Download RDP file

7.  Open the downloaded RDP file and select Connect

8.  When prompted for credentials, enter:

         Username: labadmin
         Password: P@ssw0rd2025!

9.  Accept any certificate warnings by selecting Yes

                                                         65317A - Querying and Analyzing SQL Server 2025

    1-34 Module 1: Querying Data with SQL Server Management Studio 22

    Expected Output: The Windows Server 2025 desktop appears with the server manager dashboard visible.

Verification: Verify you can see the Windows taskbar and desktop. The Server Manager window should display the local server name in the dashboard.

Step 2: Launch SQL Server Management Studio 22

1.  Select the Start button in the lower-left corner

2.  Scroll through the application list and select Microsoft SQL Server Tools 22

3.  Select SQL Server Management Studio 22 from the expanded menu Alternatively, you can:

    Type SSMS in the Windows search box and press Enter Double-click the SSMS 22 shortcut on the desktop if available

    Expected Output: SSMS 22 launches and displays the Connect to Server dialog box. The dialog shows fields for Server type, Server name, Authentication, and login credentials.

Verification: The title bar should display “Microsoft SQL Server Management Studio 22” and the Connect to Server dialog should be in focus.

Step 3: Connect to the local SQL Server 2025 instance

In the Connect to Server dialog, configure the following settings: 1. Server type: Database Engine (should be selected by default) 2. Server name: Enter localhost or . (period) or the actual server name 3. Authentication: Select Windows Authentication from the dropdown 4. Login and Password fields will be grayed out (not needed for Windows Authentication) 5. Select Options \>\> to expand additional connection options 6. Select the Connection Properties tab 7. In the Connect to database dropdown, select
<default>

8.  Verify Encrypt connection is checked (required for SQL Server 2025)

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 1: Querying Data with SQL Server Management Studio 22 1-35

9.  Select Trust server certificate checkbox

10. Select Connect

    Expected Output: SSMS connects successfully and displays the main interface with Object Explorer on the left showing a tree structure starting with the server name, and a welcome page or getting started page in the main window.

Verification: In Object Explorer, you should see a green circle with a white checkmark next to the server name, indicating a successful connection. Expand the server node to verify you can see folders for Databases, Security, Server Objects, Replication, and Management.

Step 4: Explore the Object Explorer and locate the AdventureWorks2025 database

1.  In Object Explorer, expand the Databases folder by selecting the arrow or plus sign next to it

2.  Locate AdventureWorks2025 in the list of databases

3.  Expand AdventureWorks2025 by selecting the arrow next to it

4.  Expand the Tables folder under AdventureWorks2025

5.  Expand the dbo schema folder to see tables

6.  Scroll down and locate the table named Person.Person

7.  Right-click on Person.Person and select Select Top 1000 Rows

    Expected Output: A new query window opens with an automatically generated SELECT statement, and the Results pane displays the first 1000 rows from the Person.Person table showing columns like BusinessEntityID, PersonType, FirstName, LastName, etc.

Verification: The query window should contain code similar to: `sql SELECT TOP (1000) [BusinessEntityID] ,[PersonType] ,[NameStyle] ,[Title] ,[FirstName] ,[MiddleName] ,[LastName] FROM [AdventureWorks2025].[Person].[Person]` The Results tab at the bottom should show multiple rows of person data.

                                                        65317A - Querying and Analyzing SQL Server 2025

1-36 Module 1: Querying Data with SQL Server Management Studio 22

Step 5: Create a new query window and execute a basic SELECT query

1.  Select File \> New \> Query with Current Connection from the menu bar (or press Ctrl+N)

2.  Verify the database context dropdown in the toolbar shows AdventureWorks2025. If not, select

    it from the dropdown.

3.  In the new blank query window, type the following query:

SELECT FirstName, LastName, EmailAddress

FROM Person.Person p INNER JOIN Person.EmailAddress e

     ON p.BusinessEntityID = e.BusinessEntityID

WHERE FirstName LIKE ‘J%’ ORDER BY LastName;

4.  Select Execute from the toolbar (or press F5 or Ctrl+E)

    Expected Output: The Results pane displays a result set with three columns (FirstName, LastName, EmailAddress) showing all people whose first name starts with ‘J’, sorted alphabetically by last name. The Messages tab shows a message like “(XXX rows affected)” where XXX is the number of rows returned.

Verification: Verify that all FirstName values in the results begin with the letter ‘J’. Check that the rows are sorted alphabetically by LastName. The status bar at the bottom should indicate the query completed successfully with timing information.

Step 6: Use GitHub Copilot to generate a query with a comment prompt

1.  In the same query window, position your cursor below the previous query (press Enter a few times to add blank lines)

2.  Type the following comment exactly as shown:

– Get all products with a list price greater than 1000 and show name, color, and price

3.  Press Enter after the comment

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 1: Querying Data with SQL Server Management Studio 22 1-37

4.  Wait 2-3 seconds for GitHub Copilot to display a suggestion (shown in gray text)

5.  If a suggestion appears, press Tab to accept it

6.  If no suggestion appears, press *Alt+* to manually trigger Copilot

7.  Review the generated query and make any necessary adjustments

8.  Highlight the generated query by clicking and dragging, or use Ctrl+A to select all if it’s the only

    query

9.  Select Execute or press F5 to run only the highlighted query

    Expected Output: GitHub Copilot generates a query similar to:

        SELECT
            Name,
            Color,
            ListPrice

        FROM Production.Product
        WHERE ListPrice > 1000
        ORDER BY ListPrice DESC;

    The Results pane shows products with prices over \$1000, displaying Name, Color, and ListPrice columns.

Verification: Verify that all ListPrice values in the results are greater than 1000. The query should reference the Production.Product table and include the three requested columns.

Step 7: Modify the query window settings and view multiple result sets

1.  Select Query \> Query Options from the menu bar

2.  In the Query Options dialog, expand Execution in the left pane

3.  Select Advanced

4.  Verify SET NOCOUNT is unchecked (default)

5.  Select OK

6.  Clear the current query window by selecting all text (Ctrl+A) and pressing Delete

7.  Enter the following queries:

                                                         65317A - Querying and Analyzing SQL Server 2025

    1-38 Module 1: Querying Data with SQL Server Management Studio 22

– First result set: Employee count by department SELECT

     d.Name AS DepartmentName,
      COUNT(edh.BusinessEntityID) AS EmployeeCount

FROM HumanResources.Department d LEFT JOIN HumanResources.EmployeeDepartmentHistory edh ON d.DepartmentID = edh.DepartmentID GROUP BY d.Name ORDER BY EmployeeCount DESC;

– Second result set: Shift information SELECT

     ShiftID,
      Name,
      StartTime,
      EndTime

FROM HumanResources.Shift;

8.  Select Execute to run both queries

    Expected Output: The Results pane displays two tabs: Results 1 and Results 2. Results 1 shows department names with employee counts. Results 2 shows shift information with ID, Name, StartTime, and EndTime. The Messages tab shows two “(X rows affected)” messages, one for each query.

Verification: Select the Results 1 and Results 2 tabs to switch between result sets. Both should display data. In the Messages pane, you should see two separate row count messages indicating both queries executed successfully.

Step 8: Use the Results to Grid options and configure column display

1.  Keep the query from Step 7 in the editor

2.  Select Query \> Results To \> Results to Grid (should already be selected, indicated by a

    checkmark)

3.  Right-click on the DepartmentName column header in Results 1

4.  Select Copy from the context menu to copy the column name

5.  Right-click on any cell in the EmployeeCount column

6.  Select Copy with Headers from the context menu

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 1: Querying Data with SQL Server Management Studio 22 1-39

7.  Open Notepad (select Start, type notepad , press Enter)

8.  Paste (Ctrl+V) the copied data into Notepad

9.  Return to SSMS

10. Right-click anywhere in the Results 1 grid

11. Select Save Results As

12. Navigate to C:

13. If the folder doesn’t exist, create it by selecting New folder

14. Enter filename: DepartmentEmployeeCounts.csv

15. Select Save

    Expected Output: Notepad displays the copied data with headers:

         EmployeeCount
         14

    (or similar, depending on which cell you copied) A CSV file is created at C:.csv containing all rows and columns from the result set.

Verification: Navigate to `C:\SQLLabs\Results` in File Explorer and verify the CSV file exists. Double- click it to open in Excel or Notepad to confirm it contains the department and employee count data with comma-separated values.

Step 9: Switch to Results to Text mode and execute a query

1.  In the query window, select Query \> Results To \> Results to Text (or press Ctrl+T)

2.  Clear the query window and enter:

                                                         65317A - Querying and Analyzing SQL Server 2025

    1-40 Module 1: Querying Data with SQL Server Management Studio 22

SELECT ProductID, Name, ProductNumber, StandardCost, ListPrice

FROM Production.Product WHERE ProductID BETWEEN 700 AND 710;

3.  Execute the query (F5)

4.  Select the Results tab if not already visible

Expected Output: The Results tab displays data in a text-based, fixed-width column format similar to:

ProductID Name ProductNumber StandardCost ListPrice

------------------------------------------------------------------------

700 Mountain-100 Black, BK-M82B-38 1912.1544 3374.99

701 Mountain-100 Black, BK-M82B-42 1912.1544 3374.99

…

(X rows affected)

Verification: The output should be plain text with dashes separating the column headers from the data rows. Text should be aligned in fixed-width columns rather than appearing in a grid.

Step 10: Switch back to Results to Grid and use the Query Execution Plan

1.  Select Query \> Results To \> Results to Grid (or press Ctrl+D)

2.  Select Query \> Include Actual Execution Plan (or press Ctrl+M). A checkmark appears next to

    this menu item when enabled.

3.  Execute the query from Step 9 again (F5)

4.  Select the Execution plan tab that appears at the bottom (next to Results and Messages)

                   65317A - Querying and Analyzing SQL Server 2025

     Module 1: Querying Data with SQL Server Management Studio 22 1-41

    Expected Output: The Results pane shows the query results in grid format. A new Execution Plan tab displays a graphical representation of how SQL Server processed the query, showing icons for Index Seek or Table Scan operations, with arrows indicating data flow from right to left. Each operation shows cost percentages.

Verification: Hover your mouse over the icons in the execution plan. Tooltips should appear showing detailed information like operation type, number of rows, and estimated costs. The overall query cost should total 100%.

Step 11: Save your query to a file

1.  Turn off the execution plan by selecting Query \> Include Actual Execution Plan again (or Ctrl+M) to remove the checkmark

2.  Clear the query window and enter this summary query:

/\* AdventureWorks2025 Database Exploration Queries Created: \[Current Date\] Purpose: Introduction to SSMS 22 and SQL Server 2025

\*/

– Product information query SELECT

     ProductID,
      Name,
      ProductNumber,
      StandardCost,
      ListPrice,
      ListPrice - StandardCost AS ProfitMargin

FROM Production.Product WHERE ProductID BETWEEN 700 AND 710 ORDER BY ProfitMargin DESC;

3.  Select File \> Save \[QueryName\].sql (or press Ctrl+S)

4.  Navigate to C:

5.  Create the folder if it doesn’t exist

6.  In the File name field, enter: Module1_FirstQueries.sql

                                                         65317A - Querying and Analyzing SQL Server 2025

    1-42 Module 1: Querying Data with SQL Server Management Studio 22

7.  Verify Save as type is set to SQL Files (\*.sql)

8.  Select Save

    Expected Output: The file saves successfully. The query window tab title changes from “SQLQuery1.sql” (or similar) to “Module1_FirstQueries.sql”. The asterisk (\*) that appeared next to the filename (indicating unsaved changes) disappears.

Verification: Navigate to `C:\SQLLabs\Queries` in File Explorer. Verify the file `Module1_FirstQueries.sql` exists. Right-click the file, select **Open with** \> **Notepad** to verify the contents match what you entered.

Step 12: Open a saved query and use GitHub Copilot for query refinement

1.  Select File \> Open \> File (or press Ctrl+O)
2.  Navigate to C:\_FirstQueries.sql
3.  Select Open
4.  Position your cursor at the end of the file and press Enter twice
5.  Type the following comment:

– Show the same product information but only for products with a profit margin over 1000

6.  Press Enter and wait for GitHub Copilot to suggest a query

7.  Review the suggestion and press Tab to accept if appropriate

8.  Highlight only the new query generated by Copilot

9.  Execute the highlighted query (F5)

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 1: Querying Data with SQL Server Management Studio 22 1-43

    Expected Output: GitHub Copilot generates a query similar to:

        SELECT
            ProductID,
            Name,
            ProductNumber,
            StandardCost,
            ListPrice,
            ListPrice - StandardCost AS ProfitMargin

        FROM Production.Product
        WHERE ListPrice - StandardCost > 1000
        ORDER BY ProfitMargin DESC;

    The Results pane displays products where the calculated ProfitMargin exceeds 1000.

Verification: Verify all ProfitMargin values in the results are greater than 1000. The query should include the calculated column and appropriate WHERE clause. Save the file again (**Ctrl+S**) to preserve the Copilot-generated query.

Step 13: Explore Object Explorer scripting capabilities

1.  In Object Explorer, expand Databases \> AdventureWorks2025 \> Tables \> dbo
2.  Scroll down and locate the table Production.Product
3.  Right-click Production.Product
4.  Select Script Table as \> SELECT To \> New Query Editor Window
5.  Review the generated script in the new query window
6.  Modify the SELECT statement to add a WHERE clause:

WHERE Color = ‘Red’

7.  Add above the existing ORDER BY clause (if present) or at the end before the semicolon

8.  Execute the modified query (F5)

                                                         65317A - Querying and Analyzing SQL Server 2025

    1-44 Module 1: Querying Data with SQL Server Management Studio 22

    Expected Output: A new query window opens containing a fully qualified SELECT statement with all columns from the Production.Product table. After modification and execution, the Results pane displays only products where the Color column equals ‘Red’.

Verification: Scroll through the results and verify that all rows in the Color column show ‘Red’. The generated script should include the full three-part naming convention: \[AdventureWorks2025\]. \[Production\].\[Product\].

Step 14: Organize and close query windows

1.  Note the query window tabs at the top of the editor area. You should have multiple tabs open.

2.  Right-click on the tab named Module1_FirstQueries.sql

3.  Select Close All But This from the context menu

4.  If prompted to save changes for any unsaved queries, select No

5.  Verify only the Module1_FirstQueries.sql tab remains open

6.  Select File \> Save (or Ctrl+S) to ensure your latest changes are saved

7.  Select File \> Close to close the query window

8.  Leave SSMS and the Object Explorer connection open for the challenge exercise

    Expected Output: All query window tabs close except Module1_FirstQueries.sql (when selecting Close All But This). After the final close operation, the main SSMS window displays only the Object Explorer with no query windows open.

Verification: The document window area should be empty with only a gray background visible. Object Explorer should still show the connected server with the green connection indicator.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 1: Querying Data with SQL Server Management Studio 22 1-45

Troubleshooting

    Problem: Connect to Server dialog does not appear when SSMS 22 launches
     Solution: Select **File** > **Connect Object Explorer** (or press **Ctrl+Shift+O**) to manually
     open the Connect to Server dialog. Alternatively, select the **Connect** button (plug icon) in the
     Object Explorer toolbar.

     Problem: Error message: 'A connection was successfully established with the server, but then an
     error occurred during the login process. (provider: SSL Provider, error: 0 - The certificate chain
     was issued by an authority that is not trusted.)'
     Solution: This occurs when the Encrypt connection setting is enabled without trusting the server
     certificate. In the Connect to Server dialog, select **Options >>**, navigate to the **Connection
     Properties** tab, and ensure **Trust server certificate** is checked. Then reconnect.

     Problem: GitHub Copilot suggestions do not appear after typing a comment
     Solution: First, verify GitHub Copilot is enabled: Select **Tools** > **Options** > **GitHub
     Copilot** and ensure it is turned on. If enabled but not working, manually trigger suggestions by
     pressing **Alt+\** after your comment. If still not working, ensure you are connected to the
     internet and your GitHub Copilot subscription is active. Sign out and sign back into GitHub in
     SSMS via **Tools** > **Options** > **GitHub**.

     Problem: Query executes but shows 'Invalid object name' error for AdventureWorks2025 tables
     Solution: Verify you are connected to the correct database. Check the database dropdown in the
     query window toolbar and ensure **AdventureWorks2025** is selected. If AdventureWorks2025
     doesn't appear in the list, the database may not be restored. Right-click **Databases** in Object
     Explorer and select **Refresh** to update the database list. Contact your instructor if the
     database is missing.

                                                         65317A - Querying and Analyzing SQL Server 2025

1-46 Module 1: Querying Data with SQL Server Management Studio 22

    Problem: Results display in text format instead of grid format or vice versa
     Solution: The results output mode persists across queries. To switch modes: For grid view, select
     **Query** > **Results To** > **Results to Grid** (or press **Ctrl+D**). For text view, select
     **Query** > **Results To** > **Results to Text** (or press **Ctrl+T**). You must change this
     setting before executing the query; it does not affect already-displayed results.

     Problem: Unable to create folders or save files to C:\SQLLabs directory
     Solution: You may not have permissions to create folders in the C:\ root directory. Run File
     Explorer as administrator: Right-click the File Explorer icon and select **Run as administrator**,
     then create the folder. Alternatively, save files to your user Documents folder:
     `C:\Users\labadmin\Documents\SQLLabs` and adjust the paths in the lab steps accordingly.

Challenge Exercise

Product Analysis Query Development

Using the techniques learned in this lab, develop a comprehensive query solution that accomplishes the following: 1. Query Creation: Write a query that retrieves all products from the Production.Product table that

meet these criteria: The product has a non-null Color value The list price is greater than the average list price for all products The product was modified within the last 5 years (use the ModifiedDate column)

2.  Calculated Columns: Include calculated columns for: Profit margin (ListPrice - StandardCost) Profit margin percentage ((ListPrice - StandardCost) / ListPrice \* 100) Days since last modification (DATEDIFF function)

3.  Grouping and Aggregation: Extend your query to create a summary showing: Count of products by Color Average profit margin by Color Maximum and minimum list price by Color

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 1: Querying Data with SQL Server Management Studio 22 1-47

         Only include colors with more than 5 products

4.  GitHub Copilot Assistance: Use GitHub Copilot to help generate at least one portion of your

    query by writing descriptive comments about what you want to accomplish.

5.  Documentation and Saving: Add comprehensive comments explaining each section of your

    query, and save the final solution as Module1_Challenge.sql in your C:folder.

6.  Execution Plan Analysis: Execute your query with the Actual Execution Plan enabled and

    identify the most expensive operation in the plan. Deliverables: A saved SQL file containing both the individual product query and the grouped summary query, with comments explaining your approach and noting which portions were assisted by GitHub Copilot. Be prepared to discuss why certain operations in the execution plan consume more resources.

                                                         65317A - Querying and Analyzing SQL Server 2025

    1-48 Module 1: Querying Data with SQL Server Management Studio 22

Answer Key

1.  Which authentication method uses your current Windows login credentials to connect to SQL Server?

    1)  Windows Authentication
    2)  SQL Server Authentication
    3)  Mixed Mode Authentication
    4)  Active Directory Authentication

    Answer: A Windows Authentication leverages your current Windows login credentials and Active Directory integration to authenticate against SQL Server, providing enhanced security as credentials aren’t transmitted over the network.

2.  What keyboard shortcut executes a query in the SSMS query window?

    1)  Ctrl+E
    2)  F5
    3)  Ctrl+R
    4)  F9

    Answer: B F5 is the keyboard shortcut to execute queries in SSMS. You can also click the Execute button on the toolbar. Pressing F5 runs the entire query window or only the highlighted selection if text is selected.

3.  Which component in SSMS provides a hierarchical view of all database objects including tables, views, and stored procedures?

    1)  Solution Explorer

    2)  Template Explorer

    3)  Object Explorer

    4)  Query Designer

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 1: Querying Data with SQL Server Management Studio 22 1-49

    Answer: C Object Explorer provides the hierarchical tree view of all SQL Server components and database objects. It organizes servers, databases, tables, views, programmability objects, and security settings in an expandable tree structure.

4.  What does GitHub Copilot do in SSMS 22?

    1)  Automatically backs up your databases
    2)  Provides AI-powered code suggestions based on context and comments
    3)  Manages source control integration
    4)  Optimizes query execution plans

    Answer: B GitHub Copilot is an AI pair programmer that analyzes your code context and natural language comments to suggest complete lines or blocks of SQL code. It helps accelerate development and learn SQL patterns through intelligent suggestions.

5.  Which shorthand notation can you use to connect to a default SQL Server instance on your local computer?

    1)  localhost
    2)  .
    3)  (local)
    4)  All of the above

    Answer: D All three notations–localhost, . (period), and (local)–are valid ways to reference the default SQL Server instance on your local machine. You can also use 127.0.0.1 as the loopback IP address.

6.  What file extension does SSMS use by default when saving query files?

    1)  .txt

    2)  .query

    3)  .sql

                                                          65317A - Querying and Analyzing SQL Server 2025

        1-50 Module 1: Querying Data with SQL Server Management Studio 22

    4)  .ssms

    Answer: C SSMS saves query files with the .sql extension by default. This extension is automatically associated with SSMS on Windows, allowing you to double-click .sql files to open them directly in SSMS.

7.  Which result output format is best for viewing large result sets that might overwhelm the grid display?

    1)  Results to Grid
    2)  Results to Text
    3)  Results to File
    4)  Results to XML

    Answer: A Results to Grid is the best format for viewing large result sets while maintaining interactivity. The grid format allows sorting, filtering, and copying data directly. For extremely large datasets that might consume excessive memory, Results to File can be used, but Results to Grid with export capabilities provides better balance of functionality and performance for most scenarios.

8.  What SSMS feature provides color-coded differentiation of SQL keywords, strings, and comments in the query editor?

    1)  IntelliSense
    2)  Syntax Highlighting
    3)  Code Snippets
    4)  Query Analyzer

    Answer: B Syntax Highlighting color-codes different SQL elements to improve readability and reduce errors. Keywords typically appear in blue, strings in red, comments in green, and operators in gray, making queries easier to read and debug.

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 1: Querying Data with SQL Server Management Studio 22 1-51

Module Summary

Module Summary

SQL Server Management Studio 22 is your comprehensive environment for interacting with SQL Server 2025 (version 17). You’ve learned to install SSMS, connect to both local and remote SQL Server instances using Windows Authentication or SQL Server Authentication, and navigate the Object Explorer hierarchy to locate databases, tables, and other objects. The query editor provides powerful features including IntelliSense, syntax highlighting, and flexible result output options. GitHub Copilot integration brings AI-assisted development to your SQL workflow, helping you write queries faster and learn best practices. Finally, proper organization and saving of query scripts ensures you build a reusable library of database operations. With these foundational skills, you’re ready to write and execute Transact-SQL queries effectively.

                                                        65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

    Module 2: Basic Transact-SQL and String Enhancements

                                                           65317A
                                   3-day course ? 10 modules ? beginner level

Contents

Module 2: Basic Transact-SQL and String Enhancements

Lesson 1: Introduction to Transact-SQL and the SELECT Statement Lesson 2: Column Aliasing and Expressions Lesson 3: Essential String Functions: CONCAT, SUBSTRING, LEFT, and RIGHT Lesson 4: String Manipulation Functions: TRIM, REPLACE, UPPER, LOWER, and REVERSE Lesson 5: SQL Server 2025 String Enhancements Lesson 6: NULL Handling in String Operations Lab: String Manipulation and Data Transformation in SQL Server 2025 Answer Key Module Summary Discussion Prompts  Module 2: Basic Transact-SQL and String Enhancements 2-1

Learning Objectives

After completing this module, you will be able to: Write SELECT statements with column selection and aliasing Apply string manipulation functions including CONCAT, SUBSTRING, and TRIM Utilize SQL Server 2025 (version 17) string enhancements Format and transform string data for reporting

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                  65317A - Querying and Analyzing SQL Server 2025

2-2 Module 2: Basic Transact-SQL and String Enhancements

      Module Overview
     Module 2 covers foundational Transact-SQL skills with emphasis on SELECT statements, column
     aliasing, and comprehensive string manipulation functions. This module builds the core
     competencies needed for data transformation and reporting tasks in SQL Server 2025. Estimated
     delivery time: 3-4 hours including lab and quiz.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-3

Lesson 1: Introduction to Transact-SQL and the SELECT Statement

      Estimated Time: 25 minutes

Understanding Transact-SQL

Transact-SQL (T-SQL) is Microsoft’s extension of the standard SQL language, providing powerful capabilities for querying and managing data in SQL Server 2025. At the heart of T-SQL is the SELECT statement, which retrieves data from database tables.

The SELECT Statement Structure

The SELECT statement follows a logical structure:

SELECT column1, column2, column3 FROM table_name;

This basic syntax retrieves specific columns from a table. You can also use the asterisk (\*) wildcard to select all columns:

SELECT \* FROM Customers;

However, selecting all columns is generally discouraged in production environments because it can impact performance and retrieve unnecessary data.

Column Selection Best Practices

When writing SELECT statements, specify only the columns you need. This approach: Improves performance by reducing data transfer Enhances readability by making query intent clear Reduces network bandwidth consumption Simplifies maintenance when table structures change

                                                        65317A - Querying and Analyzing SQL Server 2025

2-4 Module 2: Basic Transact-SQL and String Enhancements

For example, instead of SELECT \* , write:

SELECT FirstName, LastName, Email FROM Customers;

This explicit approach ensures your query retrieves exactly what you need, nothing more. As you progress through this module, you’ll learn how to transform and manipulate these columns using T- SQL’s powerful string functions.

         Illustration showing a database server with organized data flowing into a structured SELECT query interface

     Key Takeaways
          T-SQL is Microsoft's enhanced version of standard SQL for SQL Server
          SELECT statements retrieve data from database tables
          Always specify explicit column names rather than using SELECT *
          Column selection impacts query performance and maintainability

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-5

Instructor Notes Talking Points:

SELECT is the most fundamental T-SQL statement–every analyst and developer uses this daily Syntax order matters: SELECT, FROM, WHERE, ORDER BY–emphasize this ordering is not arbitrary Column selection techniques: explicit naming vs. wildcards (SELECT \* dangers for production code) Stress that T-SQL is Microsoft’s implementation of standard SQL with specific syntax rules Demonstrate difference between selecting specific columns for performance and maintainability Demo Suggestion: Live demo in SQL Server Management Studio: execute a basic SELECT on a sample table, then show the results. Modify the query to select specific columns vs. SELECT *. Show execution plan to demonstrate performance implications. Use the AdventureWorks sample database if available. Common Student Questions: Q: Why shouldn’t I always use SELECT* ? A: SELECT \* returns all columns which increases network traffic, makes queries harder to maintain, and can break code if schema changes. Best practice is to explicitly list needed columns. Q: What’s the difference between T-SQL and regular SQL? A: T-SQL is Microsoft SQL Server’s dialect of SQL. It includes SQL Server-specific functions and syntax, but core SELECT, INSERT, UPDATE, DELETE operations follow standard SQL. Q: Can I write SELECT statements in any order? A: No–the logical order is SELECT, FROM, WHERE, ORDER BY. SQL Server will parse them in this sequence regardless of how you write them visually.

                                                  65317A - Querying and Analyzing SQL Server 2025

2-6 Module 2: Basic Transact-SQL and String Enhancements

Lesson 2: Column Aliasing and Expressions

      Estimated Time: 20 minutes

Creating Column Aliases

Column aliases provide meaningful names for query results, making output more readable and professional. You can create aliases using the AS keyword:

SELECT FirstName AS \[First Name\], LastName AS \[Last Name\], EmailAddress AS Email

FROM Customers;

The AS keyword is optional, but using it improves code clarity:

SELECT FirstName \[First Name\], LastName \[Last Name\]

FROM Customers;

When aliases contain spaces or special characters, enclose them in square brackets \[ \] or double quotes ” “.

Working with Expressions

T-SQL allows you to create calculated columns using expressions. These expressions can combine columns, perform calculations, or manipulate data:

SELECT ProductName, UnitPrice, Quantity, UnitPrice \* Quantity AS TotalPrice

FROM OrderDetails;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-7

Combining Literals with Columns

You can include literal text in your results to create formatted output:

SELECT ‘Customer:’ + FirstName + ’ ’ + LastName AS FullInfo, ‘Email:’ + EmailAddress AS ContactInfo

FROM Customers;

Expression Best Practices

When creating expressions: Always use aliases for calculated columns to make results clear Keep expressions simple for better performance and readability Consider NULL values when combining columns (covered later in this module) Use parentheses to clarify complex calculations

Aliases and expressions are fundamental tools for transforming raw database data into meaningful, business-ready information.

Before and after comparison showing raw database column names transforming into professional, business-friendly labels

                                                        65317A - Querying and Analyzing SQL Server 2025

2-8 Module 2: Basic Transact-SQL and String Enhancements

    Key Takeaways
          Column aliases improve query output readability using the AS keyword
          Use square brackets for aliases containing spaces or special characters
          Expressions enable calculated columns and data transformations
          Always provide meaningful aliases for expression results

       Instructor Notes
     Talking Points:

          Aliasing makes result sets readable and self-documenting--critical for reporting and business
          users
          Use 'AS' keyword for clarity; omitting it works but reduces code readability
          Expressions allow calculated columns--show real examples (price * quantity for line totals)
          Alias scope: aliases exist only in SELECT and ORDER BY clauses, not in WHERE
          Naming conventions: use business terminology, not technical jargon (Total Sale Amount, not
          tsamt)
     Demo Suggestion: Live demo showing: basic aliasing (SELECT FirstName AS [First Name]),
     calculated expressions (SELECT Salary * 1.1 AS ProjectedSalary), complex expressions with string
     concatenation. Show a query with alias in ORDER BY clause, then attempt to use alias in WHERE
     clause to demonstrate scoping rules.
     Common Student Questions:
     Q: Can I use an alias in a WHERE clause?
     A: No--WHERE executes before SELECT, so aliases don't exist yet. Use HAVING for filtered
     aggregates or rewrite the WHERE condition without the alias.
     Q: Do I need the AS keyword for aliases?
     A: Technically no, but using AS explicitly is best practice and improves code readability. Some
     shops require it as a coding standard.
     Q: What happens if my alias matches a column name?
     A: The alias takes precedence in the result set, but this creates confusion. Avoid this--use distinct
     names.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-9

Lesson 3: Essential String Functions: CONCAT, SUBSTRING, LEFT, and RIGHT

      Estimated Time: 30 minutes

Add new subsection after ‘LEFT and RIGHT Functions’ section:

CONCAT_WS: Concatenate With Separator

CONCAT_WS (available in SQL Server 2017+, enhanced in 2025) combines strings with an automatic separator and superior NULL handling:

SELECT CONCAT_WS(’ ’, FirstName, MiddleName, LastName) AS FullName

FROM Employees;

Unlike CONCAT, CONCAT_WS skips NULL values entirely without inserting extra separators. If MiddleName is NULL, this returns ‘FirstName LastName’ instead of ‘FirstName LastName’. Syntax: CONCAT_WS(separator, value1, value2, …) CONCAT_WS is particularly valuable for creating clean formatted output when optional data fields may contain NULL values.

                                                        65317A - Querying and Analyzing SQL Server 2025

2-10 Module 2: Basic Transact-SQL and String Enhancements

Illustration of string manipulation showing text being split, combined, and extracted using scissors, magnifying glass, and assembly metaphors

    Key Takeaways
          CONCAT combines strings and automatically handles NULL values
          SUBSTRING extracts portions of strings using position and length
          LEFT and RIGHT functions extract characters from string endpoints
          T-SQL uses 1-based indexing for string positions

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-11

Instructor Notes Talking Points:

CONCAT is the modern approach to string joining–cleaner than + operator and handles NULLs better SUBSTRING extracts portions of strings: SUBSTRING(string, start_position, length) LEFT and RIGHT are convenience functions–SUBSTRING can do everything they do Position counting starts at 1, not 0–common source of off-by-one errors String functions are essential for data cleaning, formatting phone numbers, extracting prefixes, etc. Performance note: string functions are CPU-intensive; apply them judiciously in large result sets Demo Suggestion: Live demo sequence: (1) CONCAT with multiple columns (name, address, phone), (2) CONCAT with separators, (3) SUBSTRING extracting area code from phone, (4) LEFT extracting product codes, (5) RIGHT extracting file extensions. Show CONCAT handling NULL values gracefully vs. + operator producing NULL. Execute on sample data with actual business examples. Common Student Questions: Q: What’s the difference between CONCAT and the + operator? A: CONCAT handles NULL values by treating them as empty strings; + returns NULL if any operand is NULL. CONCAT is generally preferred in SQL Server 2012+. Q: Why do string positions start at 1 instead of 0? A: SQL Server uses 1-based indexing (like Excel). This differs from programming languages like C# or Python. Always remember position 1 is the first character. Q: Can I use SUBSTRING to replace text? A: No–SUBSTRING only extracts. Use REPLACE function to substitute text, or SUBSTRING with CONCAT to rebuild strings with replacements.

                                                  65317A - Querying and Analyzing SQL Server 2025

2-12 Module 2: Basic Transact-SQL and String Enhancements

Lesson 4: String Manipulation Functions: TRIM, REPLACE, UPPER, LOWER, and REVERSE

      Estimated Time: 28 minutes

Trimming Whitespace with TRIM

The TRIM function removes leading and trailing whitespace from strings, essential for data cleaning:

SELECT TRIM(CustomerName) AS CleanName, TRIM(’ ’ FROM PhoneNumber) AS CleanPhone

FROM Customers;

SQL Server 2025 enhances TRIM with the ability to specify custom characters to remove:

SELECT TRIM(‘.,;’ FROM ProductDescription) AS CleanDescription;

Related functions LTRIM (left trim) and RTRIM (right trim) remove whitespace from one side only.

String Replacement

REPLACE substitutes all occurrences of a substring with another value:

SELECT PhoneNumber, REPLACE(PhoneNumber, ‘-’, ’‘) AS NumericPhone, REPLACE(Email,’@oldcompany.com‘,’@newcompany.com’) AS UpdatedEmail

FROM Contacts;

REPLACE is case-sensitive and replaces all occurrences within the string.

Case Conversion

UPPER and LOWER functions standardize text casing:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-13

SELECT UPPER(FirstName) AS UpperFirst, LOWER(EmailAddress) AS LowerEmail

FROM Users;

These functions are valuable for: Data standardization before comparisons Formatting output for display requirements Case-insensitive searches in WHERE clauses

The REVERSE Function

REVERSE returns a string with characters in reverse order:

SELECT AccountNumber, REVERSE(AccountNumber) AS ReversedNumber

FROM Accounts;

While less commonly used, REVERSE is helpful for specific pattern matching and data validation scenarios.

Combining Functions

These functions often work together:

SELECT UPPER(TRIM(REPLACE(ProductName, ‘OLD’, ‘NEW’))) AS StandardizedName

FROM Products;

                                                        65317A - Querying and Analyzing SQL Server 2025

2-14 Module 2: Basic Transact-SQL and String Enhancements

Illustration showing a text cleaning and transformation assembly line with different stations for trimming, replacing, and case conversion

    Key Takeaways
          TRIM removes whitespace and custom characters from string ends
          REPLACE substitutes all occurrences of a substring
          UPPER and LOWER standardize text casing for comparisons and display
          Functions can be nested to perform complex string transformations

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-15

Instructor Notes Talking Points:

TRIM removes leading/trailing whitespace–essential for data quality and preventing join mismatches SQL Server 2019+ TRIM is better; older versions use LTRIM/RTRIM–acknowledge version differences REPLACE performs find-and-substitute operations: case-sensitive in default collation UPPER/LOWER for case normalization–use before comparisons to avoid case-sensitivity issues REVERSE is rarely needed but useful for checksums, palindrome checks, or data obfuscation examples Data quality context: many ETL processes use TRIM, UPPER, LOWER to standardize incoming data Demo Suggestion: Live demo: (1) TRIM on messy data with leading/trailing spaces, show how this prevents join failures, (2) REPLACE removing punctuation from phone numbers, (3) REPLACE swapping text (useful for corrections), (4) UPPER/LOWER for case-insensitive searching (combine with WHERE), (5) REVERSE on product SKUs. Show a realistic data cleaning scenario: normalize customer names using UPPER and TRIM together. Common Student Questions: Q: Is REPLACE case-sensitive? A: By default yes, depending on collation settings. If case matters, test first. For case-insensitive replace, use LOWER on both the string and search pattern. Q: Should I use LTRIM and RTRIM or TRIM? A: Use TRIM if on SQL Server 2019+. For earlier versions, LTRIM removes leading spaces and RTRIM removes trailing spaces. TRIM does both. Always combine with UPPER/LOWER for robust data cleaning. Q: Why would I ever use REVERSE? A: Uncommon in reporting, but useful for: validating check digits, obfuscating sensitive data, extracting suffixes in reverse, or solving specific data transformation problems.

                                                  65317A - Querying and Analyzing SQL Server 2025

2-16 Module 2: Basic Transact-SQL and String Enhancements

Lesson 5: SQL Server 2025 String Enhancements

      Estimated Time: 22 minutes

What’s New in SQL Server 2025 (Version 17)

SQL Server 2025 introduces significant string handling improvements that enhance performance, Unicode support, and developer productivity.

Enhanced TRIM Functionality

Beyond basic whitespace removal, SQL Server 2025’s TRIM function now supports: Custom character sets for trimming Directional control (LEADING, TRAILING, or BOTH) Improved performance with optimized execution plans

SELECT TRIM(LEADING ‘0’ FROM AccountNumber) AS TrimmedAccount, TRIM(TRAILING ‘.’ FROM Description) AS CleanDescription

FROM Accounts;

STRING_SPLIT Enhancements

The STRING_SPLIT function now includes ordinal position information, enabling preservation of element order:

SELECT value, ordinal FROM STRING_SPLIT(‘Red,Blue,Green,Yellow’, ‘,’, 1) ORDER BY ordinal;

The third parameter (1) enables ordinal output, crucial for maintaining sequence in delimited data.

UTF-8 Performance Improvements

SQL Server 2025 delivers enhanced UTF-8 encoding performance:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-17

Faster character conversion operations Reduced storage requirements for international character sets Improved collation handling for multilingual data

New String Aggregation Options

The STRING_AGG function gains additional capabilities:

SELECT CategoryID, STRING_AGG(ProductName, ‘,’) WITHIN GROUP (ORDER BY ProductName) AS Products

FROM Products GROUP BY CategoryID;

WITHIN GROUP ordering ensures consistent, sorted concatenation of grouped values.

Performance Considerations

SQL Server 2025 optimizes string operations through: Intelligent query plan generation for string functions Batch mode processing for certain string operations Memory-optimized string handling for large datasets

These enhancements make SQL Server 2025 particularly effective for text-heavy workloads and international applications.

                                                        65317A - Querying and Analyzing SQL Server 2025

2-18 Module 2: Basic Transact-SQL and String Enhancements

    Modern server infrastructure with enhanced capabilities visualized as upgraded components and faster processing
                                                                            pathways

     Key Takeaways
          SQL Server 2025 enhances TRIM with directional control and custom characters
          STRING_SPLIT now provides ordinal positions for element ordering
          UTF-8 performance improvements benefit multilingual applications
          STRING_AGG supports sorted aggregation with WITHIN GROUP clause

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-19

Instructor Notes Talking Points:

SQL Server 2025 (version 17) introduces T-SQL enhancements–know your version to leverage new features Research current SQL Server 2025 documentation for specific string function improvements or new functions added String_AGG improvements or new capabilities likely exist–check Microsoft docs before teaching Performance improvements in string operations may be a focus of newer versions Backward compatibility: new features coexist with legacy functions, but new approaches preferred Communicate that staying current with SQL Server versions unlocks better tools for developers Demo Suggestion: Live demo of SQL Server 2025-specific string features (verify with current documentation). Likely topics: STRING_AGG function for aggregating strings, improved string manipulation functions, or new pattern-matching capabilities. Compare old vs. new syntax for the same operation to highlight improvements. Common Student Questions: Q: Do I need to upgrade to SQL Server 2025 to use these new string functions? A: Depends on your organization’s infrastructure and support policies. New functions only work on SQL Server 2025+. Verify version compatibility before deploying code. Q: Will code written for SQL Server 2025 run on SQL Server 2019? A: Not if it uses version-specific features. Always code for your minimum supported version, or clearly document version requirements.

                                                  65317A - Querying and Analyzing SQL Server 2025

2-20 Module 2: Basic Transact-SQL and String Enhancements

Lesson 6: NULL Handling in String Operations

      Estimated Time: 25 minutes

Understanding NULL in String Context

NULL represents missing or unknown data in SQL Server. When NULL appears in string operations, it requires special handling to prevent unexpected results.

The NULL Propagation Problem

Using the concatenation operator (+) with NULL values causes the entire result to become NULL:

SELECT FirstName + ’ ’ + MiddleName + ’ ’ + LastName AS FullName

FROM Employees;

If MiddleName is NULL, the entire FullName becomes NULL–likely not the desired outcome.

CONCAT Function: Built-in NULL Handling

CONCAT automatically treats NULL as an empty string:

SELECT CONCAT(FirstName, ’ ‘, MiddleName,’ ’, LastName) AS FullName

FROM Employees;

This produces “John Smith” even when MiddleName is NULL, eliminating the NULL propagation issue.

Using ISNULL and COALESCE

For explicit NULL handling, use ISNULL or COALESCE:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-21

SELECT FirstName + ’ ’ + ISNULL(MiddleName, ’‘) +’ ’ + LastName AS FullName

FROM Employees; SELECT

     FirstName + ' ' + COALESCE(MiddleName, '') + ' ' + LastName AS FullName

FROM Employees;

ISNULL accepts two parameters and returns the second if the first is NULL. COALESCE accepts multiple parameters and returns the first non-NULL value.

Best Practices for NULL Handling

When working with potentially NULL string columns: Use CONCAT for simple concatenation tasks Use ISNULL for simple substitutions Use COALESCE when multiple fallback values are needed Test with NULL data to verify expected behavior Document assumptions about NULL handling in complex queries

String Functions and NULL

Most string functions return NULL when their primary input is NULL:

SELECT UPPER(NULL) AS Result1, – Returns NULL SUBSTRING(NULL, 1, 3) AS Result2, – Returns NULL CONCAT(‘Text’, NULL) AS Result3 – Returns ‘Text’

Understanding this behavior prevents logic errors in data transformations.

                                                        65317A - Querying and Analyzing SQL Server 2025

2-22 Module 2: Basic Transact-SQL and String Enhancements

Illustration showing data flowing through processing pipelines with NULL values being handled, filtered, or replaced at checkpoints

    Key Takeaways
          NULL in string concatenation with + operator causes entire result to become NULL
          CONCAT function automatically handles NULL as empty string
          ISNULL and COALESCE provide explicit NULL replacement
          Most string functions return NULL when primary input is NULL

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-23

Instructor Notes Talking Points:

NULL is ‘unknown’–not empty string or zero. This distinction is critical to correct SQL behavior String functions + NULL usually = NULL (concatenation, LEFT, RIGHT, SUBSTRING with NULL arguments) CONCAT treats NULL as empty string–different behavior from + operator ISNULL and COALESCE provide fallback values when NULLs are problematic WHERE clauses: NULL comparisons always fail (even NULL = NULL is UNKNOWN)–use IS NULL / IS NOT NULL Data quality impact: failing to handle NULLs causes incorrect results and difficult-to-debug issues Document assumptions: always clarify with stakeholders whether NULL fields should be included, excluded, or replaced Demo Suggestion: Live demo showing NULL behavior: (1) + operator with NULL (returns NULL), (2) CONCAT with NULL (returns non-NULL), (3) SUBSTRING with NULL input, (4) ISNULL for fallback values, (5) COALESCE with multiple columns, (6) WHERE with NULL comparisons (show NULL fails), use IS NULL instead. Execute queries returning different row counts to illustrate NULL handling impact. Common Student Questions: Q: Why does NULL = NULL return UNKNOWN instead of TRUE? A: Because NULL means unknown. An unknown value compared to another unknown value is also unknown, not true. Always use IS NULL for NULL checks. Q: What’s the difference between ISNULL and COALESCE? A: ISNULL(value, replacement) is SQL Server-specific, returns replacement if value is NULL. COALESCE(value1, value2, …) is standard SQL, returns first non-NULL. COALESCE is more flexible with multiple columns. Q: Should I always replace NULLs with default values? A: No–depends on business requirements. Some NULLs are meaningful (unknown data). Consult stakeholders. Document your assumptions clearly.

                                                  65317A - Querying and Analyzing SQL Server 2025

2-24 Module 2: Basic Transact-SQL and String Enhancements

Lab: String Manipulation and Data Transformation in SQL Server 2025

Objective: Practice writing SELECT statements with string functions to transform and format customer data, utilizing SQL Server 2025 string enhancements to create formatted reports Estimated Time: 45 minutes Platform: Azure Portal with Windows Server 2025 VM running SQL Server 2025 (version 17) and SSMS 22 Prerequisites:

Access to Azure Portal with provisioned lab VM SQL Server Management Studio 22 installed on the VM AdventureWorks2025 sample database restored Basic understanding of SQL SELECT statements

      Lab Facilitation
     Setup: Pre-lab: (1) Verify all students have SQL Server 2025 installed and Management Studio
     running, (2) Ensure sample database is restored (AdventureWorks preferred for realistic data), (3)
     Create a working directory for lab scripts, (4) Pre-test all lab queries to confirm they execute
     without errors in your environment, (5) Have backup sample data available if student databases
     become corrupted, (6) Confirm students can create new queries and save scripts.
     Pacing: Break lab into phases: (1) Basic SELECT and aliasing (15 min)--quick wins build
     confidence, (2) String function exercises in isolation (20 min)--practice CONCAT, SUBSTRING, etc.
     separately before combining, (3) Data transformation challenge combining multiple functions (15
     min)--integrative task, (4) Query optimization and NULL handling review (10 min). Circulate
     constantly; watch for students stuck on off-by-one errors with SUBSTRING. Pause group if more
     than 30% struggle on any phase.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-25

Procedures

Step 1: Connect to the lab environment and open SQL Server Management Studio 22

1.  Navigate to the Azure Portal at https://portal.azure.com

2.  Locate your lab resource group named SQL2025-Training-RG

3.  Click on the virtual machine named SQL2025-Lab-VM

4.  Click the Connect button at the top of the page

5.  Select RDP from the dropdown menu

6.  Click Download RDP File

7.  Open the downloaded RDP file and click Connect

8.  Enter the credentials provided in your lab instructions

9.  Once connected to the VM, click the Start menu

10. Type SSMS and press Enter to launch SQL Server Management Studio 22

    Expected Output: SQL Server Management Studio 22 Connect to Server dialog appears with Server type set to ‘Database Engine’ and Server name showing ‘localhost’ or the machine name

Verification: The SSMS title bar should display ‘Microsoft SQL Server Management Studio 22’

Step 2: Connect to the local SQL Server 2025 instance and verify the database version

1.  In the Connect to Server dialog: Server type: Database Engine Server name: localhost Authentication: Windows Authentication

2.  Click Connect

3.  Once connected, click New Query in the toolbar

4.  Execute the following query to verify SQL Server version:

                                                         65317A - Querying and Analyzing SQL Server 2025

    2-26 Module 2: Basic Transact-SQL and String Enhancements

SELECT @@VERSION AS SQLServerVersion;

5.  Execute this query to confirm the AdventureWorks2025 database exists:

    SELECT name, database_id, create_date FROM sys.databases WHERE name = ‘AdventureWorks2025’;

    Expected Output: The version query returns a string starting with ‘Microsoft SQL Server 2025 (RTM) - 17.0’ and the database query returns one row showing ‘AdventureWorks2025’ with its database_id and creation date

Verification: Object Explorer on the left shows ‘localhost’ as connected, and the query results confirm SQL Server 2025 version 17 and the AdventureWorks2025 database is present

Step 3: Set the database context and explore the Person.Person table structure

1.  In the query window, execute the following to set the database context:

    USE AdventureWorks2025; GO

2.  Examine the Person.Person table structure:

SELECT TOP 5 BusinessEntityID, PersonType, Title, FirstName, MiddleName, LastName, Suffix

FROM Person.Person;

3.  Check for NULL values in the name columns:

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 2: Basic Transact-SQL and String Enhancements 2-27

    SELECT COUNT(\*) AS TotalRows, COUNT(Title) AS TitleCount, COUNT(MiddleName) AS MiddleNameCount, COUNT(Suffix) AS SuffixCount

    FROM Person.Person;

    Expected Output: First query returns 5 rows with columns showing person information. Third query shows TotalRows around 19,972 but Title, MiddleName, and Suffix counts are lower, indicating NULL values exist in these columns

Verification: The query results display successfully and show that Title, MiddleName, and Suffix contain NULL values in many rows

Step 4: Create formatted full names using CONCAT function with column aliasing

1.  Write a query using CONCAT to combine name parts, handling NULLs automatically:

    SELECT TOP 10 BusinessEntityID, FirstName, MiddleName, LastName, CONCAT(FirstName, ’ ‘, MiddleName,’ ’, LastName) AS FullName

    FROM Person.Person WHERE MiddleName IS NOT NULL;

2.  Now create a version that handles missing middle names gracefully:

SELECT TOP 10 BusinessEntityID, CONCAT(FirstName, ’ ‘, LastName) AS FullNameSimple, CONCAT(Title,’ ‘, FirstName,’ ‘, MiddleName,’ ‘, LastName,’ ’, Suffix) AS FullNameComplete

FROM Person.Person;

3.  Observe how CONCAT handles NULL values by comparing it to the + operator:

                                                          65317A - Querying and Analyzing SQL Server 2025

    2-28 Module 2: Basic Transact-SQL and String Enhancements

    SELECT TOP 5 FirstName + ’ ’ + MiddleName + ’ ’ + LastName AS UsingPlus, CONCAT(FirstName, ’ ‘, MiddleName,’ ’, LastName) AS UsingCONCAT

    FROM Person.Person;

    Expected Output: First query shows 10 rows with properly formatted full names including middle names. Second query shows names with extra spaces where Title or Suffix is NULL. Third query shows NULL in the UsingPlus column when MiddleName is NULL, but UsingCONCAT shows the name without the middle part

Verification: The CONCAT function successfully handles NULL values by treating them as empty strings, while the + operator returns NULL when any operand is NULL

Step 5: Use CONCAT_WS to create cleaner formatted names without extra spaces

SQL Server 2025 provides CONCAT_WS (Concatenate With Separator) which automatically handles NULLs and spacing:

SELECT TOP 10 BusinessEntityID, FirstName, MiddleName, LastName, CONCAT_WS(’ ’, Title, FirstName, MiddleName, LastName, Suffix) AS FormattedName

FROM Person.Person ORDER BY BusinessEntityID;

Compare this with the regular CONCAT approach:

SELECT TOP 10 BusinessEntityID, CONCAT(Title, ’ ‘, FirstName,’ ‘, MiddleName,’ ‘, LastName,’ ‘, Suffix) AS RegularConcat, CONCAT_WS(’ ’, Title, FirstName, MiddleName, LastName, Suffix) AS ConcatWS

FROM Person.Person ORDER BY BusinessEntityID;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-29

    Expected Output:
     The CONCAT_WS column shows clean formatting like 'Ken S?nchez' or 'Terri Duffy' without extra
     spaces, while RegularConcat shows extra spaces where Title, MiddleName, or Suffix are NULL,
     such as ' Ken S?nchez ' with spaces at the beginning and double spaces in the middle

Verification: CONCAT_WS produces cleaner output by skipping NULL values entirely and not adding the separator for missing values

Step 6: Extract and manipulate substrings using SUBSTRING, LEFT, and RIGHT functions

1.  Extract initials from names using SUBSTRING and LEFT:

    SELECT TOP 10 FirstName, LastName, LEFT(FirstName, 1) AS FirstInitial, LEFT(LastName, 1) AS LastInitial, CONCAT(LEFT(FirstName, 1), ‘.’, LEFT(LastName, 1), ‘.’) AS Initials

    FROM Person.Person ORDER BY LastName;

2.  Use SUBSTRING to extract parts of email addresses from the EmailAddress table:

SELECT TOP 10 p.FirstName, p.LastName, e.EmailAddress, SUBSTRING(e.EmailAddress, 1, CHARINDEX(‘@’, e.EmailAddress) - 1) AS Username, SUBSTRING(e.EmailAddress, CHARINDEX(‘@’, e.EmailAddress) + 1, LEN(e.EmailAddress)) AS Domain

FROM Person.Person p INNER JOIN Person.EmailAddress e ON p.BusinessEntityID = e.BusinessEntityID ORDER BY p.LastName;

3.  Extract area codes from phone numbers:

                                                          65317A - Querying and Analyzing SQL Server 2025

    2-30 Module 2: Basic Transact-SQL and String Enhancements

    SELECTE TOP 10 pp.PhoneNumber, LEFT(pp.PhoneNumber, 3) AS AreaCode, RIGHT(pp.PhoneNumber, 4) AS LastFour, SUBSTRING(pp.PhoneNumber, 5, 3) AS Exchange

    FROM Person.PersonPhone pp WHERE LEN(pp.PhoneNumber) \>= 10;

    Expected Output: First query shows initials like ‘K.S.’ for Ken S?nchez. Second query splits email addresses into username (before @) and domain (after @). Third query extracts phone number parts showing area code, exchange, and last four digits

Verification: Verify that SUBSTRING correctly extracts portions based on starting position and length, and that LEFT/RIGHT extract from the respective ends of strings

Step 7: Apply TRIM functions to clean whitespace from data

1.  Create a temporary table with messy data to demonstrate trimming:

    CREATE TABLE \#MessyNames ( ID INT IDENTITY(1,1), NameData NVARCHAR(100)

    ); INSERT INTO \#MessyNames (NameData) VALUES (’ John Smith ‘), (’Mary Johnson’), (’ Robert ‘), (’ Lisa Williams ’);

2.  Use TRIM, LTRIM, and RTRIM to clean the data:

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 2: Basic Transact-SQL and String Enhancements 2-31

SELECT NameData AS Original, ‘\|’ + NameData + ‘\|’ AS WithMarkers, ‘\|’ + LTRIM(NameData) + ‘\|’ AS LeftTrimmed, ‘\|’ + RTRIM(NameData) + ‘\|’ AS RightTrimmed, ‘\|’ + TRIM(NameData) + ‘\|’ AS BothTrimmed, LEN(NameData) AS OriginalLength, LEN(TRIM(NameData)) AS TrimmedLength

FROM \#MessyNames;

3.  Demonstrate SQL Server 2025’s enhanced TRIM with specific characters:

    SELECT ‘\###Hello###’ AS Original, TRIM(‘\#’ FROM ‘\###Hello###’) AS TrimHash, TRIM(’\*’ FROM ‘***World***’) AS TrimAsterisk, TRIM(‘.’ FROM ‘…SQL Server…’) AS TrimDots;

    Expected Output: Second query shows pipe markers (\|) clearly indicating where spaces exist. WithMarkers column shows spaces on both sides like ‘\| John Smith \|’. BothTrimmed shows ‘\|John Smith\|’ with no spaces. Third query shows ‘Hello’, ‘World’, and ‘SQL Server’ with the specified characters removed from both ends

Verification: The pipe markers clearly show space removal, and LEN function confirms the trimmed strings are shorter than originals

Step 8: Transform text case using UPPER, LOWER, and format product names

1.  Query the Production.Product table and transform product names:

    SELECT TOP 10 ProductID, Name AS OriginalName, UPPER(Name) AS UpperCase, LOWER(Name) AS LowerCase, CONCAT(UPPER(LEFT(Name, 1)), LOWER(SUBSTRING(Name, 2, LEN(Name)))) AS ProperCase

    FROM Production.Product ORDER BY Name;

                                                          65317A - Querying and Analyzing SQL Server 2025

    2-32 Module 2: Basic Transact-SQL and String Enhancements

2.  Create formatted product codes combining category and ID:

SELECT TOP 10 p.ProductID, p.Name, pc.Name AS Category, CONCAT(UPPER(LEFT(pc.Name, 3)), ‘-’, RIGHT(‘0000’ + CAST(p.ProductID AS VARCHAR(10)), 5)) AS ProductCode

FROM Production.Product p INNER JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID INNER JOIN Production.ProductCategory pc ON ps.ProductCategoryID = pc.ProductCategoryID ORDER BY p.ProductID;

    Expected Output:
     First query shows product names in different cases: 'ADJUSTABLE RACE', 'adjustable race', and
     'Adjustable race'. Second query shows formatted product codes like 'BIK-00680' for Bikes or
     'COM-00707' for Components, with zero-padded 5-digit IDs

Verification: Text transformations work correctly and the ProductCode column shows uppercase category abbreviations with zero-padded product IDs

Step 9: Use REPLACE and REVERSE functions for data transformation

1.  Clean and standardize phone number formats using REPLACE:

    SELECT TOP 10 PhoneNumber AS Original, REPLACE(REPLACE(REPLACE(PhoneNumber, ‘(’, ’‘),’)‘,’‘),’-‘,’‘) AS DigitsOnly, CONCAT(’(‘, LEFT(PhoneNumber, 3),’) ‘, SUBSTRING(PhoneNumber, 4, 3),’-’, RIGHT(PhoneNumber, 4) ) AS Formatted

    FROM Person.PersonPhone WHERE LEN(PhoneNumber) = 10;

2.  Use REPLACE to anonymize email addresses for a report:

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 2: Basic Transact-SQL and String Enhancements 2-33

SELECT TOP 10 EmailAddress AS Original, CONCAT( LEFT(EmailAddress, 2), REPLICATE(’\*‘, CHARINDEX(’@‘, EmailAddress) - 3), RIGHT(EmailAddress, LEN(EmailAddress) - CHARINDEX(’@’, EmailAddress) + 1) ) AS Anonymized

FROM Person.EmailAddress;

3.  Demonstrate REVERSE function for validation or unique key generation:

    SELECT TOP 5 FirstName, LastName, REVERSE(FirstName) AS ReversedFirst, CONCAT(FirstName, REVERSE(LastName)) AS HybridKey

    FROM Person.Person WHERE FirstName = REVERSE(REVERSE(FirstName));

    Expected Output: First query shows phone numbers transformed from ‘425-555-0100’ to ‘4255550100’ (DigitsOnly) and ‘(425) 555-0100’ (Formatted). Second query shows emails like ’jo\*\*@adventure-works.com’ with the username partially masked. Third query shows reversed first names and hybrid keys combining normal and reversed names

Verification: REPLACE successfully removes or substitutes characters, and REVERSE correctly reverses the character order in strings

Step 10: Combine multiple string functions to create a formatted customer contact report

Create a comprehensive query that uses multiple string functions together:

                                                        65317A - Querying and Analyzing SQL Server 2025

2-34 Module 2: Basic Transact-SQL and String Enhancements

SELECT TOP 20 p.BusinessEntityID, CONCAT_WS(’ ‘, p.Title, p.FirstName, p.MiddleName, p.LastName) AS FullName, CONCAT(UPPER(LEFT(p.LastName, 1)), UPPER(LEFT(p.FirstName, 1))) AS NameCode, e.EmailAddress, LOWER(SUBSTRING(e.EmailAddress, 1, CHARINDEX(’@‘, e.EmailAddress) - 1)) AS EmailUser, pp.PhoneNumber, CONCAT(’(‘, LEFT(pp.PhoneNumber, 3),’) ‘, SUBSTRING(pp.PhoneNumber, 4, 3),’-’, RIGHT(pp.PhoneNumber, 4)) AS FormattedPhone, REVERSE(CONCAT(p.LastName, p.FirstName)) AS SortKey

FROM Person.Person p INNER JOIN Person.EmailAddress e ON p.BusinessEntityID = e.BusinessEntityID INNER JOIN Person.PersonPhone pp ON p.BusinessEntityID = pp.BusinessEntityID WHERE p.PersonType = ‘EM’

     AND LEN(pp.PhoneNumber) = 10

ORDER BY p.LastName, p.FirstName;

Save this query for the next step:

– Save query as: CustomerContactReport.sql in Documents folder

    Expected Output:
     Query returns up to 20 rows with formatted columns: FullName shows complete names without
     extra spaces, NameCode shows two-letter initials like 'SK' for S?nchez, Ken, EmailUser shows
     lowercase username portion, FormattedPhone shows '(425) 555-0100' format, and SortKey shows
     reversed concatenated names

Verification: All string functions work together correctly to produce a clean, formatted report with consistent data presentation

Step 11: Handle NULL values in string operations using ISNULL and COALESCE

1.  Demonstrate the difference between CONCAT and + operator with NULLs:

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 2: Basic Transact-SQL and String Enhancements 2-35

SELECT TOP 10 Title, FirstName, MiddleName, LastName, Title + ’ ’ + FirstName AS TitlePlusOperator, CONCAT(Title, ’ ‘, FirstName) AS TitleConcat, ISNULL(Title, ’No Title’) + ’ ’ + FirstName AS TitleISNULL, CONCAT(COALESCE(Title, ’‘),’ ’, FirstName) AS TitleCoalesce

FROM Person.Person ORDER BY BusinessEntityID;

2.  Create a robust full name formatter with COALESCE:

SELECT TOP 15 BusinessEntityID, CONCAT_WS(’ ‘, NULLIF(Title,’‘), FirstName, NULLIF(MiddleName,’‘), LastName, NULLIF(Suffix,’‘) ) AS FormattedNameConcatWS, TRIM(CONCAT( COALESCE(Title +’ ‘,’‘), FirstName, COALESCE(’ ’ + MiddleName, ’‘),’ ’ + LastName, COALESCE(’ ’ + Suffix, ’’) )) AS FormattedNameCoalesce

FROM Person.Person WHERE PersonType = ‘EM’ ORDER BY BusinessEntityID;

Expected Output: First query shows TitlePlusOperator column with NULL values when Title is NULL, while TitleConcat shows names like ’ Ken’ with leading space, TitleISNULL shows ‘No Title Ken’, and TitleCoalesce shows ’ Ken’. Second query shows both methods producing clean names without extra spaces: ‘Ken S?nchez’, ‘Terri Duffy’, ‘Ms. Gail Erickson’

                                                      65317A - Querying and Analyzing SQL Server 2025

2-36 Module 2: Basic Transact-SQL and String Enhancements

Verification: Observe how different NULL-handling functions affect string concatenation and formatting, with CONCAT_WS providing the cleanest results

Step 12: Test SQL Server 2025 string enhancement: STRING_SPLIT with ordinal support

SQL Server 2025 enhances STRING_SPLIT to include ordinal positioning:

– Split a comma-separated list with position tracking DECLARE @ProductList NVARCHAR(200) = ‘Mountain Bike,Road Bike,Touring Bike,Helmet,Gloves’;

SELECT value AS ProductName, ordinal AS Position

FROM STRING_SPLIT(@ProductList, ‘,’, 1) ORDER BY ordinal;

2.  Apply this to split and analyze product names with multiple words:

    SELECT TOP 5 p.ProductID, p.Name AS ProductName, words.value AS Word, words.ordinal AS WordPosition, LEN(words.value) AS WordLength

    FROM Production.Product p CROSS APPLY STRING_SPLIT(p.Name, ’ ‘, 1) AS words WHERE p.Name LIKE’% %’ ORDER BY p.ProductID, words.ordinal;

    Expected Output: First query returns 5 rows with ProductName and Position columns showing: ‘Mountain Bike’ (1), ‘Road Bike’ (2), ‘Touring Bike’ (3), ‘Helmet’ (4), ‘Gloves’ (5). Second query splits product names into individual words with their positions, such as ProductID 316 ‘Blade’ (position 1) and ProductID 317 showing ‘LL’ (1), ‘Crankarm’ (2)

Verification: The ordinal parameter (third argument as 1) returns the position of each split value, which is a SQL Server 2025 enhancement

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-37

Step 13: Create a summary query demonstrating all learned string functions

Build a comprehensive demonstration query:

WITH CustomerData AS ( SELECT TOP 25 p.BusinessEntityID, p.Title, p.FirstName, p.MiddleName, p.LastName, p.Suffix, e.EmailAddress, pp.PhoneNumber FROM Person.Person p INNER JOIN Person.EmailAddress e ON p.BusinessEntityID = e.BusinessEntityID INNER JOIN Person.PersonPhone pp ON p.BusinessEntityID = pp.BusinessEntityID WHERE p.PersonType = ‘EM’ AND LEN(pp.PhoneNumber) = 10

) SELECT

     BusinessEntityID AS ID,
      -- String concatenation with NULL handling
      CONCAT_WS(' ', Title, FirstName, MiddleName, LastName, Suffix) AS FullName,
      -- Case transformation and substring extraction
      CONCAT(UPPER(LEFT(LastName, 1)), LOWER(RIGHT(LastName, LEN(LastName)-1))) AS LastNameProper,
      -- String extraction and manipulation
      CONCAT(LEFT(FirstName, 1), '.', LEFT(LastName, 1), '.') AS Initials,
      -- Email manipulation
      LOWER(EmailAddress) AS Email,
      SUBSTRING(EmailAddress, 1, CHARINDEX('@', EmailAddress) - 1) AS Username,
      -- Phone formatting with REPLACE and CONCAT
      CONCAT('(', SUBSTRING(PhoneNumber, 1, 3), ') ',

            SUBSTRING(PhoneNumber, 4, 3), '-',
            SUBSTRING(PhoneNumber, 7, 4)) AS Phone,
      -- Trimming and length
      LEN(TRIM(CONCAT_WS(' ', FirstName, MiddleName, LastName))) AS NameLength,
      -- Reverse for unique key
      UPPER(REVERSE(CONCAT(LEFT(FirstName, 3), LEFT(LastName, 3)))) AS UniqueCode

FROM CustomerData ORDER BY LastName, FirstName;

Execute and review all columns.

                                                        65317A - Querying and Analyzing SQL Server 2025

2-38 Module 2: Basic Transact-SQL and String Enhancements

    Expected Output:
     Query returns 25 rows with formatted data: FullName without extra spaces, LastNameProper
     with first letter uppercase, Initials like 'K.S.', lowercase Email, Username extracted, Phone
     formatted as '(425) 555-0100', NameLength showing character count, and UniqueCode showing
     reversed name parts in uppercase like 'NASNEK' for Ken S?nchez

Verification: All string functions work together in a complex query producing clean, properly formatted output suitable for a professional report

Step 14: Save your work and document the query patterns used

1.  In SSMS, click File \> Save As

2.  Navigate to C:

3.  Create the folder if it doesn’t exist

4.  Save the comprehensive query as StringFunctionsDemo.sql

5.  Create a documentation comment block at the top of the file:

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 2: Basic Transact-SQL and String Enhancements 2-39

/\* Module 2 Lab: String Manipulation and Data Transformation SQL Server 2025 (Version 17) Date: \[Current Date\]

    Key Functions Demonstrated:
     - CONCAT, CONCAT_WS: String concatenation with NULL handling
     - SUBSTRING, LEFT, RIGHT: String extraction
     - TRIM, LTRIM, RTRIM: Whitespace removal
     - UPPER, LOWER: Case transformation
     - REPLACE: Character substitution
     - REVERSE: String reversal
     - STRING_SPLIT: Enhanced split with ordinal (2025 feature)
     - COALESCE, ISNULL: NULL handling
     - CHARINDEX, LEN: String analysis

     Best Practices Applied:
     - Use CONCAT_WS for cleaner concatenation with NULLs
     - Apply TRIM to remove unwanted whitespace
     - Use COALESCE for multiple NULL alternatives
     - Leverage column aliases for readable output

\*/

– \[Your query here\]

6.  Save the file again with the documentation Verification: File saved successfully to C:.sql with documentation header

Step 15: Clean up temporary objects and verify your learning

1.  Drop the temporary table created earlier:

    IF OBJECT_ID(‘tempdb..#MessyNames’) IS NOT NULL DROP TABLE \#MessyNames;

2.  Execute a final verification query that tests your understanding:

                                                         65317A - Querying and Analyzing SQL Server 2025

    2-40 Module 2: Basic Transact-SQL and String Enhancements

SELECT ‘String Functions’ AS Category, COUNT(DISTINCT p.BusinessEntityID) AS PersonCount, COUNT(DISTINCT e.EmailAddress) AS EmailCount, AVG(LEN(CONCAT_WS(’ ’, p.FirstName, p.MiddleName, p.LastName))) AS AvgNameLength

FROM Person.Person p LEFT JOIN Person.EmailAddress e ON p.BusinessEntityID = e.BusinessEntityID WHERE p.PersonType = ‘EM’;

3.  Close all query windows in SSMS

4.  Review the Object Explorer to confirm you’re still connected to AdventureWorks2025

    Expected Output: First query executes without error (temp table dropped). Second query returns one row showing Category ‘String Functions’, PersonCount around 290, EmailCount around 290, and AvgNameLength approximately 15-20 characters

Verification: Temp table is removed, verification query runs successfully, and SSMS remains connected to the database

Troubleshooting

    Problem: Error: 'Invalid object name Person.Person' when executing queries
     Solution: Ensure you have executed 'USE AdventureWorks2025;' to set the correct database
     context. Verify the database name in Object Explorer. The database may be named slightly
     differently (e.g., AdventureWorks2022). Adjust the USE statement accordingly or restore the
     correct AdventureWorks2025 database from the lab setup files.

     Problem: CONCAT_WS or STRING_SPLIT with ordinal parameter not recognized
     Solution: Verify you are connected to SQL Server 2025 (version 17) by running 'SELECT
     @@VERSION;'. If using an older version, CONCAT_WS is available in SQL Server 2017+, but
     STRING_SPLIT with the ordinal parameter requires SQL Server 2022 or later. For the lab, ensure
     SQL Server 2025 is properly installed. If ordinal is not supported, use ROW_NUMBER() OVER
     (ORDER BY (SELECT NULL)) as an alternative.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-41

Problem: Query returns NULL when concatenating with + operator instead of expected values Solution: This is expected behavior when any operand is NULL. The + operator returns NULL if any value in the concatenation is NULL. Use CONCAT or CONCAT_WS instead, which treat NULL as an empty string. Alternatively, wrap values with ISNULL() or COALESCE() when using the + operator: ISNULL(Title, ’‘) +’ ’ + FirstName. Problem: CHARINDEX returns 0 causing SUBSTRING to fail with error ‘Invalid length parameter’ Solution: CHARINDEX returns 0 when the search string is not found. Before using CHARINDEX in SUBSTRING, verify the character exists: WHERE CHARINDEX(‘@’, EmailAddress) \> 0. Or wrap in a CASE statement: CASE WHEN CHARINDEX(‘@’, EmailAddress) \> 0 THEN SUBSTRING(…) ELSE EmailAddress END. Problem: Phone number formatting query produces incorrect results with shorter or longer numbers Solution: The formatting query assumes exactly 10-digit phone numbers. Add a WHERE clause to filter: WHERE LEN(PhoneNumber) = 10. For variable-length numbers, use conditional logic with CASE statements to handle different formats. Check the PhoneNumberType to understand different number formats in the database.

                                                  65317A - Querying and Analyzing SQL Server 2025

2-42 Module 2: Basic Transact-SQL and String Enhancements

      Common Student Errors
     SUBSTRING position off-by-one (using 0 instead of 1, or extracting wrong characters)
     Create a reference on the board: 'Position 1 = first character.' Have student trace through
     SUBSTRING(string, position, length) step-by-step with a simple example like 'SUBSTRING("Hello",
     2, 3)' = 'ell'.
     NULL values silently breaking concatenation (using + instead of CONCAT)
     Show the difference live: SELECT 'Name: ' + FirstName returns NULL if FirstName is NULL. Then:
     SELECT CONCAT('Name: ', FirstName) returns 'Name: ' for NULL values. Reinforce CONCAT as best
     practice.
     Comparing NULL values with = operator instead of IS NULL
     Explain NULL is unknown--'WHERE MiddleName = NULL' returns zero rows (logically correct).
     Show the fix: 'WHERE MiddleName IS NULL'. Execute both queries to show the difference.
     Forgetting AS keyword or using ambiguous aliases
     Encourage explicit 'AS' syntax. If they use implicit aliases, confirm intent. Remind: aliases only
     work in SELECT and ORDER BY clauses, not WHERE.
     String functions on non-string columns (dates, numbers) producing errors
     Show explicit CAST: CAST(OrderDate AS VARCHAR) before SUBSTRING. Discuss data type
     conversion and when it's necessary.
     TRIM not removing internal spaces or expecting it to compress multiple spaces
     Clarify: TRIM removes leading/trailing spaces only, not internal spaces. For internal spaces, use
     REPLACE(string, ' ', ' ') iteratively or use REGEXP_REPLACE if available.

Challenge Exercise

Customer Mailing List Generator

Create a comprehensive stored procedure that generates a formatted mailing list report for the Sales.Customer table. Requirements: 1. Create a stored procedure named usp_GenerateMailingList that accepts:

         @PersonType parameter (default 'EM' for Employee)

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 2: Basic Transact-SQL and String Enhancements 2-43

         @FormatStyle parameter: 'FORMAL' or 'CASUAL' (default 'FORMAL')

2.  Return formatted columns:

           CustomerID : The BusinessEntityID
           FormattedName : Full name formatted based on @FormatStyle

               FORMAL: Include title and suffix (e.g., "Ms. Gail Erickson Sr.")
               CASUAL: First name and last initial only (e.g., "Gail E.")
           EmailAddress : Lowercase email
           PhoneNumber : Formatted as (XXX) XXX-XXXX
           NameLength : Total length of the person's full name (without title/suffix)
           Salutation : Appropriate greeting ("Dear Mr. Lastname" or "Dear Firstname")

3.  Additional challenges: Handle missing middle names, titles, and suffixes gracefully Ensure no extra spaces in any output Filter out any records with missing email addresses Sort results by LastName, then FirstName Add comprehensive error handling Include comments documenting your string function choices

4.  Test your procedure with both format styles and verify the output meets all requirements

5.  Bonus: Create a second version that exports the results to a formatted CSV string using STRING_AGG (available in SQL Server 2017+) Success Criteria: Your procedure should handle all edge cases (NULLs, varying name lengths, missing data) and produce clean, consistent formatting suitable for external communication. Document any assumptions you make about the data.

                                                         65317A - Querying and Analyzing SQL Server 2025

    2-44 Module 2: Basic Transact-SQL and String Enhancements

    Hints: Challenge Exercise (if included): Create a formatted phone number or standardized name display. Hints to guide students: (1) Start with TRIM + UPPER/LOWER for data cleaning, (2) Use SUBSTRING or LEFT/RIGHT to extract parts, (3) Use CONCAT or + to reassemble with formatting (dashes, parentheses), (4) Test with NULL values and edge cases, (5) Consider: What if phone is incomplete? Use ISNULL/COALESCE as fallback. Scaffold the challenge: provide template with placeholders, let students fill in function names. Encourage students to test queries on 5-10 sample rows before scaling to full dataset.

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 2: Basic Transact-SQL and String Enhancements 2-45

Answer Key

1.  What is the primary advantage of using explicit column names instead of SELECT \* in production queries?

    1)  It improves query performance and reduces unnecessary data transfer
    2)  It makes the query execute faster in all cases
    3)  It prevents syntax errors in SQL Server
    4)  It automatically creates column aliases

    Answer: A Using explicit column names improves performance by reducing data transfer, enhances readability, and makes queries more maintainable when table structures change. While it can improve speed, option B is too absolute. Options C and D are incorrect.

2.  Which statement correctly creates a column alias with spaces in the name?

    1)  SELECT FirstName AS First Name FROM Customers;
    2)  SELECT FirstName AS \[First Name\] FROM Customers;
    3)  SELECT FirstName AS ‘First Name’ FROM Customers;
    4)  SELECT FirstName AS First_Name FROM Customers;

    Answer: B Square brackets \[ \] are required for aliases containing spaces or special characters in T-SQL. Option A will cause a syntax error, option C uses single quotes (not standard for aliases), and option D uses an underscore instead of a space.

3.  What is the key difference between using the + operator and the CONCAT function for string concatenation?

    1)  The + operator is faster than CONCAT

    2)  CONCAT automatically handles NULL values by treating them as empty strings

    3)  The + operator can combine more than two strings

                                                          65317A - Querying and Analyzing SQL Server 2025

        2-46 Module 2: Basic Transact-SQL and String Enhancements

    4)  CONCAT requires SQL Server 2025 or later

    Answer: B CONCAT’s primary advantage is automatic NULL handling–it treats NULL as an empty string, preventing NULL propagation. The + operator causes the entire result to become NULL if any operand is NULL. Both methods have similar performance, both can combine multiple values, and CONCAT has been available since SQL Server 2012. Note: CONCAT_WS, featured heavily in the lab, requires SQL Server 2017+ and provides even cleaner handling by skipping NULL values without extra separators.

4.  Given the string ‘SQL2025’, what does SUBSTRING(‘SQL2025’, 4, 4) return?

    1)  ‘2025’
    2)  ‘SQL2’
    3)  ‘025’
    4)  ‘L202’

    Answer: A SUBSTRING uses 1-based indexing. Starting at position 4 (the ‘2’ in ‘2025’) and extracting 4 characters returns ‘2025’. Remember that T-SQL string positions start at 1, not 0.

5.  Which SQL Server 2025 enhancement allows TRIM to remove specific characters beyond whitespace?

    1)  TRIM can now use regular expressions
    2)  TRIM supports custom character sets and directional control
    3)  TRIM automatically detects and removes all punctuation
    4)  TRIM now works with binary data types

    Answer: B SQL Server 2025 enhances TRIM to support custom character sets for removal and directional control (LEADING, TRAILING, or BOTH). It does not use regular expressions, does not automatically remove all punctuation, and is designed for character data, not binary.

6.  What does the REPLACE(‘Phone: 555-1234’, ‘-’, ‘.’) function return?

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 2: Basic Transact-SQL and String Enhancements 2-47

    1)  ‘Phone. 555.1234’
    2)  ‘Phone: 555.1234’
    3)  ‘Phone- 555-1234’
    4)  ‘555.1234’ Answer: B REPLACE substitutes all occurrences of the second parameter (‘-’) with the third parameter (‘.’), resulting in ‘Phone: 555.1234’. Only the hyphen between 555 and 1234 is replaced; the rest of the string remains unchanged.

7.  Which function would you use to extract the last 4 characters from a phone number stored as ‘(555) 123-4567’?

    1)  LEFT(‘(555) 123-4567’, 4)
    2)  RIGHT(‘(555) 123-4567’, 4)
    3)  SUBSTRING(‘(555) 123-4567’, -4, 4)
    4)  REVERSE(‘(555) 123-4567’) Answer: B RIGHT extracts characters from the end of a string, making it ideal for this scenario. It would return ‘4567’. LEFT extracts from the beginning, SUBSTRING doesn’t support negative positions in T-SQL, and REVERSE would reverse the entire string.

8.  What new capability does STRING_SPLIT gain in SQL Server 2025?

    1)  Support for multiple delimiter characters

    2)  Automatic data type conversion

    3)  Ordinal position information for split elements

    4)  Case-insensitive splitting

                                                          65317A - Querying and Analyzing SQL Server 2025

        2-48 Module 2: Basic Transact-SQL and String Enhancements

    Answer: C SQL Server 2025 enhances STRING_SPLIT with an optional third parameter that enables ordinal output, preserving the position of each element in the original string. This is crucial for maintaining sequence in delimited data.

9.  When would you use COALESCE instead of ISNULL for NULL handling?

    1)  When you need better performance
    2)  When you need to check multiple values and return the first non-NULL
    3)  When working with numeric data only
    4)  When concatenating more than two strings Answer: B COALESCE accepts multiple parameters and returns the first non-NULL value, making it more flexible than ISNULL (which accepts only two parameters). Performance is similar, both work with various data types, and neither is specifically for string concatenation.

10. What is the result of UPPER(TRIM(’ hello world ’))?

    1)  ’ HELLO WORLD ’

    2)  ‘HELLO WORLD’

    3)  ‘Hello World’

    4)  ‘hello world’ Answer: B The nested functions execute from inside out: TRIM first removes leading and trailing whitespace, resulting in ‘hello world’, then UPPER converts it to ‘HELLO WORLD’. Function composition allows powerful transformations in a single expression.

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 2: Basic Transact-SQL and String Enhancements 2-49

Module Summary

This module introduced fundamental Transact-SQL concepts, focusing on SELECT statement structure and string manipulation capabilities. You learned how to write effective queries using explicit column selection and aliases, apply essential string functions like CONCAT, SUBSTRING, TRIM, and REPLACE, and leverage SQL Server 2025’s enhanced string processing features. Understanding NULL handling in string operations ensures reliable data transformations. These foundational skills prepare you to retrieve, format, and transform textual data for business reporting and analysis.

                                                        65317A - Querying and Analyzing SQL Server 2025

2-50 Module 2: Basic Transact-SQL and String Enhancements

Discussion Prompts

     1. In a real ETL pipeline, you receive customer data with inconsistent formatting: some names
          are UPPERCASE, others are MixedCase; phone numbers have and without dashes; addresses
          have extra spaces. Walk through the string functions you'd use in what order to standardize
          this data, and explain why ordering matters.

      2. Your report query uses SUBSTRING to extract area codes from phone numbers. A user
          notices the results are unpredictable for some rows, and investigation reveals certain phone
          columns contain NULL values. How would you diagnose this with a test query, and what SQL
          solutions would you propose to handle this robustly?

      3. Compare CONCAT vs. the + operator for building formatted strings. In what situations would
          you choose one over the other? Discuss performance, readability, and NULL handling
          implications, and provide a real scenario where the choice matters significantly.

                                                         65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

                  Module 3: Filtering and Sorting Data

                                                           65317A
                                   3-day course ? 10 modules ? beginner level

Contents

Module 3: Filtering and Sorting Data

Lesson 1: Introduction to Data Filtering and Sorting Lesson 2: WHERE Clause Fundamentals and Comparison Operators Lesson 3: Logical Operators: Combining Multiple Conditions Lesson 4: Pattern Matching with LIKE and Wildcards Lesson 5: Range and List Filtering with BETWEEN and IN Lesson 6: Handling NULL Values with IS NULL and IS NOT NULL Lesson 7: Sorting Results with ORDER BY Lab: Filtering and Sorting Customer Order Data Answer Key Module Summary

Day 1 Capstone Lab: Healthcare Provider Analytics: Patient Visit Data Quality and Reporting Initiative  Module 3: Filtering and Sorting Data 3-1

Learning Objectives

After completing this module, you will be able to: Implement WHERE clauses with comparison and logical operators Filter data using LIKE, IN, BETWEEN, and IS NULL predicates Sort query results using ORDER BY with multiple columns Combine filtering and sorting for precise data retrieval

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                  65317A - Querying and Analyzing SQL Server 2025

3-2 Module 3: Filtering and Sorting Data

      Module Overview
     This Module covers the essential techniques for filtering and sorting data in SQL queries, enabling
     students to retrieve precisely the data they need from databases. Students will progress from
     basic comparison operators through complex logical combinations, pattern matching, and NULL
     handling, then apply these skills to real-world customer order scenarios. Total estimated delivery
     time: 180-210 minutes (3-3.5 hours).

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-3

Lesson 1: Introduction to Data Filtering and Sorting

      Estimated Time: 15 minutes

Introduction to Data Filtering and Sorting

In the previous module, you learned to retrieve data using SELECT statements. However, production databases often contain millions of records, and returning all rows rarely meets business requirements. Filtering and sorting are essential techniques that transform raw data retrieval into actionable information. The WHERE clause acts as a gatekeeper, evaluating each row against specified conditions and returning only those that meet your criteria. Think of it as a quality control checkpoint: every record must pass your test to appear in results. Combined with the ORDER BY clause, which arranges results in meaningful sequences, you gain precise control over both what data appears and how it’s presented.

Real-World Applications

Consider an e-commerce platform during a holiday sale. Marketing needs to identify customers who spent over \$500 in the past month, sorted by purchase date. Customer service requires a list of all orders with “pending” status, ordered by urgency. Inventory management needs products where stock levels fall below reorder thresholds, sorted by supplier. Each scenario demands specific filtering criteria and sorting logic. Mastering these techniques enables you to answer business questions quickly and accurately, transforming database queries from simple data dumps into strategic decision-support tools. This module builds the foundation for sophisticated data analysis by teaching you to ask precise questions and receive organized answers.

                                                        65317A - Querying and Analyzing SQL Server 2025

3-4 Module 3: Filtering and Sorting Data

Illustration showing a large stream of data flowing through a funnel-shaped filter, with only selected records emerging organized and sorted on the other side

    Key Takeaways
          WHERE clause filters rows based on specified conditions
          ORDER BY clause sorts results in ascending or descending order
          Combining filtering and sorting delivers precise, actionable results
          These techniques are fundamental to real-world data analysis scenarios

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-5

Instructor Notes Talking Points:

Filtering reduces result sets to only relevant data, improving query efficiency and readability Sorting allows users to organize results in meaningful ways for business analysis WHERE clause is executed BEFORE SELECT, so it filters before displaying results Real-world analogy: filtering is like searching a catalog by criteria, sorting is like arranging results by price or popularity Demo Suggestion: Run a simple query with and without WHERE clause on sample customer data; show the performance difference in execution time for large datasets. Demonstrate how the same data can tell different stories when sorted differently. Common Student Questions: Q: Does WHERE clause slow down queries? A: Actually, WHERE clauses can improve performance by reducing the amount of data the database needs to process and return. They should be used liberally. Q: Can I use column aliases in WHERE clause? A: No, WHERE is evaluated before SELECT aliases are assigned. Use the original column name in WHERE; you can filter on aliases in HAVING clause when working with GROUP BY.

                                                  65317A - Querying and Analyzing SQL Server 2025

3-6 Module 3: Filtering and Sorting Data

Lesson 2: WHERE Clause Fundamentals and Comparison Operators

      Estimated Time: 25 minutes

Basic WHERE Clause Syntax

The WHERE clause follows the FROM clause in a SELECT statement and specifies conditions that rows must satisfy. Its basic syntax is:

SELECT column_list FROM table_name WHERE condition;

SQL Server evaluates each row against the condition. Only rows where the condition evaluates to TRUE appear in results. Rows evaluating to FALSE or UNKNOWN (involving NULL values) are excluded.

Comparison Operators

Comparison operators test relationships between values. SQL Server supports six primary operators:

= (equal to): Tests for exact matches \<\> (not equal to): Identifies non-matching values (also written as !=) \< (less than): Returns values below the specified threshold \> (greater than): Returns values above the specified threshold \<= (less than or equal to): Includes the boundary value \>= (greater than or equal to): Includes the boundary value

Practical Examples

To find products priced exactly at \$29.99:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-7

SELECT ProductName, ListPrice FROM Products WHERE ListPrice = 29.99;

To identify high-value orders exceeding \$1000:

SELECT OrderID, OrderDate, TotalAmount FROM Orders WHERE TotalAmount \> 1000;

Comparison operators work with numeric, date, and character data types. When comparing dates, SQL Server treats later dates as “greater than” earlier dates. String comparisons follow alphabetical order, with case sensitivity depending on database collation settings. Best Practice: Always consider data types when using comparison operators. Comparing incompatible types can lead to implicit conversions, affecting performance and potentially producing unexpected results.

Infographic showing six comparison operators as decision gates, each with example values passing or being blocked based on the operator’s rule

                                                        65317A - Querying and Analyzing SQL Server 2025

3-8 Module 3: Filtering and Sorting Data

    Key Takeaways
          WHERE clause filters rows by evaluating conditions as TRUE, FALSE, or UNKNOWN
          Six comparison operators enable equality, inequality, and range testing
          Operators work across numeric, date, and character data types
          Data type compatibility is essential for accurate comparisons

       Instructor Notes
     Talking Points:

          Comparison operators: =, <>, <, >, <=, >= are the building blocks of filtering
          = tests for exact equality; <> (or !=) tests for inequality
          String comparisons are case-sensitive in most SQL databases (varies by collation settings)
          Date comparisons treat dates as comparable values; use appropriate date formats
          Numeric comparisons are straightforward but watch for data type mismatches
          Multiple WHERE conditions default to AND logic when using AND keyword explicitly
     Demo Suggestion: Live-code filtering examples: find all customers in a specific city (=), find
     orders over $100 (>), find products under $50 (<=). Show how changing one operator completely
     changes results. Demonstrate a failed comparison with mismatched data types and explain the
     fix.
     Common Student Questions:
     Q: Is <> the same as !=?
     A: Yes, both mean 'not equal to.' The <> syntax is ANSI standard and more widely portable across
     different SQL dialects, so it's preferred.
     Q: How do I compare dates in WHERE clause?
     A: Use the CAST() function or DATE() function to ensure consistent formatting. Example: WHERE
     order_date > CAST('2024-01-01' AS DATE) or WHERE DATE(order_date) > '2024-01-01'
     Q: What happens if I compare a string to a number?
     A: The database will attempt implicit type conversion, which may succeed unexpectedly or fail.
     Always use explicit CAST() to convert data types deliberately and avoid ambiguity.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-9

Lesson 3: Logical Operators: Combining Multiple Conditions

      Estimated Time: 30 minutes

Building Complex Filters

Single comparison operators often prove insufficient for real-world queries. Logical operators combine multiple conditions, creating sophisticated filters that mirror business logic. SQL Server provides three logical operators: AND, OR, and NOT.

AND Operator

The AND operator requires all conditions to be TRUE. Use AND when records must satisfy multiple criteria simultaneously:

SELECT ProductName, ListPrice, Category FROM Products WHERE Category = ‘Electronics’

    AND ListPrice > 500
     AND InStock = 1;

This query finds expensive, available electronics–all three conditions must be TRUE.

OR Operator

The OR operator returns rows where at least one condition is TRUE. Use OR for alternative criteria:

SELECT CustomerName, City, State FROM Customers WHERE State = ‘CA’

    OR State = 'NY'
     OR State = 'TX';

This retrieves customers from any of the three states.

                                                        65317A - Querying and Analyzing SQL Server 2025

3-10 Module 3: Filtering and Sorting Data

NOT Operator

The NOT operator reverses a condition’s logic, returning rows where the condition is FALSE:

SELECT OrderID, Status FROM Orders WHERE NOT Status = ‘Completed’;

This finds all incomplete orders.

Combining Operators with Parentheses

When mixing AND and OR, use parentheses to control evaluation order:

SELECT ProductName, Category, ListPrice FROM Products WHERE (Category = ‘Electronics’ OR Category = ‘Computers’)

    AND ListPrice < 1000;

Without parentheses, SQL Server evaluates AND before OR, potentially producing unexpected results. Parentheses make your intent explicit and ensure correct logic execution.

Illustration showing three pathways representing AND, OR, and NOT logic, with data flowing through gates that either combine or diverge based on the logical operator

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-11

Key Takeaways AND requires all conditions to be TRUE; use for restrictive filters OR requires at least one condition to be TRUE; use for alternative criteria NOT reverses condition logic, finding opposite results Parentheses control evaluation order and clarify complex logic

Instructor Notes Talking Points:

AND requires ALL conditions to be TRUE; use when narrowing results OR requires AT LEAST ONE condition to be TRUE; use when broadening results NOT inverts the result; be careful with NOT and NULL values Operator precedence: AND is evaluated before OR (use parentheses for clarity) Always use parentheses when mixing AND/OR to make logic explicit and maintainable Complex conditions with many OR clauses often indicate need for IN operator instead Demo Suggestion: Build a query step-by-step, starting with one condition, then adding AND to narrow results, then adding OR options. Show how parentheses change the query behavior: (A OR B) AND C versus A OR (B AND C). Demonstrate a query where removing parentheses changes the result entirely. Common Student Questions: Q: Should I use AND or OR more often? A: Depends on your data goal. AND is more common for real-world filtering (e.g., ‘customers in CA AND with orders \> \$1000’). Use OR carefully as it can unexpectedly return more rows than intended. Q: How do I handle NOT with multiple conditions? A: Use De Morgan’s Laws: NOT (A AND B) becomes (NOT A) OR (NOT B). Use parentheses for clarity: WHERE NOT (status = ‘inactive’ AND age \< 18)

                                                  65317A - Querying and Analyzing SQL Server 2025

3-12 Module 3: Filtering and Sorting Data

Lesson 4: Pattern Matching with LIKE and Wildcards

      Estimated Time: 25 minutes

Flexible Text Searches

Exact matching with the equals operator (=) works well when you know the precise value. However, many scenarios require pattern matching–finding values that partially match a template. The LIKE operator combined with wildcards enables flexible text searches.

Wildcard Characters

SQL Server supports four wildcard characters: % (percent): Matches any sequence of zero or more characters \_ (underscore): Matches exactly one character \[ \] (brackets): Matches any single character within the brackets \[^\] (caret in brackets): Matches any single character not within the brackets

Common LIKE Patterns

Find customers whose names start with “John”:

SELECT CustomerName FROM Customers WHERE CustomerName LIKE ‘John%’;

Find products containing “Pro” anywhere in the name:

SELECT ProductName FROM Products WHERE ProductName LIKE ‘%Pro%’;

Find phone numbers with a specific area code pattern:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-13

SELECT CustomerName, Phone FROM Customers WHERE Phone LIKE ‘(555) ***-***\_’;

Find products starting with any vowel:

SELECT ProductName FROM Products WHERE ProductName LIKE ‘\[AEIOU\]%’;

Performance Considerations

LIKE patterns starting with wildcards (e.g., ‘%search’) prevent index usage and scan entire tables. When possible, place wildcards at the end of patterns (‘search%’) to leverage indexes. For complex text searches requiring full-text capabilities, consider SQL Server’s Full-Text Search feature instead of LIKE.

Illustration showing a search magnifying glass examining text strings, with visual representations of wildcard characters matching different patterns of text

                                                        65317A - Querying and Analyzing SQL Server 2025

3-14 Module 3: Filtering and Sorting Data

    Key Takeaways
          LIKE operator enables pattern matching for flexible text searches
          Four wildcard characters provide varying levels of match specificity
          Leading wildcards (e.g., '%text') prevent index usage and reduce performance
          Position wildcards strategically to balance flexibility and performance

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-15

Instructor Notes Talking Points:

LIKE enables partial string matching; it’s case-insensitive in most databases % wildcard matches zero or more characters; \_ wildcard matches exactly one character %search% finds ‘search’ anywhere in the string; search% finds it at the start LIKE is slower than exact matching on indexed columns; use when necessary but not for exact matches ESCAPE keyword allows matching literal % or \_ characters in the data Always consider performance: LIKE ‘%text%’ cannot use indexes efficiently Demo Suggestion: Live-code LIKE examples with customer names: ‘John%’ finds Johns, ‘Jo_n’ finds Joan and John but not Johnson. Show LIKE with email patterns. Demonstrate why ‘%pattern%’ is slower by running EXPLAIN PLAN. Show ESCAPE clause usage with real data containing special characters. Common Student Questions: Q: Why is LIKE slower than = ? A: LIKE with leading wildcards (%pattern) cannot use database indexes efficiently because the database can’t know where to start searching. Use exact matching or FULL-TEXT SEARCH for better performance on large datasets. Q: Is LIKE case-sensitive? A: It depends on the database collation setting. MySQL is case-insensitive by default; SQL Server and PostgreSQL are case-sensitive by default. Use UPPER() or LOWER() to normalize: WHERE UPPER(name) LIKE UPPER(‘%john%’) Q: What’s the difference between \_ and %? A: % matches any number of characters (0 or more), \_ matches exactly one character. So ‘A\_%’ matches any string starting with A and having at least 2 characters; ‘A\_’ matches exactly 2- character strings starting with A.

                                                  65317A - Querying and Analyzing SQL Server 2025

3-16 Module 3: Filtering and Sorting Data

Lesson 5: Range and List Filtering with BETWEEN and IN

      Estimated Time: 25 minutes

Efficient Range Testing

The BETWEEN operator tests whether a value falls within a specified range, inclusive of boundary values. BETWEEN provides cleaner syntax and better readability than combining comparison operators:

SELECT ProductName, ListPrice FROM Products WHERE ListPrice BETWEEN 50 AND 100;

This is equivalent to but more readable than:

WHERE ListPrice \>= 50 AND ListPrice \<= 100

BETWEEN works with numeric, date, and text values. For dates, it’s particularly useful:

SELECT OrderID, OrderDate, TotalAmount FROM Orders WHERE OrderDate BETWEEN ‘2024-01-01’ AND ‘2024-12-31’;

Matching Against Value Lists

The IN operator tests whether a value matches any item in a list, replacing multiple OR conditions:

SELECT CustomerName, State FROM Customers WHERE State IN (‘CA’, ‘NY’, ‘TX’, ‘FL’);

This is more concise than:

WHERE State = ‘CA’ OR State = ‘NY’ OR State = ‘TX’ OR State = ‘FL’

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-17

IN also works with subqueries (covered in later modules), enabling dynamic value lists:

SELECT ProductName FROM Products WHERE CategoryID IN (SELECT CategoryID FROM Categories WHERE Active = 1);

NOT with BETWEEN and IN

Both operators support negation using NOT:

WHERE ListPrice NOT BETWEEN 50 AND 100 WHERE State NOT IN (‘CA’, ‘NY’, ‘TX’)

Best Practice: Use BETWEEN and IN to improve query readability and maintainability. These operators communicate intent clearly and reduce the chance of logic errors in complex conditions.

Infographic showing BETWEEN as a range slider with values inside and outside the boundaries, and IN as a matching game with values tested against a set of acceptable options

    Key Takeaways
         BETWEEN tests inclusive range membership for numeric, date, and text values
         IN tests membership against a list of discrete values
         Both operators improve readability compared to equivalent AND/OR logic
         NOT negates BETWEEN and IN for exclusion filtering

                                                         65317A - Querying and Analyzing SQL Server 2025

3-18 Module 3: Filtering and Sorting Data

      Instructor Notes
     Talking Points:

          BETWEEN is inclusive on both ends (equivalent to >= AND <=)
          BETWEEN works with numbers, dates, and strings (alphabetically)
          IN checks if a value exists in a list; more readable than multiple OR conditions
          IN is more efficient than OR when checking against a fixed list of values
          NOT BETWEEN and NOT IN are the inverses
          IN with subqueries is powerful but can impact performance; use WHERE IN (SELECT ...)
          judiciously
     Demo Suggestion: Show BETWEEN with dates (orders from Jan 1 to Dec 31, 2024), numbers
     (prices $50-$200), and strings. Convert multiple ORs into IN clause: (status = 'active' OR status =
     'pending' OR status = 'processing') becomes (status IN ('active', 'pending', 'processing')).
     Demonstrate IN with hardcoded values vs. IN with subquery.
     Common Student Questions:
     Q: Is BETWEEN inclusive or exclusive?
     A: BETWEEN is INCLUSIVE on both ends. BETWEEN 1 AND 10 includes both 1 and 10. If you need
     exclusive, use > AND < instead.
     Q: Can I use IN with different data types?
     A: Avoid mixing data types in IN lists. Use IN ('a', 'b', 'c') for strings, IN (1, 2, 3) for numbers. The
     database will attempt conversion but it's unpredictable.
     Q: When should I use IN vs OR?
     A: Use IN when checking against a list of discrete values; it's more readable. Use OR when
     checking complex conditions like (age > 30 AND status = 'active') OR (age < 18 AND status =
     'student'). IN with subqueries should be avoided if possible in favor of JOINs.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-19

Lesson 6: Handling NULL Values with IS NULL and IS NOT NULL

      Estimated Time: 20 minutes

Understanding NULL

NULL represents the absence of a value–it’s neither zero nor an empty string. NULL indicates unknown, missing, or inapplicable data. Understanding NULL behavior is critical because it affects filtering logic in unexpected ways. Standard comparison operators (=, \<\>, \<, \>) cannot test for NULL. The expression WHERE MiddleName = NULL always returns zero rows, even if middle names are missing. SQL Server uses three-valued logic: conditions evaluate to TRUE, FALSE, or UNKNOWN (when NULL is involved).

Testing for NULL Values

Use IS NULL to find rows with missing values:

SELECT CustomerName, Email FROM Customers WHERE Email IS NULL;

This identifies customers without email addresses on file. Use IS NOT NULL to find rows with values present:

SELECT ProductName, DiscountPrice FROM Products WHERE DiscountPrice IS NOT NULL;

This finds products currently on sale with discount pricing.

NULL in Logical Operations

NULL complicates AND and OR logic:

                                                        65317A - Querying and Analyzing SQL Server 2025

3-20 Module 3: Filtering and Sorting Data

TRUE AND NULL = UNKNOWN FALSE AND NULL = FALSE TRUE OR NULL = TRUE FALSE OR NULL = UNKNOWN Rows with UNKNOWN conditions are excluded from results, which can lead to unexpected filtering behavior. When combining NULL tests with other conditions, use explicit IS NULL or IS NOT NULL predicates.

Best Practices for NULL Handling

Always consider NULL values when designing filters. Document assumptions about optional fields. When aggregating data (covered in later modules), remember that most aggregate functions ignore NULL values. Use COALESCE or ISNULL functions to provide default values when NULL presence would skew results or break application logic.

       Illustration showing database records with some fields containing values and others showing empty or missing
                               placeholders, with IS NULL and IS NOT NULL acting as detection mechanisms

     Key Takeaways
          NULL represents missing or unknown data, not zero or empty string
          Standard comparison operators cannot test for NULL values
          IS NULL and IS NOT NULL explicitly test for NULL presence or absence
          NULL values introduce three-valued logic that affects filtering results

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-21

Instructor Notes Talking Points:

NULL means ‘unknown’ or ‘missing,’ not zero or empty string Comparisons with NULL (=, \<\>, \>, etc.) always return FALSE or UNKNOWN, never TRUE Must use IS NULL or IS NOT NULL to explicitly check for NULL NULL in WHERE conditions is a common source of bugs (forgotten orders, employees without managers, etc.) COUNT(*) includes NULLs; COUNT(column) excludes NULL rows COALESCE() function replaces NULL with a default value in results Demo Suggestion: Show the unexpected behavior of WHERE status = NULL (returns no rows). Then show WHERE status IS NULL (returns correct results). Use real data where some customers have no phone number or some orders have no notes. Demonstrate impact on counts: COUNT(*) vs COUNT(notes). Common Student Questions: Q: Why does = NULL not work? A: In SQL, NULL is ‘unknown.’ Comparing anything to unknown yields unknown (neither true nor false), so the row is excluded from results. This is part of three-valued logic in SQL. Always use IS NULL instead. Q: What’s the difference between NULL, empty string, and zero? A: NULL = unknown/missing data. Empty string ’’ = a string with zero characters (a value). Zero = the numeric value 0 (a value). They are completely different. WHERE email = ’’ finds empty strings; WHERE email IS NULL finds missing email data. Q: How do I find rows that have data (not NULL)? A: Use IS NOT NULL. Example: WHERE manager_id IS NOT NULL finds all employees with assigned managers.

                                                  65317A - Querying and Analyzing SQL Server 2025

3-22 Module 3: Filtering and Sorting Data

Lesson 7: Sorting Results with ORDER BY

      Estimated Time: 20 minutes

Controlling Result Order

By default, SQL Server returns query results in no guaranteed order. The ORDER BY clause explicitly sorts results, transforming random-order data into meaningful sequences. ORDER BY appears after WHERE (if present) and processes data after filtering completes. Basic syntax:

SELECT column_list FROM table_name WHERE conditions ORDER BY column_name \[ASC\|DESC\];

Ascending and Descending Order

ASC (ascending) sorts from lowest to highest–this is the default if you omit the sort direction:

SELECT ProductName, ListPrice FROM Products ORDER BY ListPrice ASC; – or just ORDER BY ListPrice

DESC (descending) sorts from highest to lowest:

SELECT CustomerName, TotalPurchases FROM Customers ORDER BY TotalPurchases DESC;

For text columns, ascending order is alphabetical (A to Z); descending is reverse alphabetical (Z to A). For dates, ascending means oldest to newest; descending means newest to oldest.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-23

Multi-Column Sorting

ORDER BY accepts multiple columns separated by commas. SQL Server sorts by the first column, then breaks ties using the second column, and so on:

SELECT CustomerName, State, City FROM Customers ORDER BY State ASC, City ASC;

Each column can have its own sort direction:

SELECT ProductName, Category, ListPrice FROM Products ORDER BY Category ASC, ListPrice DESC;

This groups products by category (alphabetically) and within each category, displays expensive items first. Performance Note: Sorting large result sets requires significant resources. Add WHERE clauses to filter data before sorting, reducing the volume SQL Server must order.

Illustration showing unsorted data records being organized by ORDER BY into neat, sequenced stacks based on column values, with arrows indicating ascending and descending directions

                                                        65317A - Querying and Analyzing SQL Server 2025

3-24 Module 3: Filtering and Sorting Data

    Key Takeaways
          ORDER BY clause explicitly sorts query results
          ASC sorts low to high (default); DESC sorts high to low
          Multi-column sorting breaks ties using subsequent columns
          Each column in ORDER BY can have independent sort direction

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-25

Instructor Notes Talking Points:

ORDER BY is evaluated after WHERE, so filtering happens first, then sorting ASC (ascending) is the default; DESC (descending) must be specified Multiple columns in ORDER BY create a hierarchy: first column sorts, then second column breaks ties Can order by column name, column alias, or column position (1, 2, 3…) Using column position (ORDER BY 1, 2) is less maintainable; prefer column names NULL values sort first in ASC, last in DESC (database-dependent) Case sensitivity in ORDER BY depends on database collation; use UPPER() or LOWER() for consistent results Demo Suggestion: Show single-column sort, then multi-column sort (e.g., ORDER BY country, last_name, first_name). Demonstrate difference between ASC and DESC. Show how column position works (ORDER BY 1, 2) but explain why column names are better. Show NULL handling in sorts with real data. Common Student Questions: Q: Can I order by a column that’s not in SELECT? A: Yes, absolutely. WHERE and ORDER BY operate on the full table before SELECT decides what columns to display. You can order by any column from the table, even if it’s not shown in results. Q: What’s the performance impact of ORDER BY? A: ORDER BY is relatively expensive on large datasets as it requires sorting. Indexes can help. Avoid ORDER BY RAND() or random functions; use application logic instead. Consider whether sorting is truly necessary. Q: How do I sort by one column ascending and another descending? A: Specify the direction for each column: ORDER BY country ASC, total_sales DESC. This sorts by country alphabetically, then within each country by sales highest to lowest.

                                                  65317A - Querying and Analyzing SQL Server 2025

3-26 Module 3: Filtering and Sorting Data

Lab: Filtering and Sorting Customer Order Data

Objective: Practice filtering database records using WHERE clause predicates and sorting results with ORDER BY to analyze customer orders effectively Estimated Time: 45 minutes Platform: Azure Portal with SQL Server 2025 virtual machine Prerequisites:

Access to Azure Portal Running Windows Server 2025 VM with SQL Server 2025 SQL Server Management Studio 22 installed AdventureWorksLT2025 sample database restored

      Lab Facilitation
     Setup: Pre-lab: Ensure all students have access to the sample customer order database with
     tables: customers (customer_id, name, city, country, email), orders (order_id, customer_id,
     order_date, total_amount, status), and order_items (order_item_id, order_id, product_id, quantity,
     unit_price). Seed the database with 50+ customers and 200+ orders, including some NULL values
     in email, notes, and status fields to make filtering exercises realistic. Have sample queries
     prepared to demonstrate common mistakes. Set expectations that students should run each
     query and verify results match the expected output.
     Pacing: Allocate 90-120 minutes for the lab. Start with a 10-minute walkthrough of the database
     schema and sample data. Have students work through filter exercises in pairs, starting with
     simple WHERE clauses (15 min), then adding logical operators (20 min), then LIKE/BETWEEN/IN
     (20 min), then NULL handling (15 min), then combining filters with sorting (15 min). The final
     challenge should take 10-15 minutes. Circulate frequently in the first 20 minutes; once students
     understand the pattern, they'll progress faster. Watch for students who skip running their queries
     --insist they verify results.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-27

Procedures

Step 1: Connect to your Azure VM and launch SQL Server Management Studio

1.  Sign in to the Azure Portal at https://portal.azure.com

2.  Navigate to Virtual machines in the left menu

3.  Select your SQL Server VM (e.g., sqlvm2025-lab )

4.  Click Connect \> RDP and download the RDP file

5.  Open the RDP file and connect using your VM credentials

6.  Once connected to the VM, click the Start menu

7.  Type SSMS and select Microsoft SQL Server Management Studio 22

8.  In the Connect to Server dialog:

         Server type: Database Engine
         Server name: localhost or (local)
         Authentication: Windows Authentication

9.  Click Connect

    Expected Output: SSMS opens and displays Object Explorer with your localhost server instance expanded, showing system databases and the AdventureWorksLT2025 database.

Verification: In Object Explorer, expand **Databases** and confirm you see **AdventureWorksLT2025** listed.

Step 2: Create a new query window and set the database context

1.  Click New Query in the toolbar (or press Ctrl+N)
2.  In the new query window, type the following command:

USE AdventureWorksLT2025; GO

3.  Click Execute (or press F5)

                                                          65317A - Querying and Analyzing SQL Server 2025

    3-28 Module 3: Filtering and Sorting Data

Expected Output: The messages pane displays:

Command(s) completed successfully.

The database context dropdown in the toolbar changes to show AdventureWorksLT2025.

Verification: Verify the database dropdown menu in the toolbar displays **AdventureWorksLT2025**.

Step 3: Filter customers from a specific country using the equality operator

Write a query to find all customers located in the United States:

SELECT CustomerID, CompanyName, FirstName, LastName, EmailAddress

FROM SalesLT.Customer WHERE CountryRegion = ‘United States’;

Execute the query and review the results.

Expected Output: Results grid displays customers with CountryRegion as ‘United States’. You should see approximately 417 rows returned. Sample output:

CustomerID CompanyName FirstName LastName EmailAddress

1 A Bike Store Orlando Gee orlando0@adventure- works.com

                     Progressive          Keith    Harris  keith0@adventure-works.com

2

                     Sports

… … … … …

                                          65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-29

Verification: Check the messages pane shows the row count. Scroll through results to confirm all rows have CountryRegion = ‘United States’.

Step 4: Combine multiple conditions using AND and OR logical operators

Find customers from the United States who have either ‘Bike’ or ‘Cycle’ in their company name:

SELECT CustomerID, CompanyName, FirstName, LastName, CountryRegion

FROM SalesLT.Customer WHERE CountryRegion = ‘United States’

     AND (CompanyName LIKE '%Bike%' OR CompanyName LIKE '%Cycle%');

Execute the query and analyze the results.

Expected Output: Results show customers from United States with company names containing ‘Bike’ or ‘Cycle’. Expected approximately 15-25 rows. Sample output:

CustomerID CompanyName FirstName LastName CountryRegion 1 A Bike Store Orlando Gee United States 11 Bike Rims Company Donna Carreras United States 25 Cycle Merchants Janet Gates United States

Verification: Verify each result has CountryRegion = ‘United States’ and CompanyName contains either ‘Bike’ or ‘Cycle’.

Step 5: Use the BETWEEN predicate to filter orders within a date range

Query sales orders placed during the first quarter of 2023:

           65317A - Querying and Analyzing SQL Server 2025

3-30 Module 3: Filtering and Sorting Data

SELECT SalesOrderID, OrderDate, CustomerID, TotalDue

FROM SalesLT.SalesOrderHeader WHERE OrderDate BETWEEN ‘2023-01-01’ AND ‘2023-03-31’ ORDER BY OrderDate;

Execute the query.

Expected Output: Results display orders from January 1 through March 31, 2023, sorted by OrderDate. Sample output:

SalesOrderID OrderDate CustomerID TotalDue 71784 2023-01-01 00:00:00 29847 880.3514 71785 2023-01-01 00:00:00 29485 3953.9884 71786 2023-01-02 00:00:00 29957 2146.7128

Note: Actual row count depends on sample data, typically 50-100 rows.

Verification: Confirm all OrderDate values fall between January 1 and March 31, 2023. Dates should be in ascending order.

Step 6: Filter using the IN predicate to match multiple discrete values

Find products in specific color categories:

SELECT ProductID, Name, Color, ListPrice

FROM SalesLT.Product WHERE Color IN (‘Black’, ‘Silver’, ‘Red’) ORDER BY Color, Name;

                                          65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-31

Execute the query.

Expected Output: Results show products with Color values of ‘Black’, ‘Silver’, or ‘Red’, sorted first by Color then by Name. Sample output:

ProductID Name Color ListPrice 680 HL Road Frame - Black, 58 Black 1431.5000 706 HL Road Frame - Black, 62 Black 1431.5000 708 Sport-100 Helmet, Red Red 34.9900 709 Mountain Bike Socks, L Silver 9.5000

Approximately 100-150 rows returned.

Verification: Scroll through results confirming only ‘Black’, ‘Silver’, and ‘Red’ appear in the Color column. Verify products are grouped by color alphabetically.

Step 7: Use LIKE with wildcard patterns for flexible text matching

Find all products whose names start with ‘Mountain’ and contain the number ‘100’:

SELECT ProductID, Name, ProductNumber, Color

FROM SalesLT.Product WHERE Name LIKE ‘Mountain%’

     AND Name LIKE '%100%';

Execute the query and examine the results.

                   65317A - Querying and Analyzing SQL Server 2025

3-32 Module 3: Filtering and Sorting Data

Expected Output: Results display products with names starting with ‘Mountain’ and containing ‘100’. Sample output:

ProductID Name ProductNumber Color 771 Mountain-100 Silver, 38 BK-M82S-38 Silver 772 Mountain-100 Silver, 42 BK-M82S-42 Silver 773 Mountain-100 Silver, 44 BK-M82S-44 Silver 775 Mountain-100 Black, 38 BK-M82B-38 Black

Expected approximately 10-15 rows.

Verification: Verify every product name begins with ‘Mountain’ and contains ‘100’ somewhere in the name.

Step 8: Filter for NULL values using IS NULL predicate

Find products that do not have an assigned color:

SELECT ProductID, Name, Color, Weight

FROM SalesLT.Product WHERE Color IS NULL;

Execute the query. Important: Never use Color = NULL as this always returns false. Use IS NULL instead.

                                          65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-33

Expected Output: Results show products with NULL in the Color column. Sample output:

ProductID Name Color Weight 707 Sport-100 Helmet, Blue NULL NULL 708 Sport-100 Helmet, Red NULL NULL 709 Mountain Bike Socks, M NULL NULL

Approximately 100-200 rows with NULL color values.

Verification: Confirm the Color column shows NULL (or empty) for all returned rows.

Step 9: Combine IS NOT NULL with comparison operators

Find products that have both a color and a weight greater than 1000 grams:

SELECT ProductID, Name, Color, Weight

FROM SalesLT.Product WHERE Color IS NOT NULL

     AND Weight IS NOT NULL
      AND Weight > 1000

ORDER BY Weight DESC;

Execute the query.

          65317A - Querying and Analyzing SQL Server 2025

3-34 Module 3: Filtering and Sorting Data

Expected Output: Results display products with assigned colors and weights exceeding 1000, sorted from heaviest to lightest. Sample output:

ProductID Name Color Weight 680 HL Road Frame - Black, 58 Black 2540.00 706 HL Road Frame - Black, 62 Black 2540.00 771 Mountain-100 Silver, 38 Silver 2305.00

Expected approximately 30-50 rows.

Verification: Verify no NULL values appear in Color or Weight columns, and all Weight values are greater than 1000. Confirm descending weight order.

Step 10: Implement multi-column sorting with mixed sort directions

Retrieve products sorted by Color (ascending) and then by ListPrice (descending) within each color:

SELECT ProductID, Name, Color, ListPrice

FROM SalesLT.Product WHERE Color IS NOT NULL ORDER BY Color ASC, ListPrice DESC;

Execute the query.

                                          65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-35

Expected Output: Results show products grouped by Color in alphabetical order, with highest-priced products first within each color group. Sample output:

ProductID Name Color ListPrice 680 HL Road Frame - Black, 58 Black 1431.5000 706 HL Road Frame - Black, 62 Black 1431.5000 779 Mountain-100 Black, 42 Black 3374.9900 712 AWC Logo Cap Blue 8.9900 713 Long-Sleeve Logo Jersey, L Blue 49.9900

Approximately 200+ rows.

Verification: Verify results are grouped by color alphabetically. Within each color group, confirm prices decrease from top to bottom.

Step 11: Use NOT operator to exclude specific conditions

Find products that are NOT black and do NOT have ‘Frame’ in their name:

SELECT ProductID, Name, Color, ProductCategoryID

FROM SalesLT.Product WHERE NOT (Color = ‘Black’ OR Name LIKE ‘%Frame%’)

     AND Color IS NOT NULL

ORDER BY Color, Name;

Execute the query.

                         65317A - Querying and Analyzing SQL Server 2025

3-36 Module 3: Filtering and Sorting Data

Expected Output: Results display products excluding black items and anything with ‘Frame’ in the name. Sample output:

ProductID Name Color ProductCategoryID 712 AWC Logo Cap Blue 19 713 Long-Sleeve Logo Jersey, L Blue 21 858 Half-Finger Gloves, L Blue 20 709 Mountain Bike Socks, M Silver 23

Expected approximately 80-120 rows.

Verification: Verify no products have Color = ‘Black’ and no product names contain ‘Frame’. All Color values should be non-NULL.

Step 12: Combine multiple filtering techniques in a complex business query

Find high-value orders from the United States placed in 2023 for customers whose last name starts with letters A through M:

SELECT soh.SalesOrderID, soh.OrderDate, c.FirstName, c.LastName, c.CountryRegion, soh.TotalDue

FROM SalesLT.SalesOrderHeader AS soh INNER JOIN SalesLT.Customer AS c ON soh.CustomerID = c.CustomerID WHERE c.CountryRegion = ‘United States’

     AND soh.OrderDate BETWEEN '2023-01-01' AND '2023-12-31'
      AND soh.TotalDue >= 1000
      AND c.LastName LIKE '[A-M]%'

ORDER BY soh.TotalDue DESC, c.LastName ASC;

Execute the query and analyze the combined filtering logic.

                                          65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-37

Expected Output: Results show filtered orders meeting all criteria, sorted by TotalDue (highest first) then by LastName (alphabetically). Sample output:

SalesOrderID OrderDate FirstName LastName CountryRegion TotalDue

71784 2023-02-15 Keith Harris United States 5893.4265 00:00:00

71789 2023-03-22 Donna Carreras United States 4127.8542 00:00:00

71795 2023-05-08 Janet Gates United States 3247.1283 00:00:00

Expected approximately 20-40 rows depending on data.

Verification: Verify all results meet these criteria: CountryRegion = ‘United States’, OrderDate in 2023, TotalDue \>= 1000, LastName starts with A-M. Confirm sorting is by TotalDue descending.

Step 13: Test edge cases with comparison operators

Practice using different comparison operators to understand their behavior:

– Find products with ListPrice exactly equal to 0 SELECT ProductID, Name, ListPrice FROM SalesLT.Product WHERE ListPrice = 0;

– Find products with ListPrice not equal to 0 (excluding free items) SELECT ProductID, Name, ListPrice FROM SalesLT.Product WHERE ListPrice \<\> 0 ORDER BY ListPrice;

– Find products priced at or below 10.00 SELECT ProductID, Name, ListPrice FROM SalesLT.Product WHERE ListPrice \<= 10.00 ORDER BY ListPrice DESC;

      65317A - Querying and Analyzing SQL Server 2025

3-38 Module 3: Filtering and Sorting Data

Execute each query separately and compare the results.

Expected Output: Query 1: Shows products with zero price (typically discontinued or special items)

Query 2: Shows all products with non-zero prices in ascending order, starting from lowest price

Query 3: Shows products priced \$10.00 or less, sorted from highest to lowest within that range. Sample:

ProductID Name ListPrice 709 Mountain Bike Socks, M 9.5000 712 AWC Logo Cap 8.9900 858 Half-Finger Gloves, L 9.5000

Verification: For query 1, verify all ListPrice values are 0. For query 2, verify no zeros appear. For query 3, verify all prices are 10.00 or less and sorted descending.

Step 14: Save your work and review query performance

1.  Click File \> Save As

2.  Navigate to your Documents folder

3.  Create a new folder named SQL_Labs

4.  Name the file Module3_Filtering_Sorting.sql

5.  Click Save

6.  To review query statistics, click Query menu \> Include Actual Execution Plan (or press Ctrl+M)

7.  Re-execute the complex query from Step 12

8.  After execution, click the Execution plan tab at the bottom of the results pane

9.  Review the graphical execution plan to see how SQL Server processes the query

                                           65317A - Querying and Analyzing SQL Server 2025

     Module 3: Filtering and Sorting Data 3-39

    Expected Output: The file saves successfully to C:\_Labs\_Filtering_Sorting.sql. The execution plan displays graphical operators showing:

         Index Scans or Seeks on Customer and SalesOrderHeader tables
         Nested Loops or Hash Match join operations
         Filter operators for WHERE clause predicates
         Sort operator for ORDER BY clause

    Relative costs appear as percentages above each operator.

Verification: Open File Explorer and navigate to Documents\_Labs to confirm the file exists. In SSMS, verify the execution plan tab is visible and displays graphical operators.

Troubleshooting

    Problem: Query returns 0 rows when you expect results, especially with NULL comparisons
     Solution: Check if you used `= NULL` instead of `IS NULL`. The expression `Color = NULL` always
     evaluates to UNKNOWN (not TRUE), returning no rows. Change to `Color IS NULL`. Similarly, use
     `IS NOT NULL` instead of `<> NULL`.

     Problem: LIKE pattern matching returns unexpected results or no results
     Solution: Verify your wildcard placement. `%` matches zero or more characters, `_` matches
     exactly one character. Pattern `'Mountain%'` matches names starting with 'Mountain'. Pattern
     `'%Mountain%'` matches names containing 'Mountain' anywhere. Pattern matching is case-
     insensitive by default in SQL Server, but check your database collation if you get unexpected
     results. Ensure you're using single quotes (') not double quotes (") around string literals.

                                                         65317A - Querying and Analyzing SQL Server 2025

3-40 Module 3: Filtering and Sorting Data

    Problem: ORDER BY clause produces error 'Invalid column name'
     Solution: Ensure the column name in ORDER BY exactly matches the column name in the SELECT
     list or table, including spelling and spacing. If using a column alias, you can use the alias in ORDER
     BY. Check that you're not trying to order by a column that doesn't exist in the result set.
     Remember that ORDER BY must be the last clause in the SELECT statement.

     Problem: BETWEEN returns fewer results than expected with dates
     Solution: BETWEEN is inclusive of both boundary values. However, datetime values include time
     components. `BETWEEN '2023-01-01' AND '2023-03-31'` includes only records up to 2023-03-31
     00:00:00 (midnight), excluding any orders later that day. For inclusive end-date filtering, use
     `BETWEEN '2023-01-01' AND '2023-03-31 23:59:59.997'` or preferably `>= '2023-01-01' AND <
     '2023-04-01'`.

     Problem: Complex WHERE clause with AND/OR produces incorrect results
     Solution: Review operator precedence: AND is evaluated before OR. Use parentheses to control
     evaluation order. For example, `WHERE Color = 'Black' OR Color = 'Red' AND ListPrice > 100` is
     interpreted as `WHERE Color = 'Black' OR (Color = 'Red' AND ListPrice > 100)`, which may not be
     your intent. Use explicit parentheses: `WHERE (Color = 'Black' OR Color = 'Red') AND ListPrice >
     100`. Test complex conditions by building them incrementally.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-41

      Common Student Errors
     Students write WHERE status = NULL instead of IS NULL
     Stop them and explain that NULL is 'unknown,' so = NULL always returns UNKNOWN (neither
     true nor false). Have them mentally substitute 'unknown' for NULL and they'll see why = doesn't
     work. Make them rewrite using IS NULL.
     Students use OR when they mean AND, returning too many rows
     Ask: 'Do you want customers from CA OR TX?' (OR) vs. 'Do you want customers from CA who have
     spent more than $100?' (AND). Clarify the business logic, then they'll choose the right operator.
     Students forget to quote strings in WHERE clause or use quotes for numbers
     Demonstrate: WHERE status = 'active' (string needs quotes) vs. WHERE order_id = 123 (number
     doesn't). Have them check the table schema to determine column data type.
     Students write complex WHERE with unclear parentheses, return unexpected results
     Have them add parentheses around every logical grouping, even if they think it's obvious. Then
     have them trace through the logic manually: 'Which rows match this condition?' This catches
     mistakes immediately.
     Students use LIKE '%text%' on large datasets and complain about performance
     Explain that leading wildcards prevent index usage. If they must search, use LIKE 'text%' (leading
     part of string) or encourage them to consider FULL-TEXT SEARCH for production systems.
     Demonstrate EXPLAIN PLAN if your database supports it.
     Students order by column position (ORDER BY 1, 2) instead of column names
     Point out that if the SELECT list changes, the position numbers become wrong and confusing.
     Insist on ORDER BY column_name for maintainability. Position numbers are convenient shortcuts
     but poor practice in real code.
     Students write ORDER BY in WHERE clause instead of ORDER BY clause
     Clarify: WHERE filters rows (goes before ORDER BY). ORDER BY sorts rows (goes after

Challenge Exercise

Customer Purchase Analysis Report

Create a comprehensive query that identifies high-value customer segments for a targeted marketing campaign. Your query should find customers who meet ALL of these criteria:

                                                        65317A - Querying and Analyzing SQL Server 2025

3-42 Module 3: Filtering and Sorting Data

1.  Located in either the United States, Canada, or United Kingdom

2.  Have placed at least one order with a total value (TotalDue) greater than \$2,500

3.  Their email address uses a corporate domain (not free email services like @adventure-

    works.com)

4.  Their company name does NOT contain the words ‘Test’, ‘Demo’, or ‘Sample’

5.  Have placed orders within the last year (use any reasonable date range in your sample data) Your result set should display:

    Customer ID Full customer name (combine FirstName and LastName with a space) Company name Country/Region Their highest single order value Count of orders over \$2,500 Most recent order date Sort the results by country (ascending), then by highest order value (descending) within each country. Hints: You’ll need to use GROUP BY and aggregate functions (covered in Module 4) along with the filtering techniques from this module. You may need to use HAVING clause for filtering aggregate results. Consider using subqueries or CTEs (Common Table Expressions) if you’ve covered those topics. Bonus: Add a calculated column that categorizes customers as ‘Platinum’ (highest order over \$5,000), ‘Gold’ (\$2,500-\$5,000), or ‘Silver’ (other qualifying customers) using a CASE expression.

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 3: Filtering and Sorting Data 3-43

Answer Key

1.  Which WHERE clause correctly identifies products priced between \$100 and \$500, inclusive?

    1)  WHERE ListPrice BETWEEN 100 AND 500
    2)  WHERE ListPrice \> 100 AND ListPrice \< 500
    3)  WHERE ListPrice \>= 100 OR ListPrice \<= 500
    4)  WHERE ListPrice IN (100, 500)

    Answer: A BETWEEN tests inclusive range membership, making option A correct. Option B excludes the boundaries (100 and 500). Option C uses OR incorrectly–it would return nearly all values. Option D tests for exact matches to 100 or 500 only, not the range between them.

2.  What will the following query return? `sql SELECT CustomerName FROM Customers WHERE Email = NULL;`

    1)  All customers with missing email addresses
    2)  All customers with email addresses
    3)  Zero rows (empty result set)
    4)  A syntax error

    Answer: C The expression ‘Email = NULL’ always evaluates to UNKNOWN, never TRUE, so no rows are returned. To find NULL values, you must use ‘WHERE Email IS NULL’. This is a common mistake when working with NULL values in SQL Server.

3.  Which LIKE pattern finds product names containing ‘Pro’ anywhere in the name?

    1)  WHERE ProductName LIKE ‘Pro%’

    2)  WHERE ProductName LIKE ‘%Pro%’

    3)  WHERE ProductName LIKE ‘*Pro*’

    4)  WHERE ProductName LIKE ‘\[Pro\]’

                                                          65317A - Querying and Analyzing SQL Server 2025

        3-44 Module 3: Filtering and Sorting Data

    Answer: B The ‘%Pro%’ pattern uses percent wildcards on both sides, matching ‘Pro’ anywhere in the text. Option A matches only names starting with ‘Pro’. Option C requires exactly one character before and after ‘Pro’. Option D matches a single character that is ‘P’, ‘r’, or ‘o’.

4.  When combining AND and OR operators, what determines the evaluation order?

    1)  Left-to-right evaluation always
    2)  AND is evaluated before OR unless parentheses specify otherwise
    3)  OR is evaluated before AND unless parentheses specify otherwise
    4)  Random evaluation order each time the query runs

    Answer: B SQL Server evaluates AND operators before OR operators by default, following operator precedence rules. Parentheses override this default order and should always be used to make complex logic explicit and ensure correct evaluation.

5.  Which query correctly retrieves customers from California, New York, or Texas?

    1)  WHERE State = ‘CA’ AND State = ‘NY’ AND State = ‘TX’
    2)  WHERE State IN (‘CA’, ‘NY’, ‘TX’)
    3)  WHERE State BETWEEN ‘CA’ AND ‘TX’
    4)  WHERE State LIKE ‘CA’ OR ‘NY’ OR ‘TX’

    Answer: B IN tests whether State matches any value in the list. Option A uses AND incorrectly–a single State cannot equal multiple values simultaneously. Option C would include all states alphabetically between CA and TX (like FL, GA, etc.). Option D has incorrect syntax for LIKE.

6.  What does the following ORDER BY clause accomplish? `sql ORDER BY Category ASC, ListPrice DESC`

    1)  Sorts by Category descending, then by ListPrice ascending

    2)  Sorts by ListPrice descending, then by Category ascending

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 3: Filtering and Sorting Data 3-45

    3)  Sorts by Category ascending, then within each category by ListPrice descending

    4)  Produces a syntax error because directions cannot differ

    Answer: C Multi-column ORDER BY sorts by the first column (Category, ascending), then uses the second column (ListPrice, descending) to break ties within each category. Each column can have its own independent sort direction.

7.  Which wildcard character in a LIKE pattern matches exactly one character?

    1)  % (percent)
    2)  \_ (underscore)
    3)  - (asterisk)
    4)  ? (question mark)

    Answer: B The underscore (\_) matches exactly one character. The percent (%) matches zero or more characters. SQL Server does not use asterisk (\*) or question mark (?) as wildcards in LIKE patterns–those are common in other contexts like file systems.

8.  Why might a query with ‘WHERE ProductName LIKE’%widget’ perform slowly on a large table?

    1)  The LIKE operator is inherently slow
    2)  Leading wildcards prevent index usage, requiring a full table scan
    3)  SQL Server does not support wildcards at the end of patterns
    4)  The pattern is too short to be effective

    Answer: B When a LIKE pattern starts with a wildcard (‘%widget’), SQL Server cannot use indexes to narrow the search and must scan the entire table. Patterns like ‘widget%’ (wildcard at the end) can leverage indexes for better performance.

9.  Which operator correctly tests for the presence of a value (not NULL)?

    1)  WHERE DiscountPrice \<\> NULL

                                                          65317A - Querying and Analyzing SQL Server 2025

        3-46 Module 3: Filtering and Sorting Data

    2)  WHERE DiscountPrice != NULL

    3)  WHERE DiscountPrice IS NOT NULL

    4)  WHERE DiscountPrice NOT EQUALS NULL Answer: C IS NOT NULL is the only correct way to test for non-NULL values. Options A and B use comparison operators, which cannot evaluate NULL (they return UNKNOWN). Option D uses invalid syntax–‘NOT EQUALS’ is not a SQL Server operator.

10. What is the result of the expression: FALSE OR NULL?

    1)  TRUE

    2)  FALSE

    3)  UNKNOWN

    4)  NULL Answer: C In SQL Server’s three-valued logic, FALSE OR NULL evaluates to UNKNOWN. Since one operand is FALSE and the other is UNKNOWN, the result cannot be determined as definitively TRUE or FALSE. Rows with UNKNOWN conditions are excluded from WHERE clause results.

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 3: Filtering and Sorting Data 3-47

Module Summary

This module equipped you with essential filtering and sorting techniques for SQL Server queries. You learned to use WHERE clauses with comparison operators (=, \<\>, \<, \>, \<=, \>=) and logical operators (AND, OR, NOT) to create precise row filters. The LIKE operator with wildcards enables flexible pattern matching, while BETWEEN and IN simplify range and list filtering. Understanding NULL values and using IS NULL/IS NOT NULL prevents common filtering errors. Finally, ORDER BY with single and multiple columns transforms unordered results into meaningful, sorted sequences. Combining these techniques allows you to answer complex business questions efficiently and accurately.

                                                        65317A - Querying and Analyzing SQL Server 2025

3-48 Module 3: Filtering and Sorting Data

Day 1 Capstone Lab: Healthcare Provider Analytics: Patient Visit Data Quality and Reporting Initiative

Estimated Time: 240 minutes Platform: azure_portal

     Reference: If you need step-by-step detail on any individual skill, refer to the lab guides from
     this morning's modules.

Skills Integration

Connect to SQL Server 2025 (version 17) instances using SSMS 22 and execute queries Navigate Object Explorer and query windows to interact with database objects Use GitHub Copilot for query assistance and code suggestions Write SELECT statements with column selection and aliasing Apply string manipulation functions including CONCAT, SUBSTRING, and TRIM Utilize SQL Server 2025 string enhancements for text processing Implement WHERE clauses with comparison and logical operators Sort query results using ORDER BY with multiple columns and directions Filter data using LIKE patterns, IN lists, and BETWEEN ranges

Scenario Briefing

Situation Brief

You have joined the Data Analytics team at Metropolitan Health Network (MHN), a regional healthcare provider operating 12 clinics across three states. The organization recently migrated patient visit records from a legacy system to SQL Server 2025, but the migration introduced significant data quality issues. The Chief Medical Information Officer has requested your assistance in preparing for the upcoming quarterly board presentation. Leadership needs accurate analytics on patient visit patterns, provider

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-49

utilization, and appointment adherence across all facilities. However, preliminary reviews have identified inconsistent formatting in patient names, provider identifiers with leading/trailing spaces, facility codes that don’t match the current naming convention, and diagnosis codes that require normalization. Your assignment is to connect to the MHN_ClinicalDataWarehouse database on the production SQL Server 2025 instance, assess the VisitRecords, ProviderRegistry, and FacilityMaster tables, and develop a comprehensive set of queries that will produce clean, formatted data extracts for the executive dashboard. The CFO has specifically requested filtered views showing high-cost visit categories, providers with specific specialization patterns, and facilities meeting certain performance thresholds. All outputs must be professionally formatted with standardized naming conventions and sorted according to business priority rules established by the executive team.

Desired End State

Success Criteria

You will have successfully completed this capstone when you have established a working connection to the MHN SQL Server 2025 instance and produced a documented collection of queries that:

Data Quality and Standardization

Transform patient full names into a standardized format combining last name, first name, and middle initial with proper capitalization and punctuation Clean provider national provider identifiers (NPIs) by removing extraneous whitespace and extracting specific identifier segments Normalize facility codes to match the current MHN three-letter state abbreviation + two-digit location format Apply SQL Server 2025 string enhancements to handle Unicode characters in patient names and diagnostic descriptions

Business Intelligence Queries

Identify all emergency department visits occurring during specific date ranges with costs exceeding defined thresholds, sorted by visit date and facility priority level Extract provider records for specialists whose credentials contain specific certification patterns, with results organized by specialty type and years of experience

                                                        65317A - Querying and Analyzing SQL Server 2025

3-50 Module 3: Filtering and Sorting Data

Filter facility performance data to show only locations in designated states with patient volumes falling within target operational ranges Generate formatted diagnostic code listings that isolate specific ICD-10 code families using pattern matching, excluding certain obsolete code ranges

Professional Deliverables

All query result sets include clearly aliased column headers suitable for executive presentation Complex filtering logic combining multiple conditions using appropriate logical operators Multi-column sorting reflecting business priorities (e.g., primary sort by facility region, secondary by visit urgency, tertiary by date) Query documentation leveraging GitHub Copilot for inline explanations of complex transformation logic Evidence of proper Object Explorer navigation to verify table structures, column data types, and sample data before query construction

Constraints

You must connect to the SQL Server 2025 instance using SSMS 22; verify the server version is 17.x during your initial connection All queries must execute against the MHN_ClinicalDataWarehouse database; do not modify any table structures or insert/update data String transformations must use only SQL Server 2025 native functions (CONCAT, SUBSTRING, TRIM, and 2025 string enhancements); no external tools or procedures WHERE clause filtering must demonstrate proficiency with comparison operators (\>, \<, =, !=), logical operators (AND, OR, NOT), LIKE pattern matching with wildcards, IN lists with multiple values, and BETWEEN for date and numeric ranges All final query outputs must include ORDER BY clauses with at least two sort criteria; demonstrate both ASC and DESC sorting directions You must use GitHub Copilot at least three times during the session to assist with query formulation or to generate explanatory comments for complex logic Column aliases in SELECT statements must follow MHN naming standards: no spaces, use underscores, begin with a letter, and be professionally descriptive Date filtering must target the fiscal year 2024 Q3-Q4 range (July 1, 2024 through December 31, 2024) for visit records

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-51

Cost thresholds for high-value visits are defined as amounts exceeding \$5,000 for outpatient visits or \$15,000 for inpatient admissions Facility codes must be filtered to include only locations in California (CA), Oregon (OR), and Washington (WA) states Provider specialty filtering should identify records containing certification patterns for ‘Emergency Medicine’, ‘Internal Medicine’, or ‘Family Practice’ in credential fields Diagnostic code pattern matching must focus on ICD-10 codes beginning with specific chapter prefixes while excluding deprecated code ranges All work must be completed independently; the scenario requires you to determine which skills to apply, in what sequence, and how to combine them effectively

                                                  65317A - Querying and Analyzing SQL Server 2025

3-52 Module 3: Filtering and Sorting Data

      Capstone Lab -- Instructor Notes
     Scenario Rationale: This healthcare analytics scenario requires students to synthesize Day 1
     skills in a realistic context distinct from the morning retail/customer-focused labs. The healthcare
     domain introduces professionally credible complexity (patient privacy implications, clinical coding
     standards, multi-facility operations) while remaining accessible to beginners. The data quality
     remediation theme naturally integrates string manipulation, while the executive reporting
     requirement drives sophisticated filtering and sorting.

     Skill Integration:

          SSMS 22 connection and Object Explorer navigation: Students must independently connect to
          a new instance, locate the correct database, and explore three related tables to understand
          schema before writing queries
          SELECT with column aliasing: Every deliverable requires professional column naming for
          executive consumption, forcing thoughtful alias selection throughout
          String manipulation (CONCAT, SUBSTRING, TRIM) + SQL Server 2025 enhancements: Patient
          name standardization, NPI parsing, and facility code normalization require strategic function
          combination and demonstrate 2025 Unicode improvements
          WHERE clause complexity: Business requirements demand layered filtering--date ranges with
          BETWEEN, cost thresholds with comparison operators, multi-state selection with IN, specialty
          pattern matching with LIKE, and compound conditions with AND/OR/NOT
          Multi-column ORDER BY: Executive prioritization rules require thoughtful sort design (region,
          then urgency, then date) with mixed ASC/DESC directions
          GitHub Copilot integration: Complex transformations and business logic provide natural
          opportunities for AI assistance and code documentation

     Afternoon Session Facilitation: Open the afternoon session with a 5-7 minute briefing framed
     as an onboarding meeting. Present yourself as the MHN Data Analytics Manager providing the
     assignment. Emphasize that students will work independently to determine their approach--this
     mirrors real workplace scenarios where analysts receive requirements and determine
     implementation. Clarify the constraints (read-only access, no schema changes, specific
     date/cost/location parameters) but do not provide procedural guidance. At the 90-minute mark,
     conduct a brief check-in asking students to share one challenge they've encountered; facilitate
     peer discussion without providing solutions. Reserve the final 30 minutes for students to
     document their query collection and prepare a brief summary of their approach. Debrief by
     asking 2-3 students to share how they decided which skills to apply first and how they validated

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 3: Filtering and Sorting Data 3-53

their output quality. Reinforce that professional SQL work requires this kind of independent problem decomposition.

                                                  65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

                   Module 4: Joining Data from Multiple Tables

                                                                    65317A
                                            3-day course ? 10 modules ? beginner level

Contents

Module 4: Joining Data from Multiple Tables

Lesson 1: Understanding Relational Relationships and JOIN Fundamentals Lesson 2: INNER JOIN: Retrieving Matching Rows Lesson 3: LEFT and RIGHT OUTER JOINs: Including Unmatched Rows Lesson 4: FULL OUTER JOIN and CROSS JOIN Operations Lesson 5: Self-Joins for Hierarchical and Recursive Data Lesson 6: Multi-Table Joins and Join Order Optimization Lab: Combining Sales Data with Multiple JOIN Operations Answer Key Module Summary Discussion Prompts  Module 4: Joining Data from Multiple Tables 4-1

Learning Objectives

After completing this module, you will be able to: Construct INNER JOIN queries to combine related tables Implement LEFT, RIGHT, and FULL OUTER JOIN operations Use CROSS JOIN for Cartesian products Apply self-join techniques for hierarchical data

Instructor Note icon. These sections are not This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the included in the student edition.

65317A - Querying and Analyzing SQL Server 2025 4-2 Module 4: Joining Data from Multiple Tables Module Overview

    Module 4 covers SQL JOIN operations, enabling students to combine data from multiple related tables using various join types and techniques. This
     foundational module requires 180 minutes of instruction plus 90 minutes for lab work, as students must understand relational concepts before
     mastering join syntax and optimization strategies.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-3

Lesson 1: Understanding Relational Relationships and JOIN Fundamentals

      Estimated Time: 20 minutes

The Foundation of Multi-Table Queries

Relational databases store data across multiple tables to reduce redundancy and maintain data integrity. Understanding how tables relate to each other is essential for writing effective queries that combine data from multiple sources. Primary and Foreign Keys A primary key uniquely identifies each row in a table, while a foreign key creates a relationship by referencing the primary key of another table. For example, an Orders table might have a CustomerID foreign key that references the CustomerID primary key in the Customers table. This relationship enables you to connect order information with customer details. Why JOIN Operations Matter Without JOIN operations, data would remain isolated in separate tables. JOINs allow you to retrieve related data in a single query, answering questions like “Which customers placed orders last month?” or “What products did each customer purchase?” This capability transforms disconnected data into meaningful business insights. The JOIN Landscape SQL Server 2025 supports several JOIN types, each serving specific purposes:

INNER JOIN: Returns only matching rows from both tables LEFT OUTER JOIN: Returns all rows from the left table plus matches from the right RIGHT OUTER JOIN: Returns all rows from the right table plus matches from the left FULL OUTER JOIN: Returns all rows from both tables, matching where possible CROSS JOIN: Returns the Cartesian product of both tables Self-JOIN: Joins a table to itself for hierarchical relationships Mastering these operations enables you to construct queries that accurately represent complex business relationships and retrieve precisely the data you need.

Illustration showing connected database tables as physical filing cabinets with drawers linked by colored threads representing relationships between customer, order, and product information

    Key Takeaways
         Foreign keys create relationships between tables by referencing primary keys
         JOIN operations combine data from multiple tables in a single query
         Different JOIN types serve specific data retrieval requirements
         Understanding table relationships is fundamental to effective querying

                                                         65317A - Querying and Analyzing SQL Server 2025

4-4 Module 4: Joining Data from Multiple Tables

      Instructor Notes
     Talking Points:

          Emphasize that JOINs are the core mechanism for leveraging relational database design; without them, normalized databases become impractical
          Clarify the distinction between foreign keys (database constraints) and join conditions (query logic), though they often align
          Stress that join direction matters: the order of tables affects outer join behavior, but not inner join results
          Highlight cardinality relationships (one-to-one, one-to-many, many-to-many) as the foundation for understanding join behavior
     Demo Suggestion: Display a simple relational diagram (e.g., Customers-Orders tables) and visually show how a foreign key creates the relationship.
     Draw a Venn diagram representation of how different join types work. Live-code a basic INNER JOIN to show students the syntax structure before
     diving deeper.
     Common Student Questions:
     Q: What's the difference between a foreign key and a JOIN condition?
     A: A foreign key is a database constraint that enforces referential integrity; a JOIN condition is the SQL logic that matches rows. They're related but
     distinct--you can join on columns that aren't formally defined as foreign keys.
     Q: Do I always need to define foreign keys to use JOINs?
     A: No, JOINs work based on matching values in columns. Foreign keys ensure data integrity but aren't required for the JOIN syntax to function. Best
     practice: define them anyway for data quality.
     Q: Why do we need multiple tables instead of one big table?
     A: Multiple tables reduce redundancy, improve data integrity, and make updates more efficient. This is normalization. JOINs let us recombine that
     data when needed for analysis.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-5

Lesson 2: INNER JOIN: Retrieving Matching Rows

      Estimated Time: 25 minutes

The Most Common JOIN Operation

The INNER JOIN returns only the rows where there is a match in both tables based on the join condition. This is the most frequently used JOIN type because it retrieves data that exists in related tables. INNER JOIN Syntax The basic syntax uses the INNER JOIN keyword followed by the join condition in an ON clause:

SELECT c.CustomerName, o.OrderDate, o.TotalAmount

FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID; This query returns customer names along with their order dates and amounts, but only for customers who have placed orders. Customers without orders are excluded from the results. Understanding the Join Condition The ON clause specifies how tables relate to each other. The condition typically compares the foreign key in one table to the primary key in another. You can include additional conditions using AND to further filter the results: SELECT

     p.ProductName,
      od.Quantity,
      od.UnitPrice

FROM Products p INNER JOIN OrderDetails od ON p.ProductID = od.ProductID AND od.Quantity \> 10; Table Aliases for Clarity Using table aliases (like c for Customers and o for Orders) makes queries more readable and reduces typing, especially when working with multiple tables. Always prefix column names with table aliases when the same column name exists in multiple tables to avoid ambiguity. When to Use INNER JOIN Use INNER JOIN when you need data that exists in both tables. This is ideal for finding related records, such as orders with customer information, products with their categories, or employees with their departments.

Illustration showing two overlapping circles labeled Customers and Orders with matching pairs of colored dots connected in the overlapping area, representing INNER JOIN returning only matching records

                                                        65317A - Querying and Analyzing SQL Server 2025

4-6 Module 4: Joining Data from Multiple Tables

    Key Takeaways
          INNER JOIN returns only rows with matches in both tables
          The ON clause specifies the relationship between tables
          Table aliases improve query readability and reduce typing
          Use INNER JOIN when you need confirmed relationships between data

       Instructor Notes
     Talking Points:

          INNER JOIN is the most commonly used and intuitive join type; it returns only rows where the join condition matches in both tables
          Stress that INNER JOIN is symmetric: table order doesn't affect which rows are returned (though column order in SELECT might differ)
          Explain ON vs. WHERE: ON applies during the join operation; WHERE applies after. This distinction matters for outer joins but not inner joins
          Introduce the concept of join quality: ambiguous results indicate a many-to-many relationship that may require aggregation or intermediate
          tables
          Demonstrate how to handle composite keys (multiple columns in the join condition)
     Demo Suggestion: Live-code a simple INNER JOIN with a Customers and Orders table. Show results. Then deliberately create a scenario where a
     customer has no orders to demonstrate they don't appear. Execute the same query with table order reversed to show symmetry. Demonstrate a
     multi-condition ON clause with composite keys.
     Common Student Questions:
     Q: Does table order matter in INNER JOIN?
     A: No, INNER JOIN is symmetric--SELECT * FROM A JOIN B and SELECT * FROM B JOIN A return the same rows (though columns may be ordered
     differently). This is not true for OUTER JOINs.
     Q: Should I put join logic in ON or WHERE?
     A: For INNER JOIN, functionally equivalent. Best practice: put join conditions in ON and filter conditions in WHERE for clarity and consistency,
     especially since OUTER JOINs require this distinction.
     Q: Why do I get duplicate rows?
     A: If you're seeing duplicates, likely causes: many-to-many relationship (multiple matching rows on one or both sides), or accidental join on non-
     unique columns. Use GROUP BY or DISTINCT to diagnose.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-7

Lesson 3: LEFT and RIGHT OUTER JOINs: Including Unmatched Rows

      Estimated Time: 30 minutes

Preserving Data from One Side of the Relationship

OUTER JOINs extend beyond INNER JOINs by including rows that don’t have matches in the related table. This capability is essential when you need to see all records from one table regardless of whether related data exists. LEFT OUTER JOIN A LEFT OUTER JOIN (or simply LEFT JOIN) returns all rows from the left table and matching rows from the right table. When no match exists, NULL values appear for columns from the right table:

SELECT c.CustomerName, o.OrderID, o.OrderDate

FROM Customers c LEFT OUTER JOIN Orders o ON c.CustomerID = o.CustomerID; This query returns all customers, including those who haven’t placed orders. For customers without orders, OrderID and OrderDate columns contain NULL values. RIGHT OUTER JOIN A RIGHT OUTER JOIN works opposite to LEFT JOIN, returning all rows from the right table and matches from the left: SELECT

     c.CustomerName,
      o.OrderID

FROM Customers c RIGHT OUTER JOIN Orders o ON c.CustomerID = o.CustomerID; This returns all orders, even if customer information is missing. In practice, LEFT JOIN is more commonly used because it’s more intuitive to read. Finding Unmatched Records OUTER JOINs are particularly useful for finding records without relationships. Adding a WHERE clause that checks for NULL identifies unmatched rows: SELECT c.CustomerName FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE o.OrderID IS NULL; This finds customers who have never placed an order–valuable for marketing campaigns targeting inactive customers.

                                                        65317A - Querying and Analyzing SQL Server 2025

4-8 Module 4: Joining Data from Multiple Tables

Illustration comparing LEFT JOIN and RIGHT JOIN using two groups of colored documents, showing how one side’s complete set is preserved while the other side shows partial matches and gaps

    Key Takeaways
          LEFT OUTER JOIN returns all rows from the left table plus matches from the right
          NULL values appear in columns from the right table when no match exists
          RIGHT OUTER JOIN returns all rows from the right table plus matches from the left
          Use OUTER JOINs to find unmatched records by filtering for NULL values

       Instructor Notes
     Talking Points:

          LEFT JOIN preserves all rows from the left table; RIGHT JOIN from the right table. They're directional--table order matters critically
          Explain that unmatched rows show NULL in columns from the non-matching table; this is expected and queryable (WHERE column IS NULL)
          LEFT JOIN is far more common in practice than RIGHT JOIN; encourage students to use LEFT with reordered tables rather than RIGHT to avoid
          confusion
          Demonstrate the practical use case: 'Find customers with no orders' using LEFT JOIN + WHERE...IS NULL
          Stress the semantic difference: INNER JOIN = 'rows that exist in both', LEFT JOIN = 'all left rows, matched with right where possible'
     Demo Suggestion: Create a side-by-side comparison: show results of INNER JOIN, then LEFT JOIN, then RIGHT JOIN with the same tables. Highlight
     the rows present only in LEFT/RIGHT results. Execute a query finding unmatched records (e.g., customers without orders) using LEFT JOIN + IS NULL.
     Show how converting RIGHT JOIN to LEFT JOIN by reversing table order improves readability.
     Common Student Questions:
     Q: Why use LEFT JOIN instead of RIGHT JOIN?
     A: Consistency and readability. LEFT JOIN is read naturally (left-to-right). RIGHT JOIN can confuse readers about table order. A best practice: always
     use LEFT JOIN by reordering tables if needed.
     Q: What do NULL values in outer joins mean?
     A: They indicate a row in the preserved table (left for LEFT JOIN) had no match in the joined table. This is valuable data--often used to find unmatched
     records.
     Q: Can I filter on the joined table in WHERE for OUTER JOINs?
     A: Carefully! WHERE filters after the join, potentially eliminating the outer join benefit. Move join filters to ON. Use WHERE for filtering results after the
     join logic completes. This is a subtle but critical distinction.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-9

Lesson 4: FULL OUTER JOIN and CROSS JOIN Operations

      Estimated Time: 25 minutes

Advanced JOIN Types for Special Scenarios

Beyond the commonly used INNER and LEFT JOINs, SQL Server provides FULL OUTER JOIN and CROSS JOIN for specific data retrieval needs. FULL OUTER JOIN: Complete Data Sets A FULL OUTER JOIN returns all rows from both tables, matching where possible and filling with NULL values where matches don’t exist:

SELECT c.CustomerName, o.OrderID, o.OrderDate

FROM Customers c FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID; This query returns:

All customers with their orders (matched rows) Customers without orders (NULL in order columns) Orders without customer information (NULL in customer columns) FULL OUTER JOIN is useful for data quality audits, identifying orphaned records, or merging data from two sources where you need to see everything. CROSS JOIN: Cartesian Products A CROSS JOIN returns the Cartesian product of two tables–every row from the first table combined with every row from the second table. No join condition is specified: SELECT c.ColorName, s.SizeName FROM Colors c CROSS JOIN Sizes s; If Colors has 5 rows and Sizes has 4 rows, this query returns 20 rows (5 ? 4), showing every possible color-size combination. Practical CROSS JOIN Applications While CROSS JOIN can produce large result sets, it’s valuable for: Generating product variations (all size-color combinations) Creating calendar tables (combining dates with time slots) Building test data sets Producing comparison matrices Use CROSS JOIN cautiously with large tables, as result sets can grow exponentially.

                                                        65317A - Querying and Analyzing SQL Server 2025

4-10 Module 4: Joining Data from Multiple Tables

         Illustration showing CROSS JOIN concept using a grid of colored t-shirts representing all combinations of 5 colors and 4 sizes, demonstrating the Cartesian product visually
     Key Takeaways

          FULL OUTER JOIN returns all rows from both tables, matching where possible
          CROSS JOIN creates a Cartesian product of all row combinations
          FULL OUTER JOIN is useful for data audits and finding orphaned records
          CROSS JOIN generates combinations but can produce very large result sets

       Instructor Notes
     Talking Points:

          FULL OUTER JOIN preserves unmatched rows from both tables; it's the union of LEFT and RIGHT. Not all databases support it natively (SQL Server,
          PostgreSQL do; MySQL doesn't)
          FULL OUTER JOIN is useful for finding discrepancies: rows in either table but not both, or finding completely unmatched records
          CROSS JOIN produces a Cartesian product: every row from table A matched with every row from table B. Result set size = A rows ? B rows. Use
          cautiously
          CROSS JOIN has legitimate uses: generating time series, creating combinations (e.g., all possible student-course pairings), calendar generation
          Warn students about accidental CROSS JOINs: forgetting the ON clause creates exponential result sets that can crash queries
     Demo Suggestion: Show FULL OUTER JOIN results with small datasets, highlighting NULL patterns on both sides. Show a query finding records in
     either table but not matched. For CROSS JOIN, demonstrate with small tables (e.g., 3 colors ? 4 sizes = 12 combinations), then show what happens
     with larger tables to illustrate the exponential growth. Demonstrate an accidental CROSS JOIN and the performance impact.
     Common Student Questions:
     Q: When would I ever use FULL OUTER JOIN?
     A: Reconciliation scenarios: comparing two data sources to find discrepancies, data migration audits, or identifying unmatched records in both tables.
     Example: comparing employee records between old and new systems.
     Q: Is CROSS JOIN ever useful or just a mistake?
     A: Legitimate uses: generating combinations (small datasets), calendar/date range expansion, or creating all possible permutations. But always
     confirm intent--it's easy to create accidentally and can be expensive.
     Q: My query returned millions of rows unexpectedly--what happened?
     A: Likely an accidental CROSS JOIN (missing ON clause) or an unintended many-to-many relationship. Check your ON conditions and investigate data
     cardinality. Use LIMIT to preview results before executing fully.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-11

Lesson 5: Self-Joins for Hierarchical and Recursive Data

      Estimated Time: 25 minutes

Joining a Table to Itself

A self-join occurs when you join a table to itself, treating it as if it were two separate tables. This technique is essential for querying hierarchical data structures, such as organizational charts, category trees, or any data with parent-child relationships. Self-Join Syntax and Structure Self-joins require table aliases to distinguish between the two instances of the same table:

SELECT e.EmployeeName AS Employee, m.EmployeeName AS Manager

FROM Employees e INNER JOIN Employees m ON e.ManagerID = m.EmployeeID; This query lists employees with their managers by joining the Employees table to itself. The alias e represents employees, and m represents managers. The join condition matches each employee’s ManagerID to a manager’s EmployeeID . Hierarchical Data Scenarios Self-joins are perfect for:

Organizational structures: Finding an employee’s manager or direct reports Category hierarchies: Retrieving parent categories for subcategories Geographic relationships: Linking cities to their parent regions Bill of materials: Showing components and their assemblies Handling Top-Level Records Top-level records (like the CEO who has no manager) won’t appear in an INNER JOIN self-join. Use a LEFT OUTER JOIN to include them: SELECT e.EmployeeName AS Employee, ISNULL(m.EmployeeName, ‘No Manager’) AS Manager FROM Employees e LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID; The ISNULL function provides a meaningful label for top-level records where no manager exists.

Illustration of an organizational hierarchy showing employee portraits connected by lines, with the same person appearing in both employee and manager roles, demonstrating the self- join concept

                                                        65317A - Querying and Analyzing SQL Server 2025

4-12 Module 4: Joining Data from Multiple Tables

    Key Takeaways
          Self-joins join a table to itself using different aliases
          Essential for querying hierarchical and parent-child relationships
          Use LEFT JOIN to include top-level records without parents
          Alias differentiation is critical for distinguishing table instances

       Instructor Notes
     Talking Points:

          Self-joins join a table to itself, typically to represent hierarchical data (e.g., employee-manager relationships, product categories). Require table
          aliases
          Aliases are essential to avoid ambiguity; recommend clear naming (e.g., 'employee' and 'manager' instead of 'e' and 'm') for readability
          Self-joins can find relationships within a single table: managers and their direct reports, products and related products, or organizational
          hierarchies
          Demonstrate limiting self-join results to avoid excessive recursion; explain why recursive CTEs (Common Table Expressions) are better for deep
          hierarchies
          Discuss performance implications: self-joins against large tables can be expensive; indexes on join columns are critical
     Demo Suggestion: Use an Employees table with an EmployeeID and ManagerID column. Self-join to show employees and their managers. Start with
     a simple hierarchy (2 levels) then show a deeper one. Demonstrate naming ambiguity without aliases. Build a query showing manager names
     alongside employees. Show the performance difference between indexed and non-indexed self-join columns.
     Common Student Questions:
     Q: Why do I need aliases in a self-join?
     A: Without aliases, SQL doesn't know which instance of the table you're referencing. Aliases let you treat the same table as separate entities in the
     query logic.
     Q: What if my hierarchy is deeper than 2 levels?
     A: Self-joins handle only one level of recursion. For deeper hierarchies (CEO  VP  Manager  Employee), use recursive CTEs (covered in advanced
     modules) or application logic to traverse the full tree.
     Q: How do I find employees with no manager (top of hierarchy)?
     A: LEFT JOIN the self-join, then filter WHERE manager_id IS NULL. Or use a FULL OUTER JOIN if you want to see employees and managers separately.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-13

Lesson 6: Multi-Table Joins and Join Order Optimization

      Estimated Time: 30 minutes

Combining Multiple Tables in Complex Queries

Real-world queries often require joining more than two tables to retrieve comprehensive business information. Understanding how to construct and optimize multi-table joins is essential for writing efficient, maintainable queries. Building Multi-Table Joins You can chain JOIN operations to connect three or more tables:

SELECT c.CustomerName, o.OrderDate, p.ProductName, od.Quantity, od.UnitPrice

FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID INNER JOIN OrderDetails od ON o.OrderID = od.OrderID INNER JOIN Products p ON od.ProductID = p.ProductID WHERE o.OrderDate \>= ‘2025-01-01’; This query combines four tables to show customer names, order dates, products purchased, quantities, and prices for orders in 2025. Join Order and Query Performance SQL Server’s query optimizer generally determines the most efficient join order automatically. However, understanding join order helps you write better queries:

Start with the most selective table: Tables filtered by WHERE conditions should often appear early Join on indexed columns: Foreign key and primary key joins typically perform best Consider intermediate result sizes: Joins that produce smaller intermediate results are more efficient Logical vs. Physical Join Order The order you write JOINs doesn’t always match the execution order. SQL Server analyzes the query and chooses an optimal execution plan. You can view execution plans to understand actual join order and identify performance bottlenecks. Best Practices for Multi-Table Queries Use consistent table alias naming conventions Format queries for readability with proper indentation Include only necessary columns in the SELECT list Test queries with representative data volumes Monitor execution plans for complex queries Well-structured multi-table joins enable sophisticated data analysis while maintaining query performance.

                                                        65317A - Querying and Analyzing SQL Server 2025

4-14 Module 4: Joining Data from Multiple Tables

Illustration showing a data flow assembly line where information from multiple source conveyor belts (representing different tables) merges together sequentially, demonstrating multi- table join processing

    Key Takeaways
          Chain multiple JOIN operations to combine three or more tables
          SQL Server's optimizer determines efficient join execution order
          Join on indexed columns (primary and foreign keys) for best performance
          Format and structure multi-table queries for readability and maintainability

       Instructor Notes
     Talking Points:

          Multi-table joins combine 3+ tables; readability suffers if not carefully structured. Maintain consistent join direction (all LEFT or all INNER) when
          possible
          Join order affects performance significantly in some databases. SQL Server and PostgreSQL optimize join order automatically; MySQL may not.
          Understand your database's optimizer
          General optimization principle: filter early and join smaller result sets. Apply WHERE clauses before joins when possible via subqueries or CTEs
          Brackets and formatting are critical for readability in multi-table joins. Consider CTEs as an alternative to improve code clarity over 4+ table joins
          Demonstrate join chain: Customers  Orders  OrderItems  Products. Show how missing a join condition creates unintended Cartesian products
     Demo Suggestion: Build a 4-table join step-by-step, starting with 2 tables and progressively adding tables. Show result counts at each step to verify
     correct row counts. Demonstrate how join order and ON conditions affect results. Use EXPLAIN PLAN (or equivalent) to show execution performance.
     Refactor a complex 4-table join into a CTE version and compare readability. Show how applying a filter via subquery before joining improves
     performance.
     Common Student Questions:
     Q: How many tables can I JOIN at once?
     A: Technically unlimited, but practically: 3-4 tables is readable; 5+ becomes hard to maintain. Beyond 5, consider CTEs, subqueries, or breaking into
     multiple queries. Performance degrades with complexity.
     Q: Does join order matter?
     A: For correctness (INNER JOIN): no. For optimization: yes in some databases. For outer joins: absolutely--it determines which rows are preserved.
     Best practice: optimize for readability first, then profile and optimize if needed.
     Q: My multi-table join has unexpected row counts. How do I debug?
     A: Build the join incrementally: test 2 tables, confirm row count, add the 3rd table, recheck. Identify which table introduced the unexpected explosion.
     Usually indicates a many-to-many relationship you weren't expecting.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-15

Lab: Combining Sales Data with Multiple JOIN Operations

Objective: Practice INNER JOIN, OUTER JOIN, CROSS JOIN, and self-join techniques to analyze sales data across multiple related tables in a sample retail database. Estimated Time: 45 minutes Platform: Azure Portal with Windows Server 2025 VM running SQL Server 2025 (version 17) and SSMS 22 Prerequisites:

Access to Azure Portal with provisioned lab VM SQL Server Management Studio 22 installed on lab VM AdventureWorksLT2025 sample database restored Basic SELECT query knowledge from previous modules

      Lab Facilitation
     Setup: Pre-lab: Ensure all students have access to the training database with populated Sales, Customers, Products, and Orders tables. Provide a data
     dictionary showing foreign key relationships. Create a separate schema for lab work if sharing an instance. Test connectivity 15 minutes before lab
     start. Have backup database snapshots available in case of accidental data corruption. Pre-load sample queries in the IDE for students to reference.
     Pacing: Start by walking through the first multi-table join as a group (10 min), then release students to work independently on progressively complex
     queries. Check in after 15 minutes; identify students struggling with basic INNER JOINs and pair with faster students. Reserve last 15 minutes for
     challenge exercise and group discussion of solutions. For remote instruction, use breakout rooms for peer support.

Procedures

Step 1: Connect to the lab VM and launch SQL Server Management Studio 22

1.  Sign in to the Azure Portal at https://portal.azure.com

2.  Navigate to Virtual machines in the left menu

3.  Click on your assigned lab VM (typically named sql-lab-vm-### )

4.  Click Connect \> RDP and download the RDP file

5.  Open the RDP file and connect using the credentials provided in your lab environment

6.  Once connected to the VM, click the Start menu

7.  Type SSMS and click Microsoft SQL Server Management Studio 22

8.  In the Connect to Server dialog:

         Server type: Database Engine
         Server name: localhost
         Authentication: Windows Authentication

9.  Click Connect

    Expected Output: SSMS Object Explorer displays with a connection to localhost, showing the Databases folder which can be expanded to reveal system and user databases including AdventureWorksLT2025.

Verification: Expand the Databases folder in Object Explorer and confirm AdventureWorksLT2025 database is present.

Step 2: Create a new query window and examine the database schema

1.  Click New Query button in the toolbar (or press Ctrl+N)

                                                          65317A - Querying and Analyzing SQL Server 2025

    4-16 Module 4: Joining Data from Multiple Tables

2.  Ensure the database dropdown shows AdventureWorksLT2025 (top-left of query window)

3.  Execute the following query to view available tables:

SELECT s.name AS SchemaName, t.name AS TableName

FROM sys.tables t INNER JOIN sys.schemas s ON t.schema_id = s.schema_id WHERE s.name = ‘SalesLT’ ORDER BY t.name;

4.  Execute the query by clicking Execute or pressing F5

Expected Output: Results grid displays approximately 10 tables in the SalesLT schema:

SchemaName TableName SalesLT Address SalesLT Customer SalesLT CustomerAddress SalesLT Product SalesLT ProductCategory SalesLT ProductDescription SalesLT ProductModel SalesLT ProductModelProductDescription SalesLT SalesOrderDetail SalesLT SalesOrderHeader

Verification: Verify you see at least the Customer, SalesOrderHeader, SalesOrderDetail, and Product tables listed.

Step 3: Write an INNER JOIN query to combine customers with their orders

1.  Clear the query window or open a new one
2.  Enter the following query to join customers with their sales orders:

SELECT c.CustomerID, c.FirstName, c.LastName, c.CompanyName, soh.SalesOrderID, soh.OrderDate, soh.TotalDue

FROM SalesLT.Customer c INNER JOIN SalesLT.SalesOrderHeader soh

     ON c.CustomerID = soh.CustomerID

ORDER BY c.CustomerID, soh.OrderDate;

3.  Execute the query

4.  Note the number of rows returned (displayed in the status bar at bottom)

            65317A - Querying and Analyzing SQL Server 2025

     Module 4: Joining Data from Multiple Tables 4-17

Expected Output: Results show customer information combined with order details. Sample rows:

CustomerID FirstName LastName CompanyName SalesOrderID OrderDate TotalDue 1 Orlando Gee A Bike Store 71774 2008-06-01 3756.989 2 Keith Harris Progressive Sports 71776 2008-06-01 3729.364

Status bar shows: (32 rows affected) or similar count.

Verification: Verify that every row has non-NULL values in all columns, indicating successful matching between customers and orders.

Step 4: Use LEFT OUTER JOIN to identify customers without orders

1.  Modify the previous query to use LEFT OUTER JOIN:

    SELECT c.CustomerID, c.FirstName, c.LastName, c.CompanyName, soh.SalesOrderID, soh.OrderDate, soh.TotalDue

    FROM SalesLT.Customer c LEFT OUTER JOIN SalesLT.SalesOrderHeader soh

    ON c.CustomerID = soh.CustomerID ORDER BY c.CustomerID, soh.OrderDate;

2.  Execute the query

3.  Scroll through results to find rows where SalesOrderID is NULL

4.  Count the total rows returned

Expected Output: Results include all customers, with NULL values in order columns for customers without orders:

CustomerID FirstName LastName CompanyName SalesOrderID OrderDate TotalDue 1 Orlando Gee A Bike Store 71774 2008-06-01 3756.989 3 Donna Carreras Advanced Bike Components NULL NULL NULL

Status bar shows more rows than the INNER JOIN (approximately 847 rows).

Verification: Confirm the row count is higher than the INNER JOIN, and that some rows have NULL in the SalesOrderID column.

Step 5: Filter the LEFT JOIN results to show only customers without orders

1.  Add a WHERE clause to filter for customers with no orders:

                        65317A - Querying and Analyzing SQL Server 2025

    4-18 Module 4: Joining Data from Multiple Tables

SELECT c.CustomerID, c.FirstName, c.LastName, c.CompanyName, soh.SalesOrderID

FROM SalesLT.Customer c LEFT OUTER JOIN SalesLT.SalesOrderHeader soh

    ON c.CustomerID = soh.CustomerID

WHERE soh.SalesOrderID IS NULL ORDER BY c.CustomerID;

2.  Execute the query

3.  Note the count of customers without orders

Expected Output: Results show only customers who have never placed an order:

CustomerID FirstName LastName CompanyName SalesOrderID 3 Donna Carreras Advanced Bike Components NULL 5 Lucy Harrington Metropolitan Sports Supply NULL

Status bar indicates approximately 815 rows, representing customers without orders.

Verification: Verify all rows show NULL in the SalesOrderID column, confirming these customers have no associated orders.

Step 6: Create a three-table join combining orders, order details, and products

1.  Clear the query window and enter this multi-table join:

    SELECT soh.SalesOrderID, soh.OrderDate, sod.OrderQty, sod.UnitPrice, sod.LineTotal, p.ProductID, p.Name AS ProductName, p.ProductNumber

    FROM SalesLT.SalesOrderHeader soh INNER JOIN SalesLT.SalesOrderDetail sod

    ON soh.SalesOrderID = sod.SalesOrderID INNER JOIN SalesLT.Product p

    ON sod.ProductID = p.ProductID WHERE soh.SalesOrderID = 71774 ORDER BY sod.SalesOrderDetailID;

2.  Execute the query to see detailed line items for a specific order

                       65317A - Querying and Analyzing SQL Server 2025

     Module 4: Joining Data from Multiple Tables 4-19

Expected Output: Results display order line items with product details:

SalesOrderID OrderDate OrderQty UnitPrice LineTotal ProductID ProductName ProductNumber 71774 2008-06-01 1 2443.35 2443.35 836 LL Mountain Frame - Black, 42 FR-M94B-42 71774 2008-06-01 3 218.454 655.362 822 LL Road Frame - Red, 52 FR-R38R-52

Approximately 4-6 rows for this specific order.

Verification: All rows should have the same SalesOrderID (71774) with different products listed.

Step 7: Implement a CROSS JOIN to generate a product-color matrix

1.  Create a query using CROSS JOIN to see all possible color combinations:

    – First, create a color reference table SELECT DISTINCT Color INTO \#ColorList FROM SalesLT.Product WHERE Color IS NOT NULL;

    – Create a category reference SELECT DISTINCT ProductCategoryID, Name AS CategoryName INTO \#CategoryList FROM SalesLT.ProductCategory WHERE ProductCategoryID IN (5, 6, 7); – Specific categories

    – Perform CROSS JOIN SELECT

    cat.CategoryName, col.Color, COUNT(p.ProductID) AS ProductCount FROM \#CategoryList cat CROSS JOIN \#ColorList col LEFT JOIN SalesLT.Product p ON cat.ProductCategoryID = p.ProductCategoryID AND col.Color = p.Color GROUP BY cat.CategoryName, col.Color ORDER BY cat.CategoryName, col.Color;

    – Clean up DROP TABLE \#ColorList; DROP TABLE \#CategoryList;

2.  Execute all statements together (select all and press F5)

                          65317A - Querying and Analyzing SQL Server 2025

    4-20 Module 4: Joining Data from Multiple Tables

Expected Output: Results show all combinations of categories and colors, with counts:

CategoryName Color ProductCount Bikes Black 43 Bikes Blue 0 Bikes Red 35 Bikes Silver 31

Messages tab shows: Commands completed successfully. The CROSS JOIN creates every possible combination, then the LEFT JOIN and COUNT show which combinations actually exist.

Verification: Verify you see combinations with ProductCount of 0, indicating color/category combinations that don’t exist in inventory.

Step 8: Use a self-join to display the product category hierarchy

1.  The ProductCategory table has a ParentProductCategoryID for hierarchical relationships
2.  Write a self-join query to show parent-child category relationships:

SELECT parent.ProductCategoryID AS ParentCategoryID, parent.Name AS ParentCategoryName, child.ProductCategoryID AS ChildCategoryID, child.Name AS ChildCategoryName

FROM SalesLT.ProductCategory child INNER JOIN SalesLT.ProductCategory parent

     ON child.ParentProductCategoryID = parent.ProductCategoryID

ORDER BY parent.Name, child.Name;

3.  Execute the query

Expected Output: Results show the two-level category hierarchy:

ParentCategoryID ParentCategoryName ChildCategoryID ChildCategoryName 1 Bikes 5 Mountain Bikes 1 Bikes 6 Road Bikes 1 Bikes 7 Touring Bikes 2 Components 8 Handlebars 2 Components 9 Bottom Brackets

Approximately 35-40 rows showing parent-child relationships.

Verification: Confirm that each ParentCategoryName appears multiple times with different ChildCategoryName values.

Step 9: Extend the self-join to include products and show the complete hierarchy

1.  Build on the previous self-join by adding products:

                   65317A - Querying and Analyzing SQL Server 2025

     Module 4: Joining Data from Multiple Tables 4-21

SELECT parent.Name AS ParentCategory, child.Name AS SubCategory, p.ProductID, p.Name AS ProductName, p.ListPrice

FROM SalesLT.ProductCategory child INNER JOIN SalesLT.ProductCategory parent

    ON child.ParentProductCategoryID = parent.ProductCategoryID

INNER JOIN SalesLT.Product p

    ON child.ProductCategoryID = p.ProductCategoryID

WHERE parent.Name = ‘Bikes’ ORDER BY child.Name, p.Name;

2.  Execute the query

Expected Output: Results display the three-level hierarchy (parent category \> subcategory \> product):

ParentCategory SubCategory ProductID ProductName ListPrice Bikes Mountain Bikes 771 Mountain-100 Silver, 38 3399.99 Bikes Mountain Bikes 772 Mountain-100 Silver, 42 3399.99 Bikes Road Bikes 773 Road-150 Red, 44 3578.27 Bikes Touring Bikes 774 Touring-1000 Blue, 50 2384.07

Approximately 90-125 rows showing all bike products organized by subcategory.

Verification: All rows should show ‘Bikes’ as ParentCategory with three distinct SubCategory values (Mountain Bikes, Road Bikes, Touring Bikes).

Step 10: Create a complex query joining five tables to produce a complete sales report

1.  Write a comprehensive query combining customer, order, product, and category data:

    SELECT c.CustomerID, c.FirstName + ’ ’ + c.LastName AS CustomerName, c.CompanyName, soh.SalesOrderID, soh.OrderDate, pc.Name AS Category, p.Name AS ProductName, sod.OrderQty, sod.UnitPrice, sod.LineTotal

    FROM SalesLT.Customer c INNER JOIN SalesLT.SalesOrderHeader soh

    ON c.CustomerID = soh.CustomerID INNER JOIN SalesLT.SalesOrderDetail sod

    ON soh.SalesOrderID = sod.SalesOrderID INNER JOIN SalesLT.Product p

    ON sod.ProductID = p.ProductID INNER JOIN SalesLT.ProductCategory pc

    ON p.ProductCategoryID = pc.ProductCategoryID WHERE soh.OrderDate \>= ‘2008-06-01’

    AND soh.OrderDate \< ‘2008-07-01’ ORDER BY soh.OrderDate, c.CustomerID, sod.SalesOrderDetailID;

2.  Execute the query

3.  Review the results to understand the complete data relationships

                65317A - Querying and Analyzing SQL Server 2025

    4-22 Module 4: Joining Data from Multiple Tables

Expected Output: Comprehensive sales report showing:

CustomerID CustomerName CompanyName SalesOrderID OrderDate Category ProductName OrderQty UnitPrice LineTota

1 Orlando Gee A Bike Store 71774 2008-06-01 Frames LL Mountain 1 2443.35 2443.35

                                                                                         Frame - Black

Approximately 100-200 rows showing detailed sales data for June 2008.

Verification: All OrderDate values should be in June 2008. Every row should have complete data with no NULL values.

Step 11: Compare INNER JOIN vs. LEFT JOIN behavior with aggregate functions

1.  Run two queries to see how JOIN type affects aggregation results:

    – Using INNER JOIN (only customers with orders) SELECT

    COUNT(DISTINCT c.CustomerID) AS TotalCustomers, COUNT(soh.SalesOrderID) AS TotalOrders, SUM(soh.TotalDue) AS TotalRevenue FROM SalesLT.Customer c INNER JOIN SalesLT.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID;

    – Using LEFT JOIN (all customers) SELECT

    COUNT(DISTINCT c.CustomerID) AS TotalCustomers, COUNT(soh.SalesOrderID) AS TotalOrders, SUM(soh.TotalDue) AS TotalRevenue FROM SalesLT.Customer c LEFT OUTER JOIN SalesLT.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID;

2.  Execute both queries

3.  Compare the TotalCustomers count between the two results

Expected Output: First query (INNER JOIN):

TotalCustomers TotalOrders TotalRevenue 32 32 1057453.0336

Second query (LEFT JOIN): TotalRevenue 1057453.0336 TotalCustomers TotalOrders 847 32

The INNER JOIN only counts customers with orders, while LEFT JOIN counts all customers.

Verification: Verify that TotalCustomers is much higher in the LEFT JOIN result, while TotalOrders and TotalRevenue remain identical.

Step 12: Analyze JOIN performance using execution plans

1.  Enable the actual execution plan by clicking Include Actual Execution Plan in the toolbar (or press Ctrl+M)

2.  Execute this query:

                                     65317A - Querying and Analyzing SQL Server 2025

     Module 4: Joining Data from Multiple Tables 4-23

SELECT c.CustomerID, c.FirstName, c.LastName, COUNT(soh.SalesOrderID) AS OrderCount, SUM(soh.TotalDue) AS TotalSpent

FROM SalesLT.Customer c LEFT OUTER JOIN SalesLT.SalesOrderHeader soh

    ON c.CustomerID = soh.CustomerID

GROUP BY c.CustomerID, c.FirstName, c.LastName HAVING COUNT(soh.SalesOrderID) \> 0 ORDER BY TotalSpent DESC;

3.  After execution, click the Execution plan tab

4.  Hover over each operation icon to see cost percentages

5.  Look for Hash Match or Nested Loops join operators

Expected Output: Results show customers ranked by spending:

CustomerID FirstName LastName OrderCount TotalSpent 29796 Jordan Turner 1 108597.9536 29503 Willie Xu 1 98138.2131

Execution plan tab displays a graphical tree with icons representing: Table Scan or Index Scan operations Hash Match (Aggregate) for GROUP BY Sort operation for ORDER BY Each operation shows a cost percentage when you hover over it.

Verification: Confirm the execution plan shows join operations and note the most expensive operation (typically has the highest cost percentage).

Troubleshooting

    Problem: Error: 'Invalid object name SalesLT.Customer' when executing queries
     Solution: Verify the database context is set to AdventureWorksLT2025. Check the database dropdown at the top of the query window. If
     AdventureWorksLT2025 is not listed, the database may not be restored. Right-click Databases in Object Explorer and select Refresh. If still missing,
     restore the AdventureWorksLT2025 backup file from C:\Labs\Backups using the Restore Database wizard.

Problem: LEFT JOIN returns the same number of rows as INNER JOIN Solution: This occurs when every row in the left table has a matching row in the right table. This is expected behavior for some table pairs. Verify you’re using the correct tables - for example, LEFT JOIN from Customer to SalesOrderHeader should show more rows than INNER JOIN because some customers have no orders. If testing with other table combinations, check that there actually are unmatched rows by running: SELECT COUNT(\*) FROM LeftTable WHERE ID NOT IN (SELECT ID FROM RightTable);

Problem: CROSS JOIN returns millions of rows and SSMS becomes unresponsive Solution: CROSS JOIN creates a Cartesian product (every row combined with every other row). If you accidentally CROSS JOIN two large tables, the result set can be enormous. Click the red square Stop button in SSMS toolbar to cancel the query. To prevent this, always add a WHERE clause or use temporary tables with filtered data when testing CROSS JOINs, as shown in Step 7. You can also add TOP (100) to limit results: SELECT TOP (100) \* FROM Table1 CROSS JOIN Table2;

                      65317A - Querying and Analyzing SQL Server 2025

4-24 Module 4: Joining Data from Multiple Tables

    Problem: Self-join returns no results or shows error about ambiguous column names
     Solution: Self-joins require table aliases to distinguish between the two instances of the same table. Ensure you've assigned different aliases (e.g.,
     'parent' and 'child') and use these aliases in all column references. Error 'Ambiguous column name' means you referenced a column without
     specifying which table alias. Correct: parent.Name and child.Name. Incorrect: just Name. Every column in SELECT, WHERE, and ON clauses must be
     prefixed with an alias when doing self-joins.

     Problem: Execution plan shows warnings (yellow exclamation marks) on operators
     Solution: Warnings often indicate missing statistics, implicit conversions, or no join predicate. Right-click the operator with the warning and select
     Properties to see details. Common fixes: 1) For missing statistics, run UPDATE STATISTICS on the table; 2) For implicit conversions, ensure join
     columns have matching data types (e.g., don't join INT to VARCHAR); 3) For no join predicate warnings, verify your ON clause correctly links the tables.
     While warnings don't prevent queries from running, they can significantly impact performance.

       Common Student Errors
     Students forget the ON clause and accidentally create CROSS JOINs, generating massive result sets.
     Emphasize the ON clause in early examples. Encourage students to use LIMIT 10 initially to preview results. Point out the exponential row growth as a
     diagnostic clue.
     Confusion about NULL values in outer joins; students filter them out unintentionally or misinterpret their meaning.
     Explain that NULL = 'no match found.' Review a LEFT JOIN result showing NULLs, then show what happens with WHERE column IS NULL (finds
     unmatched records). Make this a key insight.
     Multi-table join results have unexpected row counts; students don't debug incrementally.
     Walk through the debugging process: build joins step-by-step, count rows at each stage, identify where the explosion occurs. Help them recognize
     many-to-many relationships.
     Self-join queries are written without aliases or with ambiguous alias names, causing errors or confusion.
     Enforce clear alias naming in self-join examples (e.g., employee_e and manager_m). Show the error message when aliases are missing, then show the
     fix.
     Students use RIGHT JOIN or nested WHERE conditions in OUTER JOINs instead of ON, breaking the outer join logic.
     Demonstrate the difference: WHERE filters after join; ON conditions during join. For outer joins, this is critical. Convert any RIGHT JOINs to LEFT JOINs
     by reordering tables.

Challenge Exercise

Advanced Sales Analysis with Multiple JOIN Types

Create a comprehensive analytical query that answers this business question: “Which product categories have the highest revenue, and what percentage of customers who bought from each category made repeat purchases in the same category?” Your solution must: 1. Calculate total revenue by product category (include parent category name) 2. Determine the number of unique customers who purchased from each category 3. Identify customers who made multiple purchases from the same category 4. Calculate the repeat purchase percentage for each category 5. Include categories even if they have no sales (show 0 values) 6. Sort results by revenue descending 7. Use at least three different JOIN types (INNER, LEFT/RIGHT, and self-join) 8. Include proper column aliases for readability Your result set should include these columns:

ParentCategory

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 4: Joining Data from Multiple Tables 4-25

Category TotalRevenue UniqueCustomers RepeatCustomers RepeatPurchasePercentage Hints: You’ll need to join SalesOrderHeader, SalesOrderDetail, Product, and ProductCategory tables Consider using a CTE or subquery to identify repeat customers Think about how to count distinct orders per customer per category Remember that calculating percentages requires converting to decimal/float Test your query on a subset first (add WHERE clause) before running on full dataset Bonus Challenge: Modify your query to also show which specific products within each category are most frequently purchased by repeat customers. This will require additional joins and more complex grouping logic.

      Hints: Challenge exercise suggestion: Provide a scenario like 'Find all customers and their total order amounts, including customers with no orders,
     and products that haven't been ordered.' This requires LEFT JOINs, aggregation, and GROUP BY. Guide students with hints: (1) Start with Customers,
     LEFT JOIN Orders; (2) LEFT JOIN OrderItems; (3) LEFT JOIN Products; (4) Use GROUP BY and SUM for aggregation; (5) Use COALESCE for NULL handling.
     For advanced students, ask them to optimize the query and explain the execution plan. Optional extension: ask students to identify which
     customers/products appear only on the left side (unmatched) using IS NULL.

                                                         65317A - Querying and Analyzing SQL Server 2025

4-26 Module 4: Joining Data from Multiple Tables

Answer Key

1.  What is the primary purpose of a foreign key in a relational database?

    1)  To uniquely identify each row in the current table
    2)  To create a relationship by referencing a primary key in another table
    3)  To speed up query performance by creating an index
    4)  To enforce alphabetical sorting of data

    Answer: B A foreign key creates a relationship between tables by referencing the primary key of another table, enabling JOIN operations to combine related data. Primary keys uniquely identify rows in their own table, not foreign keys.

2.  Which JOIN type returns only the rows where matching values exist in both tables?

    1)  LEFT OUTER JOIN
    2)  FULL OUTER JOIN
    3)  INNER JOIN
    4)  CROSS JOIN

    Answer: C INNER JOIN returns only rows with matching values in both tables based on the join condition. OUTER JOINs include unmatched rows, and CROSS JOIN returns all possible combinations.

3.  You want to list all customers, including those who have never placed an order. Which JOIN type should you use?

    1)  INNER JOIN between Customers and Orders
    2)  LEFT OUTER JOIN with Customers as the left table
    3)  RIGHT OUTER JOIN with Customers as the right table
    4)  CROSS JOIN between Customers and Orders

    Answer: B LEFT OUTER JOIN with Customers as the left table returns all customers, including those without orders (where order columns will be NULL). INNER JOIN would exclude customers without orders.

4.  What does the ON clause specify in a JOIN operation?

    1)  Which columns to include in the result set
    2)  The relationship condition between the tables being joined
    3)  The sort order of the final results
    4)  Which table should be processed first

    Answer: B The ON clause specifies the relationship condition between tables, typically comparing foreign keys to primary keys. The SELECT clause determines output columns, ORDER BY handles sorting, and the optimizer determines processing order.

5.  If table A has 10 rows and table B has 5 rows, how many rows will a CROSS JOIN between them produce?

    1)  15 rows

    2)  10 rows

    3)  50 rows

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 4: Joining Data from Multiple Tables 4-27

    4)  5 rows

    Answer: C CROSS JOIN produces a Cartesian product, multiplying the row counts: 10 ? 5 = 50 rows. Every row from table A is combined with every row from table B.

6.  Which query finds all customers who have NOT placed any orders?

    1)  SELECT c.\* FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID
    2)  SELECT c.\* FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE o.OrderID IS NULL
    3)  SELECT c.\* FROM Customers c RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
    4)  SELECT c.\* FROM Customers c CROSS JOIN Orders o

    Answer: B LEFT JOIN with Customers on the left returns all customers. Adding WHERE o.OrderID IS NULL filters for customers without matching orders. INNER JOIN would only show customers with orders.

7.  In a self-join on the Employees table, what does the join condition ‘e.ManagerID = m.EmployeeID’ accomplish?

    1)  It finds employees who are also managers
    2)  It matches each employee with their manager
    3)  It lists all employees in alphabetical order
    4)  It counts the number of managers in the company

    Answer: B This self-join condition matches each employee’s ManagerID (indicating who manages them) with that manager’s EmployeeID, effectively pairing employees with their managers from the same table.

8.  What is the main advantage of using table aliases in JOIN queries?

    1)  They improve query execution speed
    2)  They improve readability and reduce typing
    3)  They automatically create indexes on joined columns
    4)  They eliminate the need for ON clauses

    Answer: B Table aliases make queries more readable and reduce typing, especially when prefixing column names or working with multiple tables. They don’t directly affect performance, indexing, or syntax requirements.

9.  Which JOIN type would return all rows from both tables, showing NULL values where matches don’t exist?

    1)  INNER JOIN
    2)  LEFT OUTER JOIN
    3)  FULL OUTER JOIN
    4)  CROSS JOIN

    Answer: C FULL OUTER JOIN returns all rows from both tables, filling with NULL where matches don’t exist in either direction. LEFT and RIGHT JOINs preserve only one side, while INNER JOIN excludes unmatched rows entirely.

10. When joining four tables in a query, what primarily determines the most efficient join execution order?

    1)  The alphabetical order of table names

                                                          65317A - Querying and Analyzing SQL Server 2025

        4-28 Module 4: Joining Data from Multiple Tables

    2)  The order the tables appear in the FROM and JOIN clauses

    3)  SQL Server’s query optimizer based on statistics and indexes

    4)  The size of the tables in descending order Answer: C SQL Server’s query optimizer analyzes statistics, indexes, and query conditions to determine the most efficient join execution order automatically, regardless of how you write the query. The written order doesn’t dictate execution order.

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 4: Joining Data from Multiple Tables 4-29

Module Summary

This module covered essential JOIN operations for combining data from multiple tables in SQL Server 2025. You learned how INNER JOIN retrieves matching rows, how LEFT and RIGHT OUTER JOINs include unmatched records, and when to use FULL OUTER JOIN and CROSS JOIN for specialized scenarios. Self-joins enable hierarchical data queries, and multi-table joins combine three or more tables for comprehensive analysis. Understanding these techniques allows you to construct powerful queries that reveal relationships and insights across your entire database.

                                                        65317A - Querying and Analyzing SQL Server 2025

4-30 Module 4: Joining Data from Multiple Tables

Discussion Prompts

     1. Walk through a real-world scenario you're familiar with: How would you represent the relationships between entities (e.g., a customer
          management system)? Which tables would you create, and how would you JOIN them to answer business questions like 'Which customers have
          never made a purchase' or 'What's the most popular product by region'? How might join choice (INNER vs. LEFT

                                                         65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

            Module 5: Subqueries and Table Expressions

                                                           65317A
                                   3-day course ? 10 modules ? beginner level

Contents

Module 5: Subqueries and Table Expressions

Lesson 1: Understanding Subqueries and Table Expressions Lesson 2: Scalar and Multi-Row Subqueries Lesson 3: Correlated Subqueries and Performance Considerations Lesson 4: Common Table Expressions (CTEs) Lesson 5: Recursive CTEs for Hierarchical Data Lesson 6: Derived Tables and Table Expression Best Practices Lab: Building Subqueries and Table Expressions Answer Key Module Summary  Module 5: Subqueries and Table Expressions 5-1

Learning Objectives

After completing this module, you will be able to: Write correlated and non-correlated subqueries Create and utilize Common Table Expressions (CTEs) Build derived tables and inline views Choose appropriate table expression techniques for specific scenarios

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                  65317A - Querying and Analyzing SQL Server 2025

5-2 Module 5: Subqueries and Table Expressions

      Module Overview
     This module explores advanced query techniques using subqueries and table expressions,
     essential for writing complex, maintainable SQL. Students will master scalar and multi-row
     subqueries, CTEs, recursive hierarchies, and derived tables over approximately 90 minutes of
     instruction plus 60 minutes of hands-on lab work.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-3

Lesson 1: Understanding Subqueries and Table Expressions

      Estimated Time: 12 minutes

Understanding Subqueries and Table Expressions

Subqueries and table expressions are powerful SQL techniques that enable you to break complex queries into logical, manageable components. A subquery is a query nested inside another query, allowing you to use the results of one query as input for another. Table expressions – including Common Table Expressions (CTEs) and derived tables – create temporary result sets that exist only for the duration of a single query. These techniques solve common data challenges that simple queries can’t address efficiently. For example, when you need to find all customers who have placed orders above the average order value, a subquery calculates the average first, then the outer query uses that result to filter customers. When you need to perform multi-step transformations on data, CTEs provide a readable, step-by-step approach that makes complex logic transparent. Why use subqueries and table expressions? They enable you to:

Break complex problems into simpler, sequential steps Reuse intermediate results within a single query Write queries that reference calculated values or filtered sets Improve code readability and maintainability Traverse hierarchical data structures like organizational charts SQL Server 2025 processes these constructs efficiently, often optimizing them into the same execution plan as equivalent JOIN operations. Understanding when to use each technique – and how they differ in performance characteristics – is essential for writing effective queries. In this module, you’ll learn to recognize scenarios where subqueries and table expressions provide the clearest, most efficient solution.

                                                        65317A - Querying and Analyzing SQL Server 2025

5-4 Module 5: Subqueries and Table Expressions

Conceptual illustration showing nested boxes representing query layers, with data flowing from inner subqueries to outer queries, and branching paths showing different table expression types

    Key Takeaways
          Subqueries are queries nested inside other queries
          Table expressions create temporary result sets for query duration
          These techniques break complex problems into manageable steps
          SQL Server optimizes many subqueries and table expressions efficiently

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-5

Instructor Notes Talking Points:

Subqueries are queries nested within other queries; they provide logical organization and can improve readability Table expressions are temporary result sets (CTEs, derived tables) that exist only for the duration of the parent query Distinguish between subqueries in SELECT, FROM, WHERE, and HAVING clauses–each has different use cases and performance implications Emphasize that subqueries allow breaking complex problems into smaller, testable pieces Demo Suggestion: Live-code a simple subquery in a WHERE clause (e.g., finding employees earning more than the average salary), then show the equivalent self-join. Highlight how subqueries improve readability compared to complex JOINs. Common Student Questions: Q: What’s the difference between a subquery and a JOIN? A: JOINs combine columns from multiple tables side-by-side; subqueries nest one query inside another. Subqueries often replace self-joins and make filtering logic clearer. Modern query optimizers often convert subqueries to JOINs for execution. Q: Can subqueries always be replaced with JOINs? A: Not always–aggregates and EXISTS subqueries may not have direct JOIN equivalents. However, many filtering subqueries can be converted to JOINs for potential performance gains. Test both approaches with your specific data.

                                                  65317A - Querying and Analyzing SQL Server 2025

5-6 Module 5: Subqueries and Table Expressions

Lesson 2: Scalar and Multi-Row Subqueries

      Estimated Time: 18 minutes

Scalar and Multi-Row Subqueries

Subqueries come in two fundamental types based on what they return: scalar subqueries return a single value, while multi-row subqueries return a set of values. Understanding this distinction helps you choose the right subquery type and placement for your needs. Scalar subqueries return exactly one row with one column. You can use them anywhere a single value is expected – in SELECT lists, WHERE clauses, or even as function arguments. For example, a scalar subquery might calculate the average product price, then use that value to identify premium products:

SELECT ProductName, Price FROM Products WHERE Price \> (SELECT AVG(Price) FROM Products);

The inner query (SELECT AVG(Price) FROM Products) returns a single numeric value. The outer query compares each product’s price against this value. Scalar subqueries must guarantee they return exactly one value, or SQL Server raises an error. Multi-row subqueries return multiple values, typically used with operators like IN, EXISTS, ANY, or ALL. These subqueries enable you to filter based on membership in a set:

SELECT CustomerName FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders WHERE OrderDate \>= ‘2025-01-01’);

The IN operator checks if each customer’s ID appears in the set of customer IDs returned by the subquery. The EXISTS operator offers an alternative approach, checking whether a subquery returns any rows at all, rather than comparing specific values. EXISTS often performs better for large datasets because it stops processing as soon as it finds a match.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-7

Side-by-side comparison showing scalar subquery as a single value container feeding into a larger query, versus multi-row subquery as a collection of values being checked against a dataset

Key Takeaways Scalar subqueries return a single value and can appear anywhere a value is expected Multi-row subqueries return multiple values, used with IN, EXISTS, ANY, or ALL Scalar subqueries must guarantee exactly one value or raise an error EXISTS checks for row existence and often performs better than IN for large datasets

                                                       65317A - Querying and Analyzing SQL Server 2025

5-8 Module 5: Subqueries and Table Expressions

      Instructor Notes
     Talking Points:

          Scalar subqueries return exactly one row and one column; they're safe to use in SELECT and
          WHERE clauses with comparison operators (=, <, >)
          Multi-row subqueries return multiple rows; they must use IN, ANY, ALL, or EXISTS operators--
          NOT equality
          IN is equivalent to =ANY; NOT IN differs from !=ALL when NULLs are present (NULL logic
          gotcha!)
          Performance tip: scalar subqueries in SELECT execute once per row; consider moving to JOIN
          or CTE if called thousands of times
          ANY and ALL operators are less common but powerful for comparison operations
     Demo Suggestion: Demo 1: Scalar subquery in SELECT clause (e.g., SELECT customer_name,
     (SELECT MAX(order_date) FROM orders) AS latest_order). Demo 2: Multi-row subquery with IN
     (find products in a specific category). Demo 3: Show the NULL gotcha--WHERE status NOT IN
     (SELECT status_id FROM dim_status WHERE status_id IS NULL) returns no rows; explain why.
     Demo 4: Compare =ANY vs IN on the same query.
     Common Student Questions:
     Q: Why does NOT IN return no results when NULLs are involved?
     A: NOT IN converts to !=ALL, and any value != NULL evaluates to UNKNOWN, not TRUE. Use NOT
     IN with a WHERE clause in the subquery filtering out NULLs, or use NOT EXISTS instead.
     Q: When should I use ANY instead of IN?
     A: IN is clearer for equality checks. Use ANY for comparisons like >ANY (greater than the smallest
     value) or <ANY (less than the largest). ANY is less common but useful for range logic.
     Q: Does a scalar subquery return NULL if no rows match?
     A: Yes. If the subquery returns zero rows, the result is NULL. Always consider this in comparisons;
     NULL = anything evaluates to UNKNOWN, not FALSE.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-9

Lesson 3: Correlated Subqueries and Performance Considerations

      Estimated Time: 16 minutes

Correlated Subqueries and Performance Considerations

Correlated subqueries reference columns from the outer query, creating a dependency relationship between inner and outer queries. Unlike self-contained subqueries that execute once and return a result, correlated subqueries execute repeatedly – once for each row processed by the outer query. A classic correlated subquery example finds products priced above the average for their category:

SELECT ProductName, Price, CategoryID FROM Products p1 WHERE Price \> (SELECT AVG(Price)

              FROM Products p2
               WHERE p2.CategoryID = p1.CategoryID);

Notice how the inner query references p1.CategoryID from the outer query. For each product in p1 , the subquery calculates the average price for that product’s category, then the outer query compares the product’s price to that average. This row-by-row evaluation makes correlated subqueries conceptually powerful but potentially expensive. Performance implications are significant. Because correlated subqueries execute once per outer row, they can create performance bottlenecks with large datasets. A table with 100,000 rows might trigger 100,000 subquery executions. SQL Server’s query optimizer often transforms correlated subqueries into JOIN operations internally, but not always. You can frequently rewrite correlated subqueries as JOINs or window functions for better performance:

                                                        65317A - Querying and Analyzing SQL Server 2025

5-10 Module 5: Subqueries and Table Expressions

– Same result using window function (typically faster) SELECT ProductName, Price, CategoryID FROM (SELECT ProductName, Price, CategoryID,

            AVG(Price) OVER (PARTITION BY CategoryID) AS AvgCategoryPrice
        FROM Products) AS Derived

WHERE Price \> AvgCategoryPrice;

Use correlated subqueries when they make your logic clearer, but always test performance on realistic data volumes and consider alternatives for production systems.

Illustration showing a row-by-row evaluation process with a subquery executing repeatedly for each row in a dataset, with clock symbols indicating performance considerations

    Key Takeaways
          Correlated subqueries reference outer query columns and execute once per outer row
          They create row-by-row evaluation that can impact performance on large datasets
          SQL Server sometimes optimizes correlated subqueries into JOINs automatically
          Window functions or explicit JOINs often provide better performance for the same logic

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-11

Instructor Notes Talking Points:

Correlated subqueries reference columns from the outer query; the subquery executes once per outer row, making them slower than joins Use correlated subqueries with EXISTS/NOT EXISTS for existence checks–these are more efficient than multi-row subqueries Rewriting correlated subqueries as JOINs or window functions typically improves performance; use execution plans to compare EXISTS is more efficient than IN for large result sets because it stops after finding the first match Performance tuning: index the columns used in the correlation condition Demo Suggestion: Demo 1: Show a correlated subquery (find customers with at least one order: WHERE EXISTS (SELECT 1 FROM orders WHERE orders.customer_id = customers.customer_id)). Demo 2: Rewrite the same query as a LEFT JOIN with IS NOT NULL check. Demo 3: Run both queries and display execution plans side-by-side, highlighting the difference in query cost. Demo 4: Show the ‘1’ trick in EXISTS–SELECT 1 is faster than SELECT \* because the DB doesn’t fetch actual columns. Common Student Questions: Q: Why is EXISTS faster than IN for large datasets? A: EXISTS stops after finding the first matching row. IN must evaluate all values in the subquery result set. For existence checks, EXISTS is strictly better. Q: Should I always avoid correlated subqueries? A: Not always. Correlated subqueries with EXISTS are often the clearest way to express existence logic. Use execution plans to compare performance. Modern optimizers can rewrite correlated subqueries efficiently in many cases. Q: What does SELECT 1 mean in a subquery? A: SELECT 1 (or any constant) returns a constant value; it’s used with EXISTS to simply check existence without fetching actual column data. More efficient than SELECT \*.

                                                  65317A - Querying and Analyzing SQL Server 2025

5-12 Module 5: Subqueries and Table Expressions

Lesson 4: Common Table Expressions (CTEs)

      Estimated Time: 16 minutes

Common Table Expressions (CTEs)

Common Table Expressions (CTEs) provide a more readable alternative to subqueries and derived tables by creating named, temporary result sets. A CTE appears at the start of your query with the WITH keyword, followed by your main query that references it. CTEs exist only for the duration of a single query but can be referenced multiple times within that query. The basic CTE syntax is straightforward:

WITH SalesSummary AS ( SELECT CustomerID, SUM(TotalAmount) AS TotalSales FROM Orders GROUP BY CustomerID

) SELECT c.CustomerName, s.TotalSales FROM Customers c INNER JOIN SalesSummary s ON c.CustomerID = s.CustomerID WHERE s.TotalSales \> 10000;

This CTE named SalesSummary calculates total sales per customer, then the main query joins it to the Customers table to get customer names. The advantage over a derived table is clarity – the CTE name documents what the result set represents. Multiple CTEs can build on each other, creating a step-by-step data transformation pipeline:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-13

WITH SalesByMonth AS ( SELECT YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth, SUM(TotalAmount) AS MonthlySales FROM Orders GROUP BY YEAR(OrderDate), MONTH(OrderDate)

), RunningTotals AS (

     SELECT OrderYear, OrderMonth, MonthlySales,
            SUM(MonthlySales) OVER (ORDER BY OrderYear, OrderMonth) AS RunningTotal

      FROM SalesByMonth

) SELECT \* FROM RunningTotals;

Each CTE builds on previous results, making complex transformations easier to understand and maintain. CTEs improve code readability dramatically compared to deeply nested subqueries, especially for queries with multiple logical steps.

Visual representation of a multi-stage data pipeline with named stages, showing data flowing through transformation steps from raw input to final result

    Key Takeaways
         CTEs create named temporary result sets using the WITH keyword
         They improve readability by giving meaningful names to intermediate results
         Multiple CTEs can reference each other to build transformation pipelines
         CTEs exist only for the query duration but can be referenced multiple times

                                                         65317A - Querying and Analyzing SQL Server 2025

5-14 Module 5: Subqueries and Table Expressions

      Instructor Notes
     Talking Points:

          CTEs (WITH clauses) define temporary named result sets scoped to a single query; they
          improve readability and enable code reuse within that query
          Declare multiple CTEs in sequence; later CTEs can reference earlier ones
          CTEs are materialized once (in most databases) or inlined (cached result reuse varies by DB
          and query optimizer)
          Advantages: readable names, logical organization, easier debugging than nested subqueries
          CTEs are not materialized as permanent temp tables; they exist only for the duration of the
          main query
          Use CTEs to simplify complex logic, especially when the same subquery is needed multiple
          times
     Demo Suggestion: Demo 1: Rewrite a nested subquery as a CTE, showing improved readability.
     Demo 2: Chain two CTEs (first CTE calculates monthly sales, second CTE uses the first to find top
     months). Demo 3: Use the same CTE twice in the main query and discuss performance
     implications. Demo 4: Show a comparison with equivalent nested subqueries side-by-side.
     Common Student Questions:
     Q: Does a CTE execute multiple times if I reference it twice?
     A: Behavior varies by database. Most optimizers inline CTEs, so they may execute once or
     multiple times depending on the context. Use execution plans to verify. If referenced multiple
     times, some databases may cache results; test with your specific DBMS.
     Q: Can a CTE reference another CTE?
     A: Yes. Define CTEs in order, and later CTEs can reference earlier ones. The last CTE or the main
     query follows the WITH clause.
     Q: Are CTEs better for performance than subqueries?
     A: Not necessarily. CTEs improve readability and logical organization, but performance depends
     on the optimizer. Always compare execution plans. CTEs are a design choice for clarity, not a
     performance optimization technique.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-15

Lesson 5: Recursive CTEs for Hierarchical Data

      Estimated Time: 16 minutes

Recursive CTEs for Hierarchical Data

Recursive CTEs are specialized CTEs that reference themselves, enabling you to traverse hierarchical or graph structures like organizational charts, bill-of-materials, or category trees. They consist of two parts: an anchor member that provides the starting point, and a recursive member that references the CTE itself to navigate the hierarchy. A typical recursive CTE structure looks like this:

WITH EmployeeHierarchy AS ( – Anchor member: starting point (top-level employees) SELECT EmployeeID, EmployeeName, ManagerID, 1 AS Level FROM Employees WHERE ManagerID IS NULL

     UNION ALL

      -- Recursive member: references EmployeeHierarchy to find reports
      SELECT e.EmployeeID, e.EmployeeName, e.ManagerID, eh.Level + 1
      FROM Employees e
      INNER JOIN EmployeeHierarchy eh ON e.ManagerID = eh.EmployeeID

) SELECT \* FROM EmployeeHierarchy ORDER BY Level, EmployeeID;

The anchor member finds employees with no manager (top of hierarchy). The recursive member joins the Employees table to EmployeeHierarchy itself, finding employees whose manager appears in the current result set. SQL Server executes the recursive member repeatedly until no new rows are found, then combines all results. Important safeguards: Recursive CTEs include a default maximum recursion depth of 100 levels to prevent infinite loops. You can adjust this with the OPTION (MAXRECURSION n) hint, or set it to 0 for unlimited recursion (use carefully). Always ensure your recursive logic has a termination condition – typically when no more child rows exist in the hierarchy.

                                                        65317A - Querying and Analyzing SQL Server 2025

5-16 Module 5: Subqueries and Table Expressions

Recursive CTEs transform complex hierarchical queries that would otherwise require procedural code or multiple self-joins into elegant, declarative SQL.

     Organizational hierarchy tree showing levels expanding from top executives down through management layers to
                                     individual contributors, with visual indicators of recursive traversal

     Key Takeaways
          Recursive CTEs reference themselves to traverse hierarchical data structures
          They consist of an anchor member (starting point) and recursive member (iteration)
          SQL Server executes recursion until no new rows are found
          Default maximum recursion depth is 100 levels to prevent infinite loops

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-17

Instructor Notes Talking Points:

Recursive CTEs consist of an anchor member (base case) and a recursive member (recursive case) joined with UNION ALL Anchor executes first, returning seed rows; recursive member executes iteratively, joining current result set to source data until no new rows are found Use cases: organizational hierarchies (employee-manager chains), product categories, geographic regions, bill-of-materials structures Depth control: include a termination condition (e.g., WHERE depth \< max_depth) to prevent infinite loops and manage performance Performance consideration: recursive CTEs can be slow on large hierarchies; test with sample data and monitor query cost UNION ALL is required; UNION removes duplicates and adds overhead Demo Suggestion: Demo 1: Build an employee hierarchy showing managers and their direct reports (anchor: top-level managers, recursive: employees reporting to current level). Demo 2: Walk through the execution step-by-step, showing results after each iteration. Demo 3: Add a depth counter and termination condition to prevent runaway recursion. Demo 4: Expand to show full path (e.g., CEO \> Director \> Manager \> Employee) using STRING_AGG or FOR XML PATH. Common Student Questions: Q: How do I prevent infinite loops in a recursive CTE? A: Add a WHERE clause termination condition in the recursive member, such as WHERE depth \< 10 or WHERE level_count \< max_levels. Always include a depth/level counter and test your hierarchy depth first. Q: Can a recursive CTE reference multiple tables? A: Yes. The recursive member can JOIN the recursive result set with any table. However, keep the logic simple; complex multi-table recursion is hard to debug. Q: What’s the difference between anchor and recursive in terms of execution? A: Anchor executes once, returning initial rows. Recursive executes repeatedly: it joins the previous iteration’s result set with the source table, returning new rows until no new rows are found or the termination condition is met.

                                                  65317A - Querying and Analyzing SQL Server 2025

5-18 Module 5: Subqueries and Table Expressions

Lesson 6: Derived Tables and Table Expression Best Practices

      Estimated Time: 12 minutes

Derived Tables and Table Expression Best Practices

Derived tables are subqueries in the FROM clause that create temporary result sets for use within a single query. Unlike CTEs, derived tables appear inline at the point of use and must be aliased. They’re functionally equivalent to CTEs but can be less readable in complex queries:

SELECT c.CustomerName, s.TotalSales FROM Customers c INNER JOIN (

     SELECT CustomerID, SUM(TotalAmount) AS TotalSales
      FROM Orders
      GROUP BY CustomerID

) s ON c.CustomerID = s.CustomerID WHERE s.TotalSales \> 10000;

This achieves the same result as a CTE but embeds the subquery directly in the JOIN clause. Derived tables are useful for one-time use scenarios, while CTEs excel when you need to reference the same result set multiple times or build sequential transformations. Choosing the right technique depends on your specific needs:

Use scalar subqueries for single-value calculations needed in SELECT lists or WHERE clauses Use CTEs for multi-step transformations, recursive operations, or when referencing the same result set multiple times Use derived tables for simple, one-time result sets in FROM clauses Use EXISTS instead of IN for large subquery result sets to improve performance Consider window functions as alternatives to correlated subqueries for analytics Best practices include: giving meaningful names to CTEs and derived table aliases; avoiding deeply nested subqueries (use CTEs instead); testing performance on realistic data volumes; and using

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-19

execution plans to verify that SQL Server optimizes your queries efficiently. Comment complex CTEs to explain each transformation step. In general, prioritize code readability – future maintainers (including yourself) will appreciate clear, well-structured queries over clever but obscure optimizations.

Decision tree or flowchart showing different paths for choosing between subqueries, CTEs, and derived tables based on use case requirements

    Key Takeaways
         Derived tables are subqueries in FROM clauses that must be aliased
         CTEs improve readability for complex queries; derived tables suit simple one-time use
         Choose techniques based on reusability, recursion needs, and performance
         Prioritize code readability and use meaningful names for table expressions

                                                         65317A - Querying and Analyzing SQL Server 2025

5-20 Module 5: Subqueries and Table Expressions

      Instructor Notes
     Talking Points:

          Derived tables (subqueries in FROM clause) create inline views for a single query; they must
          have an alias and are scoped to that query only
          Derived tables are useful for applying aggregates, filtering groups (HAVING equivalent), or
          simplifying complex FROM clauses
          Best practice: use CTEs instead of derived tables for readability when possible; CTEs are
          generally easier to understand and debug
          Correlated derived tables are rarely used and can be confusing; consider JOINs or CTEs
          instead
          Performance: derived tables are often inlined by the optimizer, similar to CTEs; focus on query
          logic rather than syntax choice
          Naming conventions: use descriptive aliases (e.g., monthly_sales AS ms, not t1); meaningful
          names improve code maintainability
     Demo Suggestion: Demo 1: Show a derived table calculating monthly totals, then filtering for
     months with sales > threshold. Demo 2: Rewrite the same derived table as a CTE side-by-side.
     Demo 3: Show derived table stacking (one derived table using another). Demo 4: Emphasize the
     readability difference and why CTEs are often preferred.
     Common Student Questions:
     Q: What's the difference between a derived table and a CTE?
     A: Derived tables are inline subqueries in the FROM clause; CTEs are named and defined in the
     WITH clause. Both improve readability. CTEs are generally preferred because they can be
     referenced multiple times and are easier to understand.
     Q: Do I need an alias for a derived table?
     A: Yes, always. Derived tables MUST have an alias in the FROM clause. This is required syntax.
     Q: Can I use a derived table result in the WHERE clause?
     A: No. Derived tables are part of the FROM clause and are available only to that query level. Use a
     CTE or a WHERE subquery instead.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-21

Lab: Building Subqueries and Table Expressions

Objective: Practice writing subqueries, Common Table Expressions (CTEs), and derived tables to solve complex data retrieval scenarios using the AdventureWorks2025 sample database Estimated Time: 45 minutes Platform: azure_portal Prerequisites:

Access to Azure Portal with active subscription Virtual machine running Windows Server 2025 and SQL Server 2025 SQL Server Management Studio (SSMS) 22 installed AdventureWorks2025 sample database restored Completed previous modules on SELECT statements and JOIN operations

      Lab Facilitation
     Setup: Ensure the lab environment has sample data loaded: a customers table with customer_id,
     customer_name, city; an orders table with order_id, customer_id, order_date, amount; a products
     table with product_id, product_name, category_id; and a categories table with category_id,
     category_name. Pre-load hierarchical data (e.g., employees with manager_id) for the recursive
     CTE lab. Verify students can execute multi-statement queries. Have execution plan tools
     (EXPLAIN/SET STATISTICS) enabled so students can compare query performance.
     Pacing: Part 1 (30 min): Scalar and multi-row subqueries--have students write basic filtering
     subqueries, then challenge them with NOT IN and NULL handling. Part 2 (15 min): Correlated
     subqueries--start with simple EXISTS checks, then rewrite one as a JOIN and compare execution
     plans. Part 3 (20 min): CTEs--build a CTE from scratch, then stack two CTEs. Part 4 (20 min):
     Recursive CTE--use the employee hierarchy dataset; walk through iteration step-by-step and
     enforce depth termination. Challenge section (15 min): Multi-level CTE with optimization task.
     Allocate 5 min for Q&A and troubleshooting.

                                                         65317A - Querying and Analyzing SQL Server 2025

5-22 Module 5: Subqueries and Table Expressions

Procedures

Step 1: Connect to your Azure virtual machine and launch SQL Server Management Studio

1.  Open Remote Desktop Connection from your local computer

2.  Enter the public IP address of your Azure VM (found in Azure Portal under Virtual Machines)

3.  Click Connect and enter your VM credentials

4.  Once connected, click the Start menu on the VM

5.  Type SQL Server Management Studio and press Enter

6.  In the Connect to Server dialog:

         Server type: Database Engine
         Server name: localhost or . (period)
         Authentication: Windows Authentication

7.  Click Connect

    Expected Output: SSMS opens successfully and displays Object Explorer with your SQL Server instance expanded, showing system databases and the AdventureWorks2025 database

Verification: Expand the Databases node in Object Explorer and confirm AdventureWorks2025 is listed and shows (green icon) indicating it is online

Step 2: Create a new query window and set the database context to AdventureWorks2025

1.  Click New Query button in the toolbar (or press Ctrl+N)
2.  In the new query window, type the following command:

USE AdventureWorks2025; GO

3.  Execute the query by pressing F5 or clicking the Execute button

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 5: Subqueries and Table Expressions 5-23

    Expected Output: The query executes successfully with the message: ‘Command(s) completed successfully.’ The database dropdown in the toolbar now shows ‘AdventureWorks2025’

Verification: Check the database dropdown menu in the SSMS toolbar - it should display ‘AdventureWorks2025’ as the active database

Step 3: Write a scalar subquery to find products with prices above the average

Create a query that uses a scalar subquery in the WHERE clause to find products priced above the average list price. Type and execute this query:

– Scalar subquery to find products above average price SELECT

     ProductID,
      Name,
      ListPrice,
      (SELECT AVG(ListPrice) FROM Production.Product) AS AveragePrice

FROM Production.Product WHERE ListPrice \> (SELECT AVG(ListPrice) FROM Production.Product) AND ListPrice \> 0 ORDER BY ListPrice DESC;

This query demonstrates: A scalar subquery in the SELECT list to display the average price A scalar subquery in the WHERE clause to filter results Both subqueries return a single value (non-correlated)

    Expected Output:
     Results display products with ListPrice greater than the average (approximately 438.66). The
     AveragePrice column shows the same value for all rows. Top results should include high-end
     products like 'Mountain-200 Black, 46' with prices around 2,294.99 to 3,578.27

Verification: Verify that all ListPrice values in the results are greater than the AveragePrice value shown. Count should be approximately 120-130 products

                                                        65317A - Querying and Analyzing SQL Server 2025

5-24 Module 5: Subqueries and Table Expressions

Step 4: Create a multi-row subquery using the IN operator

Write a query to find all customers who have placed orders in the year 2013, using a subquery with the IN operator. Execute this query:

– Multi-row subquery with IN operator SELECT

     CustomerID,
      PersonID,
      StoreID,
      TerritoryID

FROM Sales.Customer WHERE CustomerID IN ( SELECT DISTINCT CustomerID FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) = 2013 ) ORDER BY CustomerID;

The subquery returns multiple CustomerID values, and the outer query filters to only those matching customers.

    Expected Output:
     Results show customers who placed orders in 2013. The result set includes approximately 1,100-
     1,200 customer records with CustomerID values ranging from 11000 to 30118. Each row shows
     CustomerID, PersonID (or NULL for store customers), StoreID, and TerritoryID

Verification: Run this verification query to confirm the count matches: `SELECT COUNT(DISTINCT CustomerID) FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) = 2013;` The count should match the number of rows in your results

Step 5: Write a correlated subquery using EXISTS

Create a query that uses EXISTS to find all products that have been ordered at least once. This demonstrates a correlated subquery where the inner query references the outer query. Type and execute:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-25

– Correlated subquery with EXISTS SELECT

     p.ProductID,
      p.Name,
      p.ProductNumber,
      p.ListPrice

FROM Production.Product p WHERE EXISTS ( SELECT 1 FROM Sales.SalesOrderDetail sod WHERE sod.ProductID = p.ProductID ) AND p.ListPrice \> 0 ORDER BY p.ProductID;

Note: The subquery is correlated because sod.ProductID = p.ProductID references the outer query’s alias p . The subquery executes once for each row in the outer query.

    Expected Output:
     Results display approximately 230-240 products that have sales history. Products start with
     ProductID 707 (Sport-100 Helmet, Red) and include various bikes, components, and accessories.
     All products shown have ListPrice > 0

Verification: Verify correlation by comparing results count with: `SELECT COUNT(DISTINCT ProductID) FROM Sales.SalesOrderDetail;` The counts should match closely (within a few records)

Step 6: Build a simple Common Table Expression (CTE) to calculate sales totals

Create a CTE that calculates total sales by year, then query the CTE to display the results. Execute this query:

                                                        65317A - Querying and Analyzing SQL Server 2025

5-26 Module 5: Subqueries and Table Expressions

– Simple CTE for annual sales totals WITH SalesByYear AS (

     SELECT
         YEAR(OrderDate) AS OrderYear,
         COUNT(*) AS OrderCount,
         SUM(TotalDue) AS TotalSales,
         AVG(TotalDue) AS AverageSale

      FROM Sales.SalesOrderHeader
      GROUP BY YEAR(OrderDate)

) SELECT OrderYear, OrderCount, FORMAT(TotalSales, ‘C’, ‘en-US’) AS TotalSales, FORMAT(AverageSale, ‘C’, ‘en-US’) AS AverageSale FROM SalesByYear ORDER BY OrderYear;

The CTE named SalesByYear acts as a temporary named result set that exists only for the duration of the query.

    Expected Output:
     Results show sales summary by year from 2011 to 2014:

          2011: ~3,800 orders, ~$12.6M total
          2012: ~8,900 orders, ~$27.9M total
          2013: ~18,000 orders, ~$55.8M total
          2014: ~7,000 orders, ~$22.5M total

     Values appear formatted as currency with dollar signs and commas

Verification: The OrderYear column should show consecutive years without gaps. Total of all OrderCount values should equal total rows in Sales.SalesOrderHeader (approximately 31,465)

Step 7: Create a CTE that references another CTE to build layered calculations

Build multiple CTEs in a single query where the second CTE references the first, demonstrating how to layer calculations. Type and execute:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-27

– Multiple CTEs with one referencing another WITH ProductSales AS (

     SELECT
         p.ProductID,
         p.Name,
         SUM(sod.OrderQty) AS TotalQuantity,
         SUM(sod.LineTotal) AS TotalRevenue

      FROM Production.Product p
      INNER JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
      GROUP BY p.ProductID, p.Name

), TopProducts AS ( SELECT

        ProductID,
         Name,
         TotalQuantity,
         TotalRevenue,
         RANK() OVER (ORDER BY TotalRevenue DESC) AS RevenueRank
      FROM ProductSales

) SELECT RevenueRank, Name, TotalQuantity, FORMAT(TotalRevenue, ‘C’, ‘en-US’) AS TotalRevenue FROM TopProducts WHERE RevenueRank \<= 10 ORDER BY RevenueRank;

    Expected Output:
     Top 10 products by revenue:

      1. Mountain-200 Black, 46: ~$1.35M
      2. Mountain-200 Black, 42: ~$1.28M
      3. Mountain-200 Silver, 46: ~$1.02M

     Results show RevenueRank 1-10 with product names, quantities sold, and formatted revenue
     amounts

Verification: Confirm RevenueRank values are sequential from 1 to 10, and TotalRevenue amounts decrease as rank increases

                                                        65317A - Querying and Analyzing SQL Server 2025

5-28 Module 5: Subqueries and Table Expressions

Step 8: Write a recursive CTE to display an organizational hierarchy

Create a recursive CTE to traverse the employee organizational structure in the HumanResources.Employee table using the OrganizationNode hierarchy. Execute this query:

– Recursive CTE for organizational hierarchy WITH EmployeeHierarchy AS (

     -- Anchor member: CEO (top of hierarchy)
      SELECT

         BusinessEntityID,
         JobTitle,
         OrganizationNode,
         0 AS Level,
         CAST(JobTitle AS NVARCHAR(500)) AS HierarchyPath
      FROM HumanResources.Employee
      WHERE OrganizationNode = hierarchyid::GetRoot()

      UNION ALL

      -- Recursive member: employees reporting to previous level
      SELECT

         e.BusinessEntityID,
         e.JobTitle,
         e.OrganizationNode,
         eh.Level + 1,
         CAST(eh.HierarchyPath + ' > ' + e.JobTitle AS NVARCHAR(500))
      FROM HumanResources.Employee e
      INNER JOIN EmployeeHierarchy eh
         ON e.OrganizationNode.GetAncestor(1) = eh.OrganizationNode

) SELECT Level, REPLICATE(’ ’, Level) + JobTitle AS IndentedTitle, HierarchyPath FROM EmployeeHierarchy ORDER BY OrganizationNode;

Recursive CTEs have two parts: the anchor (starting point) and recursive member (iteration).

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-29

    Expected Output:
     Results display the organization chart starting with:

         Level 0: Chief Executive Officer
         Level 1: Engineering Manager, Marketing Manager, etc.
         Level 2 and deeper: Various employee positions indented to show hierarchy
     Approximately 290 rows showing the complete organizational structure. The IndentedTitle
     column uses spaces to visually indicate reporting levels

Verification: The Level column should start at 0 and progress sequentially. The highest level value should be 4 or 5. HierarchyPath should show the complete chain of command from CEO to each employee

Step 9: Create a derived table in the FROM clause to calculate running totals

Use a derived table (inline view) to calculate monthly sales, then query it to show running totals. Type and execute:

– Derived table with running total SELECT

     OrderMonth,
      MonthlySales,
      SUM(MonthlySales) OVER (ORDER BY OrderMonth) AS RunningTotal,
      FORMAT(MonthlySales, 'C', 'en-US') AS FormattedMonthlySales,
      FORMAT(SUM(MonthlySales) OVER (ORDER BY OrderMonth), 'C', 'en-US') AS FormattedRunningTotal

FROM ( SELECT

        DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate), 1) AS OrderMonth,
         SUM(TotalDue) AS MonthlySales
      FROM Sales.SalesOrderHeader
      WHERE YEAR(OrderDate) = 2013
      GROUP BY YEAR(OrderDate), MONTH(OrderDate)

) AS MonthlyData ORDER BY OrderMonth;

The derived table MonthlyData calculates monthly totals, and the outer query adds running total calculations.

                                                        65317A - Querying and Analyzing SQL Server 2025

5-30 Module 5: Subqueries and Table Expressions

    Expected Output:
     Results show 12 months of 2013 with columns:

          OrderMonth: 2013-01-01, 2013-02-01, etc.
          MonthlySales: Ranges from ~$2.3M to ~$7.3M per month
          RunningTotal: Accumulates from ~$3.5M in January to ~$55.8M in December
          Formatted columns display currency values with $ and commas

Verification: The RunningTotal for December (last row) should equal the sum of all MonthlySales values. Verify by comparing to: `SELECT SUM(TotalDue) FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) = 2013;`

Step 10: Compare CTE versus derived table performance for the same query

Execute the same query logic using both a CTE and a derived table to compare approaches. First, enable execution plan display. 1. Click Query menu Include Actual Execution Plan (or press Ctrl+M) 2. Execute the CTE version:

– CTE approach WITH CustomerOrders AS (

     SELECT
         CustomerID,
         COUNT(*) AS OrderCount,
         SUM(TotalDue) AS TotalSpent

      FROM Sales.SalesOrderHeader
      GROUP BY CustomerID

) SELECT c.CustomerID, c.TerritoryID, co.OrderCount, FORMAT(co.TotalSpent, ‘C’, ‘en-US’) AS TotalSpent FROM Sales.Customer c INNER JOIN CustomerOrders co ON c.CustomerID = co.CustomerID WHERE co.OrderCount \>= 10 ORDER BY co.TotalSpent DESC;

3.  Note the execution time in the Messages tab

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 5: Subqueries and Table Expressions 5-31

4.  Now execute the derived table version:

– Derived table approach (same logic) SELECT

    c.CustomerID,
     c.TerritoryID,
     co.OrderCount,
     FORMAT(co.TotalSpent, 'C', 'en-US') AS TotalSpent

FROM Sales.Customer c INNER JOIN ( SELECT

       CustomerID,
        COUNT(*) AS OrderCount,
        SUM(TotalDue) AS TotalSpent
     FROM Sales.SalesOrderHeader
     GROUP BY CustomerID

) AS co ON c.CustomerID = co.CustomerID WHERE co.OrderCount \>= 10 ORDER BY co.TotalSpent DESC;

Expected Output: Both queries return identical results: approximately 210-220 customers with 10 or more orders. Top customer shows ~\$1.2M total spent. Execution plans shown in separate tabs indicate both queries use identical operations (Hash Match, Clustered Index Scan). Execution times should be nearly identical (typically under 100ms)

Verification: Click on the Execution Plan tabs at the bottom of the results pane. Both plans should show 50% cost split between the two batches, and the plan diagrams should be structurally identical. CTEs and derived tables typically compile to the same execution plan in SQL Server

Step 11: Use a CTE to identify customers with no recent orders

Create a query using NOT EXISTS with a CTE to find customers who have not placed orders in the past year. Execute this query:

65317A - Querying and Analyzing SQL Server 2025 5-32 Module 5: Subqueries and Table Expressions

– CTE with NOT EXISTS to find inactive customers WITH RecentOrders AS (

     SELECT DISTINCT CustomerID
      FROM Sales.SalesOrderHeader
      WHERE OrderDate >= DATEADD(YEAR, -1, (

         SELECT MAX(OrderDate) FROM Sales.SalesOrderHeader
      ))

) SELECT c.CustomerID, c.TerritoryID, p.FirstName, p.LastName, (

        SELECT MAX(OrderDate)
         FROM Sales.SalesOrderHeader soh
         WHERE soh.CustomerID = c.CustomerID
      ) AS LastOrderDate

FROM Sales.Customer c LEFT JOIN Person.Person p ON c.PersonID = p.BusinessEntityID WHERE NOT EXISTS ( SELECT 1 FROM RecentOrders ro WHERE ro.CustomerID = c.CustomerID ) AND EXISTS ( SELECT 1 FROM Sales.SalesOrderHeader soh WHERE soh.CustomerID = c.CustomerID ) ORDER BY LastOrderDate DESC;

This combines a CTE with NOT EXISTS and a correlated scalar subquery.

    Expected Output:
     Results show customers who have ordered before but not in the final year of available data.
     Approximately 13,000-14,000 rows display with LastOrderDate values mostly in 2012 and 2013.
     CustomerID values range from 11000 to 30118. Some rows show NULL for FirstName and
     LastName (store customers without PersonID)

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-33

Verification: Verify that all LastOrderDate values are before 2014-06-30 (one year before the latest order date in the database). Run: `SELECT MAX(OrderDate) FROM Sales.SalesOrderHeader;` to confirm the latest date is approximately 2014-06-30

Step 12: Create a complex query combining multiple table expression techniques

Build a comprehensive query that uses a CTE, derived table, and correlated subquery together to analyze product profitability. Execute this final query:

                                                        65317A - Querying and Analyzing SQL Server 2025

5-34 Module 5: Subqueries and Table Expressions

– Combined table expressions for profitability analysis WITH ProductCosts AS (

     SELECT
         ProductID,
         StandardCost,
         ListPrice,
         ListPrice - StandardCost AS GrossProfit,
         CASE
             WHEN StandardCost > 0
             THEN ((ListPrice - StandardCost) / StandardCost) * 100
             ELSE 0
         END AS ProfitMarginPct

      FROM Production.Product
      WHERE StandardCost > 0 AND ListPrice > 0

) SELECT pc.ProductID, p.Name, p.ProductNumber, CategoryName, FORMAT(pc.StandardCost, ‘C’, ‘en-US’) AS Cost, FORMAT(pc.ListPrice, ‘C’, ‘en-US’) AS Price, FORMAT(pc.GrossProfit, ‘C’, ‘en-US’) AS ProfitPerUnit, FORMAT(pc.ProfitMarginPct, ‘N2’) AS MarginPercent, ISNULL(SalesData.UnitsSold, 0) AS UnitsSold, FORMAT(ISNULL(SalesData.TotalRevenue, 0), ‘C’, ‘en-US’) AS TotalRevenue FROM ProductCosts pc INNER JOIN Production.Product p ON pc.ProductID = p.ProductID CROSS APPLY ( SELECT TOP 1 psc.Name AS CategoryName FROM Production.ProductSubcategory psc INNER JOIN Production.ProductCategory pcat

        ON psc.ProductCategoryID = pcat.ProductCategoryID
      WHERE psc.ProductSubcategoryID = p.ProductSubcategoryID

) AS Categories OUTER APPLY ( SELECT

        SUM(sod.OrderQty) AS UnitsSold,
         SUM(sod.LineTotal) AS TotalRevenue
      FROM Sales.SalesOrderDetail sod
      WHERE sod.ProductID = pc.ProductID

) AS SalesData WHERE pc.ProfitMarginPct \> 50 ORDER BY SalesData.TotalRevenue DESC;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-35

This demonstrates CTE, CROSS APPLY (derived table-like), and OUTER APPLY working together.

    Expected Output:
     Results show high-margin products (>50% profit margin) sorted by revenue. Approximately 80-
     100 products display. Top products include bikes and high-end components. Example top row:
     Mountain-200 Black, 46 with ~$1,890 cost, ~$2,319 price, 134% margin, and ~$1.3M total
     revenue. Some products show 0 UnitsSold if never ordered despite being in catalog

Verification: All MarginPercent values should exceed 50.00. Manually verify one row’s calculation: (Price - Cost) / Cost \* 100 should equal MarginPercent shown. Products with UnitsSold = 0 should show \$0.00 TotalRevenue

Troubleshooting

    Problem: Error: 'Invalid object name' when referencing AdventureWorks2025 tables
     Solution: Ensure the AdventureWorks2025 database is properly restored and you have executed
     'USE AdventureWorks2025;' to set the database context. Verify the database exists by expanding
     the Databases node in Object Explorer. If not present, restore the AdventureWorks2025 backup
     file from C:\SQLBackups\ using SSMS: right-click Databases  Restore Database  Device  select
     the .bak file  OK

     Problem: CTE query returns error: 'Incorrect syntax near the keyword WITH'
     Solution: When a CTE is not the first statement in a batch, you must terminate the previous
     statement with a semicolon. Add a semicolon before the WITH keyword, or precede the CTE with
     a semicolon: `;WITH CTEName AS (...)`. Better practice: always use semicolons to terminate T-SQL
     statements to avoid this issue

     Problem: Recursive CTE exceeds maximum recursion level (100) and fails
     Solution: Add the OPTION (MAXRECURSION n) hint at the end of the query, where n is the
     maximum recursion depth (0-32767, or 0 for unlimited). Example: `SELECT * FROM RecursiveCTE
     OPTION (MAXRECURSION 1000);`. For the employee hierarchy query, the default limit of 100 is
     sufficient, so this error indicates a logic problem in the recursion - check the join condition in the
     recursive member

                                                         65317A - Querying and Analyzing SQL Server 2025

5-36 Module 5: Subqueries and Table Expressions

    Problem: Subquery returns 'Subquery returned more than 1 value' error
     Solution: This occurs when using a subquery in a context that expects a scalar (single value), but
     the subquery returns multiple rows. Verify the subquery should only return one value - add TOP
     1, MAX(), MIN(), or appropriate aggregate function. If multiple values are intended, change the
     comparison operator from = to IN, or use EXISTS instead. Example: change `WHERE Price =
     (SELECT Price FROM...)` to `WHERE Price IN (SELECT Price FROM...)`
     Problem: Execution plan shows high cost for subquery and query performs slowly
     Solution: Correlated subqueries execute once per row in the outer query and can be inefficient.
     Consider rewriting as: 1) A JOIN instead of EXISTS/IN subquery, 2) A CTE that is joined to the main
     query, or 3) Using window functions instead of scalar subqueries. Enable the actual execution
     plan (Ctrl+M) and look for Table Scan or Index Scan operations with high costs. Adding
     appropriate indexes on joined columns can also improve performance significantly

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 5: Subqueries and Table Expressions 5-37

Common Student Errors Students write NOT IN with NULL values in the subquery result, expecting rows but getting no results. Pause and explain the NULL logic gotcha. Demonstrate: SELECT \* FROM table WHERE id NOT IN (1, 2, NULL) returns nothing because NULL breaks the condition. Show the fix: either filter NULLs in the subquery (WHERE … IS NOT NULL) or use NOT EXISTS instead. Have them test both. Students reference outer query columns in a non-correlated subquery, creating an unintended correlation. Check the execution plan together. Explain that correlation causes the subquery to execute per outer row. Ask: ‘Should this subquery depend on the outer row?’ If not, remove the reference. If yes, they’ve correctly written a correlated subquery. Students forget the alias for a derived table (FROM (SELECT …) instead of FROM (SELECT …) AS alias). Point out the syntax error and explain that derived tables MUST have an alias. This is required in SQL standard. Have them add the alias and re-run. Recursive CTE creates an infinite loop or very slow query because termination condition is missing or wrong. Stop the query (CTRL+C if necessary). Review the recursive member’s WHERE clause together. Ensure a depth counter and maximum depth check are in place. Start with small test data to debug. Show them how to add AND depth \< 5 to test with shallow recursion. Students define multiple CTEs but the second CTE doesn’t execute or reference fails. Verify the syntax: each CTE except the last should end with a comma, not a semicolon. The main query follows the last CTE (no comma before it). Have them rewrite the structure with proper punctuation. Students expect a scalar subquery to return multiple rows and compare it with a single value (WHERE price = (SELECT …)) when the subquery returns multiple rows. Show the error message (e.g., ‘subquery returned more than one row’). Explain that scalar subqueries must return exactly one row, one column. If multiple rows are expected, use IN or EXISTS instead. Have them refactor the query.

                                                  65317A - Querying and Analyzing SQL Server 2025

5-38 Module 5: Subqueries and Table Expressions

Challenge Exercise

Product Recommendation Analysis

Scenario: The marketing department wants to identify cross-selling opportunities by analyzing which products are frequently purchased together. Your task: Write a query using the table expression techniques learned in this lab to: 1. Identify all orders that contain more than one product (multi-item orders) 2. For each product, find the top 3 other products most frequently purchased in the same order 3. Display the results showing:

        Primary product name and ID
         Related product name and ID
         Number of times they appeared together in orders
         The product category for both products

4.  Filter to show only product pairs that have appeared together at least 10 times

5.  Order results by the primary product name and then by co-occurrence frequency (descending) Requirements: Use at least one CTE in your solution Use a ranking window function (ROW_NUMBER, RANK, or DENSE_RANK) to limit to top 3 related products Include appropriate JOIN operations to retrieve product names and categories Format the output in a readable manner with column aliases Tables you’ll need: Sales.SalesOrderDetail (for order-product relationships) Production.Product (for product names) Production.ProductSubcategory and Production.ProductCategory (for categories) Hint: Consider using a self-join on SalesOrderDetail to find products in the same order, then aggregate and rank the results. Bonus challenge: Extend your query to exclude products from the same subcategory (since the goal is cross-category recommendations).

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 5: Subqueries and Table Expressions 5-39

Hints: Challenge 1: ‘Write a query using a CTE to find customers with above-average order totals.’ Hint: First CTE calculates average order total, second CTE groups by customer and sums, then filter in the

                                                  65317A - Querying and Analyzing SQL Server 2025

5-40 Module 5: Subqueries and Table Expressions

Answer Key

1.  What is the key difference between a scalar subquery and a multi-row subquery?

    1)  Scalar subqueries return exactly one value; multi-row subqueries return multiple values
    2)  Scalar subqueries can only appear in WHERE clauses; multi-row subqueries appear in SELECT lists
    3)  Scalar subqueries execute faster; multi-row subqueries execute slower
    4)  Scalar subqueries use IN operator; multi-row subqueries use EXISTS operator

    Answer: A Scalar subqueries return exactly one row with one column (a single value), while multi-row subqueries return multiple values typically used with operators like IN or EXISTS. Scalar subqueries can appear in various clauses, and performance depends on query specifics, not subquery type.

2.  Which operator is typically more efficient than IN when working with large subquery result sets?

    1)  ANY
    2)  ALL
    3)  EXISTS
    4)  LIKE

    Answer: C EXISTS is often more efficient than IN for large subquery result sets because it stops processing as soon as it finds the first matching row, rather than evaluating all rows and comparing values. This short- circuit behavior can significantly improve performance.

3.  How many times does a correlated subquery execute when processing a table with 500 rows?

    1)  Once, then the result is cached

    2)  Once per distinct value in the correlated column

    3)  Up to 500 times, once for each row

    4)  Exactly twice, once for validation and once for execution

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 5: Subqueries and Table Expressions 5-41

    Answer: C Correlated subqueries execute once for each row processed by the outer query because they reference columns from the outer query. With 500 rows, the subquery could execute up to 500 times, which is why performance considerations are important for large datasets.

4.  What keyword introduces a Common Table Expression (CTE)?

    1)  CREATE
    2)  WITH
    3)  DECLARE
    4)  DEFINE

    Answer: B CTEs are introduced with the WITH keyword followed by the CTE name, column list (optional), AS keyword, and the query definition. The WITH keyword signals to SQL Server that a named temporary result set is being defined.

5.  What are the two required components of a recursive CTE?

    1)  Base case and exit condition
    2)  Anchor member and recursive member
    3)  Primary query and secondary query
    4)  Starting point and ending point

    Answer: B A recursive CTE consists of an anchor member (the starting point or base case) and a recursive member (which references the CTE itself). These are combined with UNION ALL, and the recursive member executes repeatedly until no new rows are found.

6.  What is the default maximum recursion depth for recursive CTEs in SQL Server?

    1)  32 levels

    2)  50 levels

    3)  100 levels

                                                          65317A - Querying and Analyzing SQL Server 2025

        5-42 Module 5: Subqueries and Table Expressions

    4)  256 levels Answer: C SQL Server sets a default maximum recursion depth of 100 levels to prevent infinite loops in recursive CTEs. This can be adjusted using the OPTION (MAXRECURSION n) query hint, or set to 0 for unlimited recursion (though this should be used carefully).

7.  What is required when using a derived table in the FROM clause?

    1)  It must be enclosed in square brackets
    2)  It must have an ORDER BY clause
    3)  It must be given an alias
    4)  It must return at least two columns Answer: C Derived tables (subqueries in the FROM clause) must always be given an alias in SQL Server. This alias is used to reference the derived table in the outer query, even if the alias isn’t explicitly used elsewhere in the query.

8.  When should you choose a CTE over a derived table?

    1)  When you need to reference the result set only once in a simple query

    2)  When you need to reference the result set multiple times or build sequential transformations

    3)  When you need the fastest possible query execution

    4)  When you need to return scalar values only Answer: B CTEs are preferable when you need to reference the same result set multiple times within a query or when building sequential, multi-step transformations. They improve readability and maintainability in these scenarios. For simple, one-time use cases, derived tables are adequate and equally performant.

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 5: Subqueries and Table Expressions 5-43

Module Summary

This module explored subqueries and table expressions as essential tools for complex data retrieval. You learned to distinguish scalar from multi-row subqueries, understand correlated subquery performance implications, and create Common Table Expressions (CTEs) for readable multi-step transformations. Recursive CTEs enable hierarchical data traversal, while derived tables provide inline result sets. Best practices emphasize choosing the right technique based on reusability, recursion needs, and code clarity, with performance testing on realistic data volumes to guide optimization decisions.

                                                        65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

       Module 6: Window Functions and Analytical Queries

                                                           65317A
                                   3-day course ? 10 modules ? beginner level

Contents

Module 6: Window Functions and Analytical Queries

Lesson 1: Introduction to Window Functions Lesson 2: Ranking Functions: ROW_NUMBER, RANK, and DENSE_RANK Lesson 3: Aggregate Window Functions and PARTITION BY Lesson 4: Offset Functions: LAG, LEAD, FIRST_VALUE, and LAST_VALUE Lesson 5: Window Frame Specifications: ROWS and RANGE Lesson 6: Analytical Query Patterns for Business Intelligence Lab: Analyzing Sales Data with Window Functions Answer Key Module Summary Discussion Prompts  Module 6: Window Functions and Analytical Queries 6-1

Learning Objectives

After completing this module, you will be able to: Apply ranking window functions including ROW_NUMBER, RANK, and DENSE_RANK Use aggregate window functions with PARTITION BY and ORDER BY Implement offset functions including LAG, LEAD, FIRST_VALUE, and LAST_VALUE Construct complex analytical queries for business intelligence

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                  65317A - Querying and Analyzing SQL Server 2025

6-2 Module 6: Window Functions and Analytical Queries

      Module Overview
     Module 6 covers advanced SQL window functions essential for analytical queries and business
     intelligence reporting. Students will master ranking, aggregate, offset, and frame-based window
     functions while learning real-world patterns for comparing values across rows and calculating
     running aggregates. Total estimated delivery time: 4-5 hours including labs and discussions.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-3

Lesson 1: Introduction to Window Functions

      Estimated Time: 20 minutes

Understanding Window Functions

Window functions represent a powerful analytical capability in SQL Server that allows you to perform calculations across sets of rows related to the current row. Unlike traditional aggregate functions that collapse multiple rows into a single result, window functions maintain the individual row identity while providing aggregate or analytical information. What Makes Window Functions Special Window functions operate on a “window” or subset of rows defined by the OVER clause. This window can be the entire result set, a partition of rows sharing common characteristics, or a specific frame of rows around the current row. The key advantage is that you can calculate rankings, running totals, moving averages, and comparative metrics without using complex self-joins or subqueries. The OVER Clause: The Foundation Every window function requires an OVER clause, which defines the window of rows for the calculation. The OVER clause can be empty OVER() to include all rows, or it can specify:

PARTITION BY: Divides rows into logical groups ORDER BY: Defines the sequence for calculations Frame specification: Limits the window to specific rows around the current row Here’s a basic example:

SELECT EmployeeName, Salary, AVG(Salary) OVER (PARTITION BY Department ORDER BY HireDate) AS DeptAvgSalary, ROW_NUMBER() OVER (ORDER BY Salary DESC) AS SalaryRank

FROM Employees;

This query shows each employee alongside their department’s average salary and their company- wide salary rank–all without collapsing rows.

                                                        65317A - Querying and Analyzing SQL Server 2025

6-4 Module 6: Window Functions and Analytical Queries

Common Use Cases Window functions excel at business intelligence and analytical reporting scenarios. You can rank sales representatives by performance, calculate year-to-date totals alongside monthly figures, compare current period values with previous periods, and identify top performers within each department–all in a single query without complex joins. Performance Considerations While window functions are powerful, they require careful consideration. SQL Server must sort and potentially partition data, which can impact performance on large datasets. However, they often outperform equivalent solutions using self-joins or correlated subqueries, making them an essential tool for modern analytical queries.

Conceptual illustration showing data flowing through a window frame, with rows passing through and calculations being applied to each row based on its surrounding context

    Key Takeaways
          Window functions perform calculations across row sets while maintaining individual row
          identity
          The OVER clause defines the window of rows for each calculation
          Window functions eliminate complex self-joins for analytical queries
          Use PARTITION BY to create logical groups and ORDER BY to sequence calculations

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-5

Instructor Notes Talking Points:

Window functions operate on a set of rows related to the current row, maintaining row-level detail unlike GROUP BY Every window function requires OVER() clause which defines the window scope Window functions execute after WHERE, GROUP BY, and HAVING, making them powerful for post-aggregation calculations Emphasize the distinction between aggregates (which reduce rows) and window functions (which preserve all rows) Demo Suggestion: Live demo showing a simple SUM() OVER() vs GROUP BY to highlight the difference in output rows. Show how window functions add calculated columns without collapsing the result set. Common Student Questions: Q: Why use window functions instead of subqueries or joins? A: Window functions are more efficient, more readable, and perform better on large datasets. They avoid complex self-joins and multiple subquery layers while maintaining code clarity. Q: Can I use window functions in a WHERE clause? A: No, window functions execute after WHERE. Use them in SELECT or in a CTE/subquery, then filter the results in an outer query if needed.

                                                  65317A - Querying and Analyzing SQL Server 2025

6-6 Module 6: Window Functions and Analytical Queries

Lesson 2: Ranking Functions: ROW_NUMBER, RANK, and DENSE_RANK

      Estimated Time: 35 minutes

Assigning Rankings with Window Functions

Ranking functions assign sequential numbers or competitive rankings to rows based on specified criteria. SQL Server provides four primary ranking functions, each with distinct behavior for handling tied values and numbering sequences. ROW_NUMBER: Sequential Numbering The ROW_NUMBER function assigns a unique sequential integer to each row within a partition, starting at 1. Even when rows have identical values in the ORDER BY column, ROW_NUMBER guarantees uniqueness–though the specific assignment among tied rows is nondeterministic.

SELECT SalesPersonID, SalesAmount, ROW_NUMBER() OVER (ORDER BY SalesAmount DESC) AS RowNum

FROM Sales;

This query assigns sequential numbers based on sales amount, with the highest amount receiving 1. RANK: Competitive Ranking with Gaps RANK provides competitive ranking where tied values receive the same rank, but subsequent ranks show gaps. If two rows tie for rank 2, the next rank is 4, not 3. This mimics traditional competition scoring.

SELECT ProductName, Rating, RANK() OVER (ORDER BY Rating DESC) AS ProductRank

FROM Products;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-7

DENSE_RANK: Competitive Ranking Without Gaps DENSE_RANK also assigns the same rank to tied values, but eliminates gaps. If two rows tie for rank 2, the next rank is 3. This is useful when you need consecutive rank numbers. NTILE: Distributing Rows into Buckets NTILE divides rows into a specified number of approximately equal groups, assigning a bucket number (1 to N) to each row. This is valuable for quartile analysis, percentile grouping, or distributing work evenly.

SELECT CustomerID, TotalPurchases, NTILE(4) OVER (ORDER BY TotalPurchases DESC) AS Quartile

FROM CustomerSummary;

This query assigns customers to quartiles based on purchase amounts, with quartile 1 containing the highest spenders.

     Illustration showing three podiums or ranking displays side by side, demonstrating how ROW_NUMBER, RANK, and
                                    DENSE_RANK handle tied values differently with competitive rankings

                                                         65317A - Querying and Analyzing SQL Server 2025

6-8 Module 6: Window Functions and Analytical Queries

    Key Takeaways
          ROW_NUMBER assigns unique sequential numbers to all rows, even with ties
          RANK provides competitive ranking with gaps after tied values
          DENSE_RANK provides competitive ranking without gaps
          NTILE distributes rows into a specified number of approximately equal groups

       Instructor Notes
     Talking Points:

          ROW_NUMBER assigns unique sequential numbers; never produces gaps or ties
          RANK skips numbers after ties (e.g., 1,2,2,4), useful for competitions with tied scores
          DENSE_RANK never skips numbers (e.g., 1,2,2,3), preferred when rank continuity matters for
          reports
          ORDER BY in OVER clause is mandatory for ranking functions; PARTITION BY creates separate
          rankings per group
          Ranking functions are deterministic only when ORDER BY columns are unique; add tiebreaker
          columns for consistency
     Demo Suggestion: Create a sales employee dataset and show all three ranking functions side-by-
     side on the same data. Demonstrate PARTITION BY with department to show separate rankings.
     Show how different ORDER BY tiebreakers produce different results with ROW_NUMBER.
     Common Student Questions:
     Q: How do I choose between RANK and DENSE_RANK?
     A: Use RANK for true competitive rankings (sports, leaderboards). Use DENSE_RANK for reporting
     when you want continuous numbering and rank gaps are confusing to users.
     Q: What happens if I don't include ORDER BY in the OVER clause?
     A: For ranking functions, it's an error or produces meaningless results. Always include ORDER BY.
     For aggregate functions, ORDER BY is optional but affects behavior if used with ROWS/RANGE.
     Q: Can I use multiple columns in ORDER BY?
     A: Yes, absolutely. This is how you create deterministic rankings when primary columns have ties.
     Order by importance: e.g., ORDER BY salary DESC, hire_date ASC.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-9

Lesson 3: Aggregate Window Functions and PARTITION BY

      Estimated Time: 40 minutes

Calculating Aggregates Across Windows

Aggregate window functions apply familiar aggregate operations–SUM, AVG, COUNT, MIN, and MAX –across a window of rows while preserving individual row details. This enables powerful analytical patterns like running totals, moving averages, and group comparisons without collapsing rows. Basic Aggregate Window Syntax When you add an OVER clause to an aggregate function, it transforms from a traditional aggregate into a window function:

SELECT OrderDate, OrderAmount, SUM(OrderAmount) OVER (ORDER BY OrderDate) AS RunningTotal, AVG(OrderAmount) OVER (ORDER BY OrderDate) AS MovingAverage

FROM Orders;

This query calculates both a running total and cumulative average while maintaining each order as a separate row. PARTITION BY: Creating Logical Groups The PARTITION BY clause divides the result set into logical partitions, with window calculations resetting for each partition. Think of it as creating separate “sub-windows” for different categories:

                                                        65317A - Querying and Analyzing SQL Server 2025

6-10 Module 6: Window Functions and Analytical Queries

SELECT Department, EmployeeName, Salary, AVG(Salary) OVER (PARTITION BY Department) AS DeptAvgSalary, Salary - AVG(Salary) OVER (PARTITION BY Department) AS DiffFromAvg

FROM Employees;

This query shows each employee alongside their department’s average salary and their variance from that average–all without GROUP BY collapsing the rows. Combining PARTITION BY with ORDER BY When you combine PARTITION BY with ORDER BY, calculations restart for each partition and progress through the ordered rows:

SELECT SalesRegion, SaleDate, DailySales, SUM(DailySales) OVER ( PARTITION BY SalesRegion ORDER BY SaleDate ) AS RegionRunningTotal

FROM RegionalSales;

This creates separate running totals for each sales region, resetting to zero when the region changes. Analytical Applications Aggregate window functions excel at comparative analysis. You can calculate percentage of total, identify values above or below group averages, track cumulative performance metrics, and generate sophisticated business intelligence reports without complex subqueries or temporary tables.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-11

Illustration showing data streams being divided into separate channels by partition, with aggregation calculations happening independently within each partition while maintaining row-level detail

Key Takeaways Aggregate window functions calculate SUM, AVG, COUNT, MIN, MAX while preserving individual rows PARTITION BY divides data into logical groups with separate window calculations Combining PARTITION BY and ORDER BY creates running calculations within each group Window aggregates enable comparative analysis without collapsing rows with GROUP BY

                                                  65317A - Querying and Analyzing SQL Server 2025

6-12 Module 6: Window Functions and Analytical Queries

      Instructor Notes
     Talking Points:

          Any aggregate function (SUM, AVG, COUNT, MIN, MAX) can become a window function with
          OVER()
          PARTITION BY logically divides the data into groups, with separate window calculations per
          partition
          Without PARTITION BY, the window spans the entire result set
          ORDER BY in window function changes default frame behavior; WITHOUT it, frame is entire
          partition; WITH it, frame is current row to end
          Window aggregate functions are perfect for running totals, running averages, and group
          comparisons while maintaining detail rows
          NULL handling differs from GROUP BY aggregates; NULLs are included in COUNT(*) but
          excluded in COUNT(column)
     Demo Suggestion: Build a monthly sales dataset. Show SUM() OVER(ORDER BY month) for
     running totals. Show SUM() OVER(PARTITION BY region ORDER BY month) for running totals per
     region. Demonstrate SUM() OVER(PARTITION BY region) for region totals repeated on every row.
     Common Student Questions:
     Q: Why does my running total include all rows when I expect only current and previous?
     A: When you use ORDER BY without ROWS/RANGE, the default frame is RANGE BETWEEN
     UNBOUNDED PRECEDING AND CURRENT ROW. This includes all rows up to current. Explicitly
     specify ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW, or use ROWS BETWEEN 1
     PRECEDING AND CURRENT ROW for a 2-row window.
     Q: How is window aggregation different from GROUP BY?
     A: Window aggregates retain all detail rows and add calculated columns. GROUP BY collapses
     rows into groups. Use window functions when you need to preserve detail; use GROUP BY when
     you need summary results.
     Q: Can I partition by one column and order by another?
     A: Yes, frequently. Partition creates separate windows, order defines the sequence within each
     window. E.g., PARTITION BY department ORDER BY hire_date.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-13

Lesson 4: Offset Functions: LAG, LEAD, FIRST_VALUE, and LAST_VALUE

      Estimated Time: 35 minutes

Accessing Related Rows with Offset Functions

Offset functions allow you to access values from other rows relative to the current row without self- joins. These functions are invaluable for period-over-period comparisons, trend analysis, and identifying patterns across sequential data. LAG: Looking Backward The LAG function retrieves values from a previous row in the result set. You specify how many rows to look back (default is 1) and optionally provide a default value for the first row where no previous row exists:

SELECT Month, Revenue, LAG(Revenue, 1, 0) OVER (ORDER BY Month) AS PriorMonthRevenue, Revenue - LAG(Revenue, 1, 0) OVER (ORDER BY Month) AS MonthOverMonthChange

FROM MonthlySales;

This query calculates month-over-month revenue changes by comparing each month with the previous month. LEAD: Looking Forward LEAD works like LAG but accesses subsequent rows instead of previous ones. This is useful for forecasting comparisons or identifying upcoming events:

                                                        65317A - Querying and Analyzing SQL Server 2025

6-14 Module 6: Window Functions and Analytical Queries

SELECT ProductID, CurrentPrice, EffectiveDate, LEAD(CurrentPrice) OVER (PARTITION BY ProductID ORDER BY EffectiveDate) AS NextPrice, LEAD(EffectiveDate) OVER (PARTITION BY ProductID ORDER BY EffectiveDate) AS NextChangeDate

FROM PriceHistory;

FIRST_VALUE and LAST_VALUE: Window Boundaries FIRST_VALUE returns the first value in the window frame, while LAST_VALUE returns the last value. These are particularly useful with PARTITION BY to compare each row against group benchmarks:

SELECT SalesPersonID, QuarterlySales, FIRST_VALUE(QuarterlySales) OVER ( PARTITION BY Quarter ORDER BY QuarterlySales DESC ) AS TopPerformerSales, QuarterlySales \* 100.0 / FIRST_VALUE(QuarterlySales) OVER ( PARTITION BY Quarter ORDER BY QuarterlySales DESC ) AS PercentOfTop

FROM QuarterlySalesData;

Practical Applications Offset functions eliminate complex self-joins for temporal comparisons. Common scenarios include calculating year-over-year growth, identifying consecutive events, detecting trend reversals, comparing current values against period high/low marks, and creating time-series analytics. The ability to reference other rows within the same query dramatically simplifies analytical SQL.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-15

Illustration showing a timeline or sequence of data points with arrows pointing backward (LAG) and forward (LEAD) from a central current row, demonstrating how offset functions access related values

Key Takeaways LAG accesses values from previous rows for period-over-period comparisons LEAD accesses values from subsequent rows for forward-looking analysis FIRST_VALUE and LAST_VALUE retrieve boundary values from the window frame Offset functions eliminate complex self-joins for temporal and comparative analysis

                                                       65317A - Querying and Analyzing SQL Server 2025

6-16 Module 6: Window Functions and Analytical Queries

      Instructor Notes
     Talking Points:

          LAG() accesses data from previous rows; LEAD() accesses data from future rows without joins
          Both LAG/LEAD require ORDER BY to establish row sequence; both accept offset parameter
          (default 1) and default value
          FIRST_VALUE() and LAST_VALUE() return values from first or last rows in the window frame
          LAST_VALUE with default frame often surprises; usually need ROWS BETWEEN UNBOUNDED
          PRECEDING AND UNBOUNDED FOLLOWING
          Offset functions are essential for period-over-period comparisons, calculating deltas, and
          trend analysis
          NULL handling: LAG/LEAD return NULL if offset exceeds window boundaries unless default
          provided
     Demo Suggestion: Create a time-series dataset (daily stock prices, monthly metrics). Show LAG
     for previous month value and calculate month-over-month change. Show LEAD for future value.
     Demonstrate FIRST_VALUE and LAST_VALUE with different frame specifications to show frame
     impact on results.
     Common Student Questions:
     Q: Why does LAST_VALUE return the current row value instead of the last row?
     A: Default frame is RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW. LAST_VALUE
     looks for the last value in that frame, which is the current row. Specify ROWS BETWEEN
     UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING to include future rows.
     Q: How do I calculate year-over-year growth?
     A: Use LAG with offset 12 (for monthly data) or appropriate period offset. Then calculate (current
     - LAG_value) / LAG_value * 100 for percentage change.
     Q: Can I use LAG with PARTITION BY?
     A: Yes. LAG respects partition boundaries--it won't reach previous rows in different partitions.
     This is usually desired behavior for group-specific trending.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-17

Lesson 5: Window Frame Specifications: ROWS and RANGE

      Estimated Time: 30 minutes

Controlling Window Boundaries with Frame Specifications

Window frame specifications provide precise control over which rows are included in window function calculations. While PARTITION BY and ORDER BY define the overall window structure, frame clauses specify exactly which rows around the current row should be included in aggregate or offset calculations. Understanding Frame Clauses Frame clauses use either ROWS or RANGE modes to define window boundaries:

ROWS: Physical offset based on row position RANGE: Logical offset based on value ranges (less commonly used) The frame specification follows this pattern:

{ROWS \| RANGE} BETWEEN <start> AND <end>

Common Frame Specifications Several standard frame patterns handle typical analytical scenarios:

                                                        65317A - Querying and Analyzing SQL Server 2025

6-18 Module 6: Window Functions and Analytical Queries

– Running total from start to current row SUM(Amount) OVER (

     ORDER BY OrderDate
      ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW

)

– Moving 3-month average (current + 2 preceding) AVG(MonthlySales) OVER (

     ORDER BY Month
      ROWS BETWEEN 2 PRECEDING AND CURRENT ROW

)

– Centered moving average (1 before + current + 1 after) AVG(DailyValue) OVER (

     ORDER BY Date
      ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING

)

Frame Specification Keywords Key terms for defining boundaries include:

UNBOUNDED PRECEDING: From the start of the partition UNBOUNDED FOLLOWING: To the end of the partition CURRENT ROW: The current row being processed N PRECEDING: N rows before the current row N FOLLOWING: N rows after the current row Default Frame Behavior When you omit a frame specification but include ORDER BY, SQL Server applies a default frame:

RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW

This creates running totals and cumulative calculations. Without ORDER BY, the default frame includes all partition rows. Practical Frame Applications Frame specifications enable sophisticated analytical patterns: moving averages that smooth volatility, rolling sum calculations for trend analysis, comparing current values against recent history,

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-19

and identifying local peaks and valleys in time-series data. The precision of frame control makes window functions adaptable to virtually any analytical requirement.

Illustration showing a sliding window frame moving across a sequence of data points, with different frame sizes highlighted to show ROWS BETWEEN specifications and their impact on calculations

    Key Takeaways
         Frame specifications control which rows are included in window calculations
         ROWS mode defines frames by physical row position relative to current row
         Use UNBOUNDED PRECEDING/FOLLOWING for partition-wide calculations
         Frame clauses enable moving averages, rolling totals, and localized analytics

                                                         65317A - Querying and Analyzing SQL Server 2025

6-20 Module 6: Window Functions and Analytical Queries

      Instructor Notes
     Talking Points:

          Frame specification (ROWS or RANGE) defines exactly which rows are included in the window
          calculation
          ROWS uses physical row position; RANGE uses logical value ranges (careful with duplicates)
          UNBOUNDED PRECEDING starts at partition beginning; UNBOUNDED FOLLOWING ends at
          partition end
          CURRENT ROW is the current row; N PRECEDING/FOLLOWING are relative positions
          Default frame behavior: without ORDER BY = entire partition; with ORDER BY = RANGE
          UNBOUNDED PRECEDING TO CURRENT ROW
          Frame specification is critical for running calculations, moving averages, and excluding future
          data
     Demo Suggestion: Show same query with different frame specifications side-by-side.
     Demonstrate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW for 3-row moving average.
     Show RANGE vs ROWS with duplicate values to highlight the difference. Create a 'sliding window'
     calculation.
     Common Student Questions:
     Q: Should I use ROWS or RANGE?
     A: Use ROWS for predictable physical windows (last N rows, etc.). Use RANGE when you want
     logical grouping by values, but be careful with duplicates--RANGE may include more rows than
     expected when values repeat.
     Q: How do I create a 7-day moving average?
     A: Use ROWS BETWEEN 6 PRECEDING AND CURRENT ROW with a daily date-ordered partition.
     This includes current day plus previous 6 days (7 total).
     Q: Can I exclude the current row from the window calculation?
     A: Yes. Use ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING for just previous row, or ROWS
     BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING for all previous rows.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-21

Lesson 6: Analytical Query Patterns for Business Intelligence

      Estimated Time: 40 minutes

Building Real-World Analytical Solutions

Window functions unlock sophisticated analytical query patterns that form the foundation of business intelligence reporting. By combining ranking, aggregate, and offset functions with appropriate partitioning and framing, you can construct queries that answer complex business questions in a single pass. Top-N Analysis Within Groups Identifying top performers within each category is a common BI requirement. Window functions make this pattern straightforward:

WITH RankedSales AS ( SELECT Region, SalesPersonName, TotalSales, RANK() OVER ( PARTITION BY Region ORDER BY TotalSales DESC ) AS RegionalRank FROM SalesPerformance

) SELECT \* FROM RankedSales WHERE RegionalRank \<= 5;

This pattern returns the top 5 salespeople in each region without complex subqueries. Period-Over-Period Growth Analysis Comparing current performance against previous periods requires offset functions:

                                                        65317A - Querying and Analyzing SQL Server 2025

6-22 Module 6: Window Functions and Analytical Queries

SELECT Year, Quarter, Revenue, LAG(Revenue) OVER (ORDER BY Year, Quarter) AS PriorQuarter, Revenue - LAG(Revenue) OVER (ORDER BY Year, Quarter) AS AbsoluteChange, (Revenue - LAG(Revenue) OVER (ORDER BY Year, Quarter)) \* 100.0 / LAG(Revenue) OVER (ORDER BY Year, Quarter) AS PercentChange

FROM QuarterlyRevenue;

Percentile and Distribution Analysis

Understanding data distribution helps identify outliers and trends:

SELECT CustomerID, OrderTotal, NTILE(100) OVER (ORDER BY OrderTotal) AS Percentile, CASE WHEN NTILE(4) OVER (ORDER BY OrderTotal) = 4 THEN ‘High Value’ WHEN NTILE(4) OVER (ORDER BY OrderTotal) = 1 THEN ‘Low Value’ ELSE ‘Medium Value’ END AS CustomerSegment

FROM CustomerOrders;

Running Totals and Cumulative Metrics

Cumulative calculations provide context for individual values:

SELECT OrderDate, DailyOrders, SUM(DailyOrders) OVER ( ORDER BY OrderDate ROWS UNBOUNDED PRECEDING ) AS CumulativeOrders, SUM(DailyOrders) OVER ( ORDER BY OrderDate ROWS UNBOUNDED PRECEDING ) \* 100.0 / SUM(DailyOrders) OVER () AS PercentOfYearToDate

FROM DailyOrderSummary;

Best Practices for Analytical Queries

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-23

Effective analytical queries balance functionality with performance. Use CTEs to organize complex logic, consider indexing on PARTITION BY and ORDER BY columns, and test query performance with realistic data volumes. Window functions shine when they replace complex self-joins, but monitor execution plans to ensure optimal performance in production environments.

Business intelligence dashboard illustration showing multiple analytical visualizations including top performers chart, growth trends, percentile distributions, and cumulative metrics, all powered by window functions

    Key Takeaways
         Top-N within groups pattern uses ranking functions with PARTITION BY and WHERE filters
         Period-over-period analysis combines LAG/LEAD with arithmetic calculations
         NTILE enables percentile analysis and customer segmentation
         Running totals use frame specifications with UNBOUNDED PRECEDING

                                                         65317A - Querying and Analyzing SQL Server 2025

6-24 Module 6: Window Functions and Analytical Queries

      Instructor Notes
     Talking Points:

          Running totals and running averages are foundational BI patterns using cumulative frames
          Year-over-year and period-over-period comparisons use LAG with appropriate offsets
          Ranking and top-N analysis combine ranking functions with CTEs or subqueries for filtering
          Cohort analysis partitions by cohort (acquisition date, region) and tracks metrics over time
          Variance analysis compares actual to budget/forecast using window aggregates and offset
          functions
          Customer lifetime value and RFM segmentation use multiple window functions in
          combination
          Always consider performance: window functions on large partitions can be slower than
          alternatives
     Demo Suggestion: Build a complete BI example: sales data with monthly running total, YoY
     comparison (using LAG), ranking by region, and growth percentage. Show how to combine
     multiple window functions in one query. Demonstrate using window functions in CTEs for layered
     analysis.
     Common Student Questions:
     Q: How do I get the top 3 products per region?
     A: Use ROW_NUMBER() OVER(PARTITION BY region ORDER BY sales DESC), then wrap in a CTE
     and filter WHERE row_num <= 3. This is cleaner than complex joins.
     Q: What's the best practice for complex analytical queries?
     A: Build with CTEs, each step adding one analytical layer. Start with raw data, add
     rankings/calculations in next CTE, filter/aggregate in final SELECT. This improves readability and
     debugging.
     Q: How do I handle NULL values in window function calculations?
     A: Use COALESCE or ISNULL to replace NULLs before the window function, or use functions like
     SUM() IGNORE NULLS (if supported). Be intentional--NULLs in ORDER BY come first or last
     depending on DB.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-25

Lab: Analyzing Sales Data with Window Functions

Objective: Create analytical queries using window functions to rank salespeople, calculate running totals, and compare period-over-period performance in the AdventureWorks sales database Estimated Time: 45 minutes Platform: Azure Portal with Windows Server 2025 VM running SQL Server 2025 (version 17) and SSMS 22 Prerequisites:

Access to Azure Portal with provided credentials Virtual machine with SQL Server 2025 and SSMS 22 installed AdventureWorks2025 sample database restored Basic knowledge of SELECT statements and JOIN operations

      Lab Facilitation
     Setup: Pre-lab: Create a sales_transactions table with columns: transaction_id, transaction_date,
     employee_id, employee_name, department, region, product_category, quantity, unit_price,
     total_amount. Populate with 12+ months of data with multiple employees per department and
     regions, including some repeat customers and date duplicates to highlight ROWS vs RANGE.
     Provide a starter query that selects all transactions. Have window function templates available as
     a reference sheet.
     Pacing: Lab typically runs 90-120 minutes. Allocate: 15min for setup/walkthrough, 30min for
     ranking functions exercises, 25min for aggregate functions, 20min for offset functions, 25min for
     frame specifications, remaining time for challenge. Encourage students to save each query and
     add comments explaining what window clause does. Pause every 30min for a quick
     comprehension check.

Procedures

Step 1: Connect to the Azure Portal and start your lab virtual machine

1.  Navigate to https://portal.azure.com and sign in with your provided lab credentials

                                                          65317A - Querying and Analyzing SQL Server 2025

    6-26 Module 6: Window Functions and Analytical Queries

2.  In the left navigation pane, click Virtual machines

3.  Locate your VM named SQL2025-Lab-VM

4.  Click the VM name to open its overview page

5.  Click the Start button at the top of the page

6.  Wait approximately 2-3 minutes for the VM to reach Running status

    Expected Output: The VM Status field displays ‘Running’ and the Connect button becomes enabled

Verification: The Start button changes to Stop, and you can see the public IP address displayed in the overview pane

Step 2: Connect to the virtual machine using Remote Desktop

1.  On the VM overview page, click the Connect button at the top

2.  Select Download RDP file from the dropdown menu

3.  Open the downloaded RDP file

4.  When prompted for credentials, enter:

         Username: labadmin
         Password: (provided in your lab environment details)

5.  Click OK and accept any certificate warnings

6.  Wait for the Windows Server 2025 desktop to load

    Expected Output: Windows Server 2025 desktop appears with the taskbar and Start menu visible

Verification: You can see the Windows Server 2025 background and the Server Manager may auto- launch

Step 3: Launch SQL Server Management Studio and connect to the local instance

1.  Click the Start button

2.  Type SSMS and click Microsoft SQL Server Management Studio 22

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 6: Window Functions and Analytical Queries 6-27

3.  In the Connect to Server dialog: Server type: Database Engine Server name: localhost or . (period) Authentication: Windows Authentication

4.  Click Connect

5.  Wait for Object Explorer to populate with databases

    Expected Output: SSMS opens with Object Explorer showing the server node expanded, displaying system databases and the AdventureWorks2025 database

Verification: In Object Explorer, you can expand Databases and see AdventureWorks2025 listed

Step 4: Create a new query window and set the database context

1.  In SSMS, click New Query button in the toolbar (or press Ctrl+N)
2.  In the query editor, type the following command:

USE AdventureWorks2025; GO

3.  Click Execute (or press F5)

4.  Verify the database context in the toolbar dropdown shows AdventureWorks2025

    Expected Output: The Messages tab displays: ‘Command(s) completed successfully.’ The database dropdown in the toolbar shows ‘AdventureWorks2025’

Verification: The status bar at the bottom of SSMS shows the active database as AdventureWorks2025

Step 5: Use ROW_NUMBER to rank salespeople by total sales

Clear the query window and execute the following query to rank salespeople:

                                                        65317A - Querying and Analyzing SQL Server 2025

6-28 Module 6: Window Functions and Analytical Queries

SELECT sp.BusinessEntityID, p.FirstName + ’ ’ + p.LastName AS SalesPersonName, sp.TerritoryID, SUM(soh.TotalDue) AS TotalSales, ROW_NUMBER() OVER (ORDER BY SUM(soh.TotalDue) DESC) AS SalesRank

FROM Sales.SalesPerson sp INNER JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID INNER JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName, sp.TerritoryID ORDER BY SalesRank; GO

Review the results to understand how ROW_NUMBER assigns sequential numbers.

    Expected Output:
     Results display approximately 17 rows with columns: BusinessEntityID, SalesPersonName,
     TerritoryID, TotalSales, and SalesRank. The SalesRank column shows values 1, 2, 3, etc., with no
     gaps or ties. The top salesperson has SalesRank = 1 with the highest TotalSales value.

Verification: Verify that SalesRank values are consecutive integers (1, 2, 3…) with no duplicates, regardless of whether any salespeople have identical TotalSales amounts

Step 6: Compare ROW_NUMBER, RANK, and DENSE_RANK ranking functions

Execute this query to see how different ranking functions handle ties:

SELECT sp.BusinessEntityID, p.FirstName + ’ ’ + p.LastName AS SalesPersonName, COUNT(soh.SalesOrderID) AS OrderCount, ROW_NUMBER() OVER (ORDER BY COUNT(soh.SalesOrderID) DESC) AS RowNum, RANK() OVER (ORDER BY COUNT(soh.SalesOrderID) DESC) AS RankNum, DENSE_RANK() OVER (ORDER BY COUNT(soh.SalesOrderID) DESC) AS DenseRankNum

FROM Sales.SalesPerson sp INNER JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID INNER JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName ORDER BY OrderCount DESC; GO

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-29

Observe the differences in the three ranking columns when salespeople have the same OrderCount.

    Expected Output:
     Results show salespeople with their order counts and three different ranking columns. Where
     OrderCount values are identical, ROW_NUMBER continues sequentially (e.g., 5, 6, 7), RANK shows
     ties with gaps (e.g., 5, 5, 7), and DENSE_RANK shows ties without gaps (e.g., 5, 5, 6).

Verification: Find rows with identical OrderCount values and confirm: ROW_NUMBER has different values, RANK has same values with a gap after, DENSE_RANK has same values with no gap after

Step 7: Use PARTITION BY to rank salespeople within each territory

Execute this query to rank salespeople separately within each territory:

SELECT sp.TerritoryID, st.Name AS TerritoryName, p.FirstName + ’ ’ + p.LastName AS SalesPersonName, SUM(soh.TotalDue) AS TotalSales, RANK() OVER ( PARTITION BY sp.TerritoryID ORDER BY SUM(soh.TotalDue) DESC ) AS TerritoryRank

FROM Sales.SalesPerson sp INNER JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID INNER JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID INNER JOIN Sales.SalesTerritory st ON sp.TerritoryID = st.TerritoryID GROUP BY sp.TerritoryID, st.Name, sp.BusinessEntityID, p.FirstName, p.LastName ORDER BY sp.TerritoryID, TerritoryRank; GO

Notice how ranking restarts at 1 for each territory.

    Expected Output:
     Results grouped by TerritoryID showing multiple salespeople per territory. Within each territory
     group, TerritoryRank starts at 1 for the top performer and increments. When a new TerritoryID
     appears, the ranking restarts at 1.

                                                         65317A - Querying and Analyzing SQL Server 2025

6-30 Module 6: Window Functions and Analytical Queries

Verification: Scroll through results and confirm that each distinct TerritoryID has at least one row with TerritoryRank = 1

Step 8: Calculate running totals using aggregate window functions

Create a query that shows monthly sales with a running total for each year:

SELECT YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth, SUM(TotalDue) AS MonthlySales, SUM(SUM(TotalDue)) OVER ( PARTITION BY YEAR(OrderDate) ORDER BY MONTH(OrderDate) ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) AS RunningTotalSales, AVG(SUM(TotalDue)) OVER ( PARTITION BY YEAR(OrderDate) ORDER BY MONTH(OrderDate) ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) AS ThreeMonthMovingAvg

FROM Sales.SalesOrderHeader GROUP BY YEAR(OrderDate), MONTH(OrderDate) ORDER BY OrderYear, OrderMonth; GO

Examine how the running total accumulates and resets each year.

    Expected Output:
     Results showing monthly sales data with OrderYear, OrderMonth, MonthlySales,
     RunningTotalSales, and ThreeMonthMovingAvg columns. For each year, RunningTotalSales starts
     with January's sales and increases each month. At the start of a new year, it resets.
     ThreeMonthMovingAvg shows null or partial averages for the first two months of each year.

Verification: For each year’s January row, verify RunningTotalSales equals MonthlySales. For each year’s December row, RunningTotalSales should be the sum of all 12 months

Step 9: Implement LAG function to compare month-over-month sales

Execute this query to calculate month-over-month sales changes:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-31

WITH MonthlySales AS ( SELECT YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth, SUM(TotalDue) AS TotalSales FROM Sales.SalesOrderHeader GROUP BY YEAR(OrderDate), MONTH(OrderDate)

) SELECT

     OrderYear,
      OrderMonth,
      TotalSales,
      LAG(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth) AS PreviousMonthSales,
      TotalSales - LAG(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth) AS SalesChange,
      CASE

         WHEN LAG(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth) IS NULL THEN NULL
         ELSE CAST(

             (TotalSales - LAG(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth))
             / LAG(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth) * 100
             AS DECIMAL(5,2)
         )
      END AS PercentChange

FROM MonthlySales ORDER BY OrderYear, OrderMonth; GO

Analyze the month-over-month changes in sales performance.

    Expected Output:
     Results showing each month with its sales, the previous month's sales, the absolute change, and
     percentage change. The first row will have NULL for PreviousMonthSales, SalesChange, and
     PercentChange. Subsequent rows show the previous month's values and calculated differences.

Verification: Manually verify one row: take TotalSales minus PreviousMonthSales and confirm it equals SalesChange. Verify the first chronological row has NULL values for the calculated fields

Step 10: Use LEAD function to compare with future periods

Create a query that shows current sales alongside next month’s sales:

                                                        65317A - Querying and Analyzing SQL Server 2025

6-32 Module 6: Window Functions and Analytical Queries

WITH MonthlySales AS ( SELECT YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth, SUM(TotalDue) AS TotalSales FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) IN (2022, 2023) GROUP BY YEAR(OrderDate), MONTH(OrderDate)

) SELECT

     OrderYear,
      OrderMonth,
      TotalSales AS CurrentMonthSales,
      LEAD(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth) AS NextMonthSales,
      LEAD(TotalSales, 3) OVER (ORDER BY OrderYear, OrderMonth) AS ThreeMonthsAhead,
      CASE

         WHEN LEAD(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth) > TotalSales
         THEN 'Increasing'
         WHEN LEAD(TotalSales, 1) OVER (ORDER BY OrderYear, OrderMonth) < TotalSales
         THEN 'Decreasing'
         ELSE 'Stable'
      END AS Trend

FROM MonthlySales ORDER BY OrderYear, OrderMonth; GO

Observe how LEAD retrieves values from subsequent rows.

    Expected Output:
     Results showing 2022-2023 monthly data with CurrentMonthSales, NextMonthSales (value from
     the next row), ThreeMonthsAhead (value from 3 rows ahead), and a Trend column. The last row
     has NULL for NextMonthSales and ThreeMonthsAhead. The last 3 rows have NULL for
     ThreeMonthsAhead.

Verification: Pick any row in the middle of the results. Verify NextMonthSales matches the CurrentMonthSales value of the following row. Verify ThreeMonthsAhead matches the CurrentMonthSales value three rows down

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-33

Step 11: Apply FIRST_VALUE and LAST_VALUE for comparative analysis

Execute this query to compare each salesperson’s monthly performance against their best and worst months:

SELECT sp.BusinessEntityID, p.FirstName + ’ ’ + p.LastName AS SalesPersonName, YEAR(soh.OrderDate) AS OrderYear, MONTH(soh.OrderDate) AS OrderMonth, SUM(soh.TotalDue) AS MonthlySales, FIRST_VALUE(SUM(soh.TotalDue)) OVER ( PARTITION BY sp.BusinessEntityID, YEAR(soh.OrderDate) ORDER BY SUM(soh.TotalDue) DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING ) AS BestMonthSales, LAST_VALUE(SUM(soh.TotalDue)) OVER ( PARTITION BY sp.BusinessEntityID, YEAR(soh.OrderDate) ORDER BY SUM(soh.TotalDue) DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING ) AS WorstMonthSales

FROM Sales.SalesPerson sp INNER JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID INNER JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName, YEAR(soh.OrderDate), MONTH(soh.OrderDate) ORDER BY sp.BusinessEntityID, OrderYear, OrderMonth; GO

Notice the window frame specification with UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING.

    Expected Output:
     Results showing each salesperson's monthly sales alongside their best and worst months for
     each year. Within each BusinessEntityID and OrderYear combination, BestMonthSales shows the
     same value (the highest monthly total for that year) across all months, and WorstMonthSales
     shows the same value (the lowest monthly total) across all months.

Verification: Pick one salesperson and one year. Verify BestMonthSales matches the highest MonthlySales value for that person/year. Verify WorstMonthSales matches the lowest MonthlySales value for that person/year

                                                        65317A - Querying and Analyzing SQL Server 2025

6-34 Module 6: Window Functions and Analytical Queries

Step 12: Use NTILE to divide salespeople into performance quartiles

Create a query that segments salespeople into four performance groups:

WITH SalesPersonTotals AS ( SELECT sp.BusinessEntityID, p.FirstName + ’ ’ + p.LastName AS SalesPersonName, SUM(soh.TotalDue) AS TotalSales FROM Sales.SalesPerson sp INNER JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID INNER JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName

) SELECT

     BusinessEntityID,
      SalesPersonName,
      TotalSales,
      NTILE(4) OVER (ORDER BY TotalSales DESC) AS PerformanceQuartile,
      CASE NTILE(4) OVER (ORDER BY TotalSales DESC)

         WHEN 1 THEN 'Top Performers'
         WHEN 2 THEN 'Above Average'
         WHEN 3 THEN 'Below Average'
         WHEN 4 THEN 'Needs Improvement'
      END AS PerformanceCategory

FROM SalesPersonTotals ORDER BY TotalSales DESC; GO

Observe how NTILE distributes salespeople evenly across quartiles.

    Expected Output:
     Results showing all salespeople divided into 4 groups (quartiles 1-4). If there are 17 salespeople,
     quartiles will have 4 or 5 people each. Quartile 1 contains the highest performers, quartile 4 the
     lowest. The PerformanceCategory column shows descriptive labels.

Verification: Count the rows in each PerformanceQuartile value. The counts should differ by at most 1. Verify the highest TotalSales values are in quartile 1 and the lowest are in quartile 4

Step 13: Build a comprehensive analytical dashboard query

Combine multiple window functions into a single analytical query:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-35

WITH SalesData AS ( SELECT sp.BusinessEntityID, p.FirstName + ’ ’ + p.LastName AS SalesPersonName, st.Name AS TerritoryName, YEAR(soh.OrderDate) AS OrderYear, SUM(soh.TotalDue) AS YearlySales FROM Sales.SalesPerson sp INNER JOIN Person.Person p ON sp.BusinessEntityID = p.BusinessEntityID INNER JOIN Sales.SalesTerritory st ON sp.TerritoryID = st.TerritoryID INNER JOIN Sales.SalesOrderHeader soh ON sp.BusinessEntityID = soh.SalesPersonID GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName, st.Name, YEAR(soh.OrderDate)

) SELECT

     BusinessEntityID,
      SalesPersonName,
      TerritoryName,
      OrderYear,
      YearlySales,
      RANK() OVER (PARTITION BY OrderYear ORDER BY YearlySales DESC) AS YearlyRank,
      LAG(YearlySales, 1) OVER (PARTITION BY BusinessEntityID ORDER BY OrderYear) AS PriorYearSales,
      YearlySales - LAG(YearlySales, 1) OVER (PARTITION BY BusinessEntityID ORDER BY OrderYear) AS YoYGrowth,
      SUM(YearlySales) OVER (PARTITION BY BusinessEntityID ORDER BY OrderYear) AS CumulativeSales,
      AVG(YearlySales) OVER (PARTITION BY TerritoryName, OrderYear) AS TerritoryAvgSales,
      PERCENT_RANK() OVER (PARTITION BY OrderYear ORDER BY YearlySales) AS PercentileRank

FROM SalesData ORDER BY OrderYear, YearlyRank; GO

Analyze the comprehensive performance metrics this query provides.

    Expected Output:
     Results showing yearly sales data for each salesperson with multiple analytical columns:
     YearlyRank (1 being best each year), PriorYearSales (previous year's sales for same person),
     YoYGrowth (year-over-year change), CumulativeSales (accumulating total over person's career),
     TerritoryAvgSales (average for all salespeople in same territory/year), and PercentileRank (0.0 to
     1.0 showing relative position).

Verification: Find one salesperson with multiple years. Verify CumulativeSales increases each year by the YearlySales amount. Verify PriorYearSales for 2023 matches YearlySales for 2022 for the same person

                                                        65317A - Querying and Analyzing SQL Server 2025

6-36 Module 6: Window Functions and Analytical Queries

Step 14: Understand window frame specifications with ROWS vs RANGE

Execute this query to see the difference between ROWS and RANGE framing:

WITH DailySales AS ( SELECT CAST(OrderDate AS DATE) AS OrderDate, SUM(TotalDue) AS DailySales FROM Sales.SalesOrderHeader WHERE OrderDate \>= ‘2023-01-01’ AND OrderDate \< ‘2023-02-01’ GROUP BY CAST(OrderDate AS DATE)

) SELECT

     OrderDate,
      DailySales,
      SUM(DailySales) OVER (

         ORDER BY OrderDate
         ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
      ) AS RowsFrame_3DaySum,
      SUM(DailySales) OVER (
         ORDER BY OrderDate
         RANGE BETWEEN INTERVAL 2 DAY PRECEDING AND CURRENT ROW
      ) AS RangeFrame_3DaySum,
      COUNT(*) OVER (
         ORDER BY OrderDate
         ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
      ) AS RowsInFrame

FROM DailySales ORDER BY OrderDate; GO

Compare how ROWS counts physical rows while RANGE considers logical value ranges.

    Expected Output:
     Results showing January 2023 daily sales. RowsFrame_3DaySum always sums the current row
     plus up to 2 previous rows. RangeFrame_3DaySum sums all rows with dates within 2 days before
     current date. If there are gaps in dates (weekends without orders), the results may differ.
     RowsInFrame shows 1, 2, or 3 depending on row position.

Verification: For the third row and beyond, verify RowsInFrame equals 3. If you find a date gap (e.g., weekend), compare RowsFrame_3DaySum and RangeFrame_3DaySum to see how they differ in

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-37

handling missing dates

Step 15: Save and document your analytical queries

1.  In SSMS, click File \> Save As
2.  Navigate to C:
3.  If the folder doesn’t exist, create it using the New Folder button
4.  Save the file as WindowFunctions_Lab.sql
5.  Add a comment header to your script:

/\* Window Functions Lab - Module 6 Course: Querying and Analyzing SQL Server 2025 Student: \[Your Name\] Date: \[Today’s Date\] This script demonstrates: - Ranking functions (ROW_NUMBER, RANK, DENSE_RANK, NTILE) - Aggregate window functions with PARTITION BY - Offset functions (LAG, LEAD, FIRST_VALUE, LAST_VALUE) - Window frame specifications (ROWS vs RANGE)

\*/

6.  Click Save to preserve your work

    Expected Output: File saved successfully to C:\_Lab.sql. The file icon appears in Windows Explorer with the .sql extension and SSMS icon.

Verification: Navigate to C: in File Explorer and confirm WindowFunctions_Lab.sql exists with today’s date as the modified date

                                                        65317A - Querying and Analyzing SQL Server 2025

6-38 Module 6: Window Functions and Analytical Queries

Troubleshooting

    Problem: Error: 'Invalid column name' when using window functions with GROUP BY
     Solution: Window functions cannot be used in the GROUP BY clause. Move window functions to
     the SELECT list only, or use a CTE/subquery to group first, then apply window functions in the
     outer query. Example: Use WITH grouped AS (SELECT ... GROUP BY ...) then SELECT ...,
     ROW_NUMBER() OVER ... FROM grouped.

     Problem: LAG or LEAD returns NULL unexpectedly for all rows
     Solution: Verify the ORDER BY clause in the OVER specification is correct. LAG/LEAD require a
     meaningful ordering. If ORDER BY references a column not in the query's result set or uses
     incorrect column names, the function may return NULL. Also check that you haven't specified an
     offset larger than the number of available rows.

     Problem: LAST_VALUE returns unexpected results or the same value as FIRST_VALUE
     Solution: The default window frame is 'RANGE BETWEEN UNBOUNDED PRECEDING AND
     CURRENT ROW', which causes LAST_VALUE to only see up to the current row, not the entire
     partition. Add explicit framing: ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED
     FOLLOWING to access all rows in the partition.

     Problem: Error: 'Windowed functions can only appear in the SELECT or ORDER BY clauses'
     Solution: You cannot use window functions directly in WHERE, HAVING, or GROUP BY clauses. To
     filter on window function results, use a CTE or subquery: WITH ranked AS (SELECT ...,
     ROW_NUMBER() OVER ... AS rn FROM ...) SELECT * FROM ranked WHERE rn = 1.

     Problem: Performance is very slow when using multiple window functions in one query
     Solution: Each window function with a different OVER clause may require a separate sort
     operation. Consolidate identical OVER clauses, consider breaking complex queries into indexed
     temporary tables, or use WINDOW clause aliasing in SQL Server 2025 (if available). Also ensure
     appropriate indexes exist on columns used in PARTITION BY and ORDER BY clauses.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 6: Window Functions and Analytical Queries 6-39

      Common Student Errors
     Syntax error: window function in WHERE clause
     Remind that window functions evaluate AFTER WHERE. Wrap query in CTE or subquery if filtering
     on window function result is needed.
     RANK/DENSE_RANK used without ORDER BY in OVER()
     Explain that ranking is meaningless without an ordering criterion. Ask 'ranking by what?' and
     guide student to add appropriate ORDER BY column.
     Running total appears to reset unexpectedly when using PARTITION BY
     Verify the partition column is correct. Show that each partition has its own window frame starting
     fresh. Demonstrate with a simple example of two regions.
     LAST_VALUE returns current row instead of actual last row
     This is the default frame issue. Walk through the default RANGE frame and show how to add
     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING.
     LAG returns NULL for all rows or for first row in partition
     First row in partition will always be NULL for LAG (no previous row exists). Provide default value in
     LAG(column, 1, 0) or COALESCE. Check partition boundaries if other rows return NULL
     unexpectedly.
     Query returns unexpected number of rows after adding window functions
     Confirm student understands window functions DON'T reduce rows. They add calculated
     columns to existing rows. If rows are unexpected, the issue is elsewhere (DISTINCT, JOIN, etc.).

Challenge Exercise

Multi-Metric Sales Performance Scorecard

Create a comprehensive sales performance scorecard query that identifies top performers while analyzing trends and regional patterns. Your query should produce a single result set that includes: 1. Salesperson identification: Name and territory 2. Current year metrics: Total sales for 2023 3. Performance ranking: Rank within territory and overall company rank 4. Trend analysis: Year-over-year sales growth percentage compared to 2022

                                                        65317A - Querying and Analyzing SQL Server 2025

6-40 Module 6: Window Functions and Analytical Queries

5.  Percentile positioning: Where each salesperson falls in the overall sales distribution (use PERCENT_RANK or CUME_DIST)

6.  Comparative context: How each person’s sales compare to their territory average

7.  Consistency scoring: Calculate the coefficient of variation (standard deviation / mean) of

    monthly sales to identify consistently high performers vs. those with volatile performance Requirements:

    Use at least 5 different window functions Include at least one instance of PARTITION BY Filter the final output to show only salespeople who ranked in the top 50% within their territory Order results by territory and then by rank within territory Add a calculated column that classifies each salesperson as ‘Star Performer’, ‘Solid Performer’, or ‘Developing’ based on their combination of rank, growth, and consistency Hint: You’ll need multiple CTEs to calculate monthly statistics before computing annual metrics with window functions. Validation: Your result set should have fewer rows than the total number of salespeople (due to the top 50% filter) and should clearly identify high performers with positive growth rates in top positions.

    Hints: For the challenge (e.g., ‘Find top 3 products per region with month-over-month growth and rank them’), hint students to break it into layers: 1) Create base layer with monthly sales aggregated by product/region, 2) Add ranking and LAG for previous month value, 3) Calculate growth percentage, 4) Rank products within region by growth, 5) Filter top 3 in outer query. Remind that they may need 2-3 CTEs. If students struggle with frame specifications in challenge, guide them to start simple (entire partition frame) and add complexity after validation.

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 6: Window Functions and Analytical Queries 6-41

Answer Key

1.  Which window function assigns sequential numbers to rows, guaranteeing uniqueness even when values are tied?

    1)  ROW_NUMBER()
    2)  RANK()
    3)  DENSE_RANK()
    4)  NTILE()

    Answer: A ROW_NUMBER() assigns unique sequential integers to every row within a partition, even when rows have identical values in the ORDER BY clause. RANK() and DENSE_RANK() assign the same rank to tied values, while NTILE() distributes rows into buckets.

2.  What is the primary purpose of the PARTITION BY clause in a window function?

    1)  To sort the entire result set in a specific order
    2)  To divide rows into logical groups where window calculations reset for each group
    3)  To limit the number of rows returned in the query result
    4)  To specify which columns should be included in the output

    Answer: B PARTITION BY divides the result set into logical partitions or groups, with window function calculations resetting for each partition. This allows you to perform separate window calculations for each group (such as each department or region) within a single query.

3.  Which ranking function would you use to create quartiles, dividing customers into four equal groups based on purchase amounts?

    1)  ROW_NUMBER()

    2)  RANK()

    3)  DENSE_RANK()

    4)  NTILE(4)

                                                          65317A - Querying and Analyzing SQL Server 2025

        6-42 Module 6: Window Functions and Analytical Queries

    Answer: D NTILE(4) distributes rows into four approximately equal groups and assigns a bucket number (1 through 4) to each row. This is the appropriate function for creating quartiles, percentiles, or any other equal distribution grouping. The other ranking functions assign individual ranks rather than distributing into buckets.

4.  What does the LAG() function allow you to access in a query?

    1)  The first value in the current partition
    2)  Values from previous rows in the result set
    3)  Values from subsequent rows in the result set
    4)  The last value in the current window frame

    Answer: B LAG() is an offset function that retrieves values from previous rows in the result set. You can specify how many rows to look back (default is 1). LEAD() accesses subsequent rows, FIRST_VALUE() accesses the first value in the window, and LAST_VALUE() accesses the last value.

5.  What is the difference between RANK() and DENSE_RANK() when handling tied values?

    1)  RANK() assigns unique numbers to all rows while DENSE_RANK() allows duplicates
    2)  RANK() creates gaps in rank numbers after ties while DENSE_RANK() does not
    3)  RANK() sorts ascending while DENSE_RANK() sorts descending
    4)  There is no difference; they are interchangeable functions

    Answer: B Both RANK() and DENSE_RANK() assign the same rank to tied values, but RANK() creates gaps in the sequence after ties (1, 2, 2, 4, 5), while DENSE_RANK() maintains consecutive rank numbers (1, 2, 2, 3, 4). This makes DENSE_RANK() useful when you need consecutive rank values.

6.  Which frame specification would you use to calculate a running total from the start of the partition to the current row?

    1)  ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 6: Window Functions and Analytical Queries 6-43

    2)  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW

    3)  ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING

    4)  ROWS BETWEEN CURRENT ROW AND CURRENT ROW

    Answer: B ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW creates a frame that starts at the beginning of the partition and extends through the current row, which is the correct specification for a running total. This is also the default frame when ORDER BY is specified without an explicit frame clause.

7.  What will this query calculate: `AVG(Sales) OVER (ORDER BY Month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)`?

    1)  The average of all sales in the entire dataset
    2)  A 3-month moving average including the current month and the two previous months
    3)  The average of sales from two months ago only
    4)  A running average from the beginning of the dataset to the current row

    Answer: B This frame specification includes 2 PRECEDING (two rows before the current row), plus CURRENT ROW, for a total of three rows. This creates a 3-month moving average that includes the current month and the two preceding months, which is a common pattern for smoothing time-series data.

8.  Which combination of window functions would be most appropriate for calculating year-over-year revenue growth percentage?

    1)  ROW_NUMBER() and SUM()

    2)  RANK() and AVG()

    3)  LAG() and arithmetic calculation

    4)  FIRST_VALUE() and LAST_VALUE()

                                                          65317A - Querying and Analyzing SQL Server 2025

        6-44 Module 6: Window Functions and Analytical Queries

    Answer: C Year-over-year growth requires comparing current period revenue with the same period from the previous year. LAG() retrieves the prior year’s value, and then arithmetic calculation (current - prior) / prior \* 100 computes the growth percentage. The other function combinations don’t provide the period-over-period comparison needed.

9.  In a window function, what happens when you specify ORDER BY without an explicit frame clause?

    1)  SQL Server returns an error requiring a frame specification
    2)  The window includes all rows in the partition without ordering
    3)  SQL Server applies a default frame of RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    4)  The window includes only the current row

    Answer: C When ORDER BY is specified without an explicit frame clause, SQL Server applies the default frame RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW. This default creates running calculations (cumulative totals, running averages, etc.). Without ORDER BY, the default includes all partition rows.

10. Which analytical pattern uses window functions to identify the top 5 salespeople within each region?

    1)  Use NTILE(5) partitioned by Region
    2)  Use RANK() or ROW_NUMBER() partitioned by Region with WHERE clause filtering to top 5
    3)  Use LAG() to compare each salesperson with the previous one
    4)  Use SUM() with PARTITION BY Region and filter by threshold value

    Answer: B The top-N within groups pattern uses RANK() or ROW_NUMBER() with PARTITION BY Region and ORDER BY sales descending, typically within a CTE, then filters WHERE rank \<= 5 in the outer query. NTILE(5) would create five equal groups, not identify the top performers. LAG() compares sequential rows, and SUM() doesn’t identify rankings.

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 6: Window Functions and Analytical Queries 6-45

Module Summary

Window functions provide powerful analytical capabilities in SQL Server, enabling ranking, aggregation, and offset calculations while maintaining individual row identity. The OVER clause defines the window of rows for each calculation, with PARTITION BY creating logical groups and ORDER BY sequencing rows within each partition. Ranking functions (ROW_NUMBER, RANK, DENSE_RANK, NTILE) assign sequential or competitive rankings, while aggregate window functions calculate SUM, AVG, and other aggregates across defined windows. Offset functions (LAG, LEAD, FIRST_VALUE, LAST_VALUE) access values from related rows for period-over-period comparisons. Frame specifications using ROWS BETWEEN provide precise control over which rows are included in calculations, enabling moving averages and running totals. These capabilities combine to support sophisticated analytical query patterns essential for business intelligence and reporting.

                                                        65317A - Querying and Analyzing SQL Server 2025

6-46 Module 6: Window Functions and Analytical Queries

Discussion Prompts

     1. Window functions maintain detail rows while calculating aggregates, whereas GROUP BY
          collapses rows. Describe a real business scenario where maintaining detail rows is critical--
          why would summary data from GROUP BY alone be insufficient?

      2. You're building a report that compares current quarter sales to the same quarter last year.
          Which window functions would you use, and why? What potential pitfalls should you watch
          for with this approach?

      3. Explain the difference between ROWS and RANGE frame specifications using a concrete
          example. When would choosing RANGE instead of ROWS produce unexpected results, and
          how would you debug it?

                                                         65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

           Module 7: Modern Data: Native JSON and Vector Search

                                                                    65317A
                                            3-day course ? 10 modules ? beginner level

Contents

Module 7: Modern Data: Native JSON and Vector Search

Lesson 1: Introduction to Modern Data in SQL Server 2025 Lesson 2: Storing and Validating JSON Data Lesson 3: Querying JSON with JSON_VALUE and JSON_QUERY Lesson 4: Parsing JSON Arrays with OPENJSON Lesson 5: Modifying and Generating JSON Lesson 6: Introduction to Vector Search in SQL Server 2025 Lab: Working with Native JSON and Vector Search in SQL Server 2025 Answer Key Module Summary

Day 2 Capstone Lab: GlobalMed Patient Care Analytics Platform Migration  Module 7: Modern Data: Native JSON and Vector Search 7-1

Learning Objectives After completing this module, you will be able to:

Query JSON data using native JSON functions in SQL Server 2025 (version 17) Create and modify JSON documents with JSON_MODIFY and FOR JSON Store and retrieve JSON data in table columns Perform vector similarity searches using SQL Server 2025 (version 17) vector search capabilities Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                   65317A - Querying and Analyzing SQL Server 2025

7-2 Module 7: Modern Data: Native JSON and Vector Search

      Module Overview
     Module 7 covers SQL Server 2025's native JSON handling and vector search capabilities, bridging traditional
     relational data with modern semi-structured and AI-driven search patterns. This module requires approximately
     180 minutes of instruction time, including hands-on labs with JSON operations and vector similarity
     demonstrations. Students will transition from basic JSON retrieval to advanced vector search implementations.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-3

Lesson 1: Introduction to Modern Data in SQL Server 2025

      Estimated Time: 20 minutes

This convergence is particularly valuable for:

E-commerce platforms storing product catalogs with varying attributes IoT applications capturing sensor telemetry in JSON format AI-powered applications requiring semantic search and recommendations Mobile backends exchanging JSON with client applications

      Modern data ecosystem showing JSON documents from web APIs and vector embeddings from AI models flowing into SQL Server 2025,
                                                                       illustrating unified data management

     Key Takeaways
         JSON and vector data are essential for modern application development
         SQL Server 2025 (version 17) provides native support for both data types
         Unified data management eliminates the need for separate NoSQL systems
         Native support maintains enterprise features like transactions and security

                                                         65317A - Querying and Analyzing SQL Server 2025

7-4 Module 7: Modern Data: Native JSON and Vector Search

      Instructor Notes
     Talking Points:

          Explain the business case: why enterprises need JSON support alongside relational data
          Highlight SQL Server 2025's evolution from JSON support (2016+) to native JSON type
          Clarify the distinction between storing JSON in NVARCHAR vs. native JSON data type
          Position vector search as the AI/ML intersection point with databases
          Mention performance improvements in SQL Server 2025 compared to earlier versions
     Demo Suggestion: Show a side-by-side comparison of querying JSON stored as NVARCHAR vs. native JSON type.
     Display query execution plans to demonstrate performance differences. Briefly preview a vector search result to set
     context for later sections.
     Common Student Questions:
     Q: Why would we store JSON in SQL Server instead of a NoSQL database?
     A: SQL Server offers ACID transactions, complex joins between relational and JSON data, and familiar SQL syntax.
     Use it when you need hybrid relational+semi-structured access, not pure document storage.
     Q: Is native JSON type mandatory in SQL Server 2025?
     A: No, NVARCHAR still works, but native JSON provides validation, storage optimization, and better query
     performance. It's recommended for production systems.
     Q: What's the relationship between JSON support and vector search?
     A: Vector embeddings (from AI models) are often stored and queried alongside JSON metadata. SQL Server 2025
     unifies both capabilities in one engine.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-5

Lesson 2: Storing and Validating JSON Data

      Estimated Time: 25 minutes

JSON Storage in SQL Server

SQL Server 2025 stores JSON as text in NVARCHAR columns. While there’s no dedicated JSON data type, the database provides specialized functions to work with JSON content efficiently. This approach offers flexibility–you can store JSON of any structure without predefined schemas.

CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName NVARCHAR(100), Specifications NVARCHAR(MAX)

); INSERT INTO Products VALUES (1, ‘Laptop’, ‘{“brand”:“TechCorp”,“ram”:“16GB”,“storage”:“512GB SSD”}’), (2, ‘Monitor’, ‘{“brand”:“ViewMax”,“size”:“27 inch”,“resolution”:“4K”}’);

Validating JSON with ISJSON

The ISJSON function verifies whether text is valid JSON. It returns 1 for valid JSON and 0 for invalid content. This is crucial for data quality, especially when accepting JSON from external sources.

– Check if JSON is valid SELECT ISJSON(‘{“name”:“John”}’) AS IsValid; – Returns 1 SELECT ISJSON(‘{name:John}’) AS IsValid; – Returns 0 (missing quotes) – Use in WHERE clause to filter valid JSON SELECT ProductID, ProductName FROM Products WHERE ISJSON(Specifications) = 1;

Best Practices for JSON Storage

Use NVARCHAR(MAX) for JSON columns to accommodate varying document sizes Add CHECK constraints with ISJSON to enforce data validity Consider indexing extracted JSON values for frequently queried properties Balance between JSON flexibility and relational normalization based on query patterns

                                                        65317A - Querying and Analyzing SQL Server 2025

7-6 Module 7: Modern Data: Native JSON and Vector Search

Before and after comparison showing unstructured JSON text being validated and organized into a structured SQL Server table with quality checks

    Key Takeaways
          JSON is stored as text in NVARCHAR columns, not a dedicated data type
          ISJSON validates whether text content is properly formatted JSON
          CHECK constraints can enforce JSON validity at the table level
          Choose JSON for variable schemas; use relational tables for fixed structures

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-7

Instructor Notes Talking Points:

Introduce JSON schema validation concepts and validation constraints Explain why validation happens at insert/update time, not query time Clarify the difference between well-formed JSON and valid JSON Demonstrate common validation patterns (required fields, data types, array constraints) Emphasize that native JSON type provides automatic validation feedback Discuss performance implications of strict vs. permissive validation Demo Suggestion: Live demo: Create a table with native JSON column. Insert valid JSON successfully, then attempt invalid JSON (malformed, schema violation) to show SQL Server error messages. Use JSON schema validation constraints. Show the difference between JSON_TYPE and explicit schema checks. Demonstrate an UPDATE that validates against schema. Common Student Questions: Q: What happens if I insert invalid JSON into a native JSON column? A: SQL Server 2025 will reject the insert with a specific error message. If using NVARCHAR, invalid JSON silently stores but fails at query time. Native JSON forces correctness immediately. Q: How do I enforce a JSON schema in SQL Server? A: Use JSON schema validation constraints or CHECK constraints with JSON_TYPE and JSON_VALUE functions. SQL Server doesn’t have JSON Schema (Draft 7) built-in; validation logic is implemented via constraints. Q: Can I change JSON schema validation after table creation? A: Yes, via ALTER TABLE. This may cause validation failures on existing data, so test thoroughly first. Consider adding CHECK constraints incrementally.

                                                   65317A - Querying and Analyzing SQL Server 2025

7-8 Module 7: Modern Data: Native JSON and Vector Search

Lesson 3: Querying JSON with JSON_VALUE and JSON_QUERY

      Estimated Time: 30 minutes

Extracting Scalar Values with JSON_VALUE

The JSON_VALUE function extracts a single scalar value (string, number, Boolean, or null) from a JSON document. You specify a JSON path to identify the property you want to retrieve.

– Extract brand from JSON specifications SELECT

     ProductName,
      JSON_VALUE(Specifications, '$.brand') AS Brand,
      JSON_VALUE(Specifications, '$.ram') AS RAM

FROM Products;

JSON path syntax uses \$ to represent the root document and dot notation ( .propertyName ) to navigate the hierarchy. For nested objects, chain properties: \$.address.city .

Retrieving Objects and Arrays with JSON_QUERY

While JSON_VALUE handles scalar values, JSON_QUERY extracts objects or arrays as JSON text. This is essential when working with complex nested structures.

– Assume JSON has nested features array DECLARE @product NVARCHAR(MAX) = ‘{“name”:“Laptop”,“features”:\[“Bluetooth”,“WiFi 6”,“Backlit Keyboard”\]}’; SELECT JSON_QUERY(@product, ‘\$.features’) AS FeaturesList; – Returns: \[“Bluetooth”,“WiFi 6”,“Backlit Keyboard”\]

Path Expressions and Strict vs. Lax Mode

JSON functions support two modes: Lax mode (default): Returns NULL if the path doesn’t exist Strict mode: Raises an error if the path is invalid

– Lax mode returns NULL for missing property SELECT JSON_VALUE(Specifications, ‘lax \$.color’) FROM Products; – Strict mode raises error for missing property SELECT JSON_VALUE(Specifications, ‘strict \$.color’) FROM Products;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-9 Use lax mode for optional properties and strict mode when the property must exist.

    Visual metaphor showing a magnifying glass examining a JSON document and extracting specific values into separate labeled containers
     Key Takeaways

         JSON_VALUE extracts single scalar values from JSON documents
         JSON_QUERY retrieves objects or arrays as JSON text
         JSON path expressions use $ for root and dot notation for properties
         Lax mode returns NULL for missing paths; strict mode raises errors

                                                         65317A - Querying and Analyzing SQL Server 2025

7-10 Module 7: Modern Data: Native JSON and Vector Search

      Instructor Notes
     Talking Points:

          Emphasize JSON_VALUE for scalar (single value) extraction
          Emphasize JSON_QUERY for object/array extraction (returns JSON)
          Clarify the return type difference: JSON_VALUE returns native SQL types; JSON_QUERY returns nvarchar(max)
          Teach JSON path expressions: dot notation vs. bracket notation for arrays
          Cover NULL handling and default values in these functions
          Discuss performance: these functions work on native JSON without full parsing
          Introduce the $ root context and filtering predicates
     Demo Suggestion: Live demo with a sample product catalog JSON. Show JSON_VALUE extracting a product name,
     price, and category from nested JSON. Show JSON_QUERY pulling an entire nested object (e.g., array of reviews).
     Demonstrate array indexing [0], [1], etc. Show wildcard queries. Compare performance via execution plans. Demo
     combining JSON extraction with WHERE clauses in larger result sets.
     Common Student Questions:
     Q: Why use JSON_QUERY instead of just returning the raw JSON column?
     A: JSON_QUERY lets you extract a sub-path and filters it at the database level, reducing data transfer. It also ensures
     the result is valid JSON, not just a string.
     Q: What's the difference between 'lax' and 'strict' path modes?
     A: Lax (default) suppresses errors if a path doesn't exist, returning NULL. Strict throws an error. Use lax for
     defensive queries; use strict when you expect a path to exist.
     Q: Can I use JSON_VALUE on an array?
     A: No, JSON_VALUE extracts scalars. For arrays, use JSON_QUERY. If you try JSON_VALUE on an array, it returns
     NULL.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-11

Lesson 4: Parsing JSON Arrays with OPENJSON

      Estimated Time: 35 minutes

Understanding OPENJSON

The OPENJSON function converts JSON arrays or objects into relational rowsets. This is invaluable when you need to join JSON data with relational tables or perform set-based operations on JSON collections.

DECLARE @jsonArray NVARCHAR(MAX) = ‘\[{“name”:“Alice”,“score”:95},{“name”:“Bob”,“score”:87}\]’; SELECT \* FROM OPENJSON(@jsonArray) WITH (

     StudentName NVARCHAR(50) '$.name',
      TestScore INT '$.score'

);

The WITH clause defines the output schema by mapping JSON properties to column names and data types.

Working with Nested Arrays

For JSON documents containing arrays at different levels, use OPENJSON with CROSS APPLY to flatten nested structures:

DECLARE @orders NVARCHAR(MAX) = ‘{“orderID”:1001,“items”:\[{“product”:“Laptop”,“qty”:2},{“product”:“Mouse”,“qty”:5}\]}’; SELECT

     JSON_VALUE(@orders, '$.orderID') AS OrderID,
      items.product,
      items.qty

FROM OPENJSON(@orders, ‘\$.items’) WITH ( product NVARCHAR(50), qty INT ) AS items;

OPENJSON Without WITH Clause

When you omit the WITH clause, OPENJSON returns a default schema with key-value pairs:

                                                        65317A - Querying and Analyzing SQL Server 2025

7-12 Module 7: Modern Data: Native JSON and Vector Search SELECT \* FROM OPENJSON(‘{“name”:“Alice”,“age”:30}’); – Returns columns: key, value, type

This format is useful for exploring JSON structure when the schema is unknown.

            Transformation sequence showing a JSON array being unpacked and arranged into a relational table with rows and columns
     Key Takeaways

          OPENJSON converts JSON arrays and objects into relational rowsets
          WITH clause maps JSON properties to typed columns
          CROSS APPLY enables working with nested JSON arrays
          OPENJSON without WITH returns generic key-value pairs for exploration

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-13

Instructor Notes Talking Points:

Position OPENJSON as the primary tool for unnesting JSON arrays into relational result sets Explain the WITH clause schema definition (critical for structured output) Clarify how OPENJSON returns a table (rowset) from JSON Teach nested OPENJSON for deeply nested structures Discuss AS JSON mode for columns that contain nested objects/arrays Cover NULL handling when keys are missing from some JSON objects Performance tip: OPENJSON is efficient but use it at appropriate join boundaries Demo Suggestion: Live demo parsing a JSON array of customer orders. Use OPENJSON with WITH clause to map JSON keys to column names and types. Show AS JSON for preserving nested structures. Demonstrate joining the OPENJSON result to a relational table. Show how missing keys in some array elements produce NULLs. Demo nested OPENJSON for parsing an array-within-array. Include a performance comparison with older string-parsing methods. Common Student Questions: Q: When should I use OPENJSON vs. JSON_QUERY in a WHERE clause? A: JSON_QUERY is for filtering/extracting at the document level. OPENJSON is for turning an array into a table (normalization). Use OPENJSON when you need to join array elements to other tables or aggregate them. Q: What does ‘AS JSON’ mean in the OPENJSON WITH clause? A: AS JSON tells OPENJSON to preserve the value as JSON (not convert to a scalar type). Use it for columns containing nested objects or arrays so you can query them further. Q: Can OPENJSON handle deeply nested arrays? A: Yes, nest multiple OPENJSON calls. The outer OPENJSON unpacks the first level; inner OPENJSON calls unpack nested levels. Use CROSS APPLY for clarity.

                                                   65317A - Querying and Analyzing SQL Server 2025

7-14 Module 7: Modern Data: Native JSON and Vector Search

Lesson 5: Modifying and Generating JSON

      Estimated Time: 30 minutes

Updating JSON with JSON_MODIFY

The JSON_MODIFY function updates, inserts, or deletes properties within JSON documents. It returns a modified copy of the JSON text, leaving the original unchanged unless you assign the result back.

– Update existing property UPDATE Products SET Specifications = JSON_MODIFY(Specifications, ‘$`.ram', '32GB')
   WHERE ProductID = 1;
   -- Insert new property
   UPDATE Products
   SET Specifications = JSON_MODIFY(Specifications, '`$.warranty’, ‘3 years’) WHERE ProductID = 2; – Delete property (set to NULL) UPDATE Products SET Specifications = JSON_MODIFY(Specifications, ‘\$.color’, NULL) WHERE ProductID = 1;

Note: To delete a property completely, set its value to NULL in JSON_MODIFY.

Generating JSON Output with FOR JSON

SQL Server 2025 can format query results as JSON using FOR JSON clauses. Two modes are available: FOR JSON PATH gives you control over the JSON structure:

SELECT ProductID AS ‘id’, ProductName AS ‘name’, JSON_VALUE(Specifications, ‘\$.brand’) AS ‘specs.brand’

FROM Products FOR JSON PATH;

FOR JSON AUTO generates JSON automatically based on query structure:

SELECT ProductID, ProductName, CategoryName FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID FOR JSON AUTO;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-15

Including NULL Values and Root Element

Use INCLUDE_NULL_VALUES to include properties with NULL values, and ROOT to wrap output in a named root element:

SELECT ProductID, ProductName FROM Products FOR JSON PATH, ROOT(‘products’), INCLUDE_NULL_VALUES;

      Bidirectional workflow showing relational data being transformed into JSON output and JSON documents being modified and updated
     Key Takeaways

         JSON_MODIFY updates, inserts, or deletes properties in JSON documents
         FOR JSON PATH provides precise control over JSON output structure
         FOR JSON AUTO generates JSON based on query relationships
         Additional options control NULL handling and root element naming

                                                         65317A - Querying and Analyzing SQL Server 2025

7-16 Module 7: Modern Data: Native JSON and Vector Search

      Instructor Notes
     Talking Points:

          Introduce JSON_MODIFY for in-place updates of JSON documents
          Explain FOR JSON clause for converting relational result sets to JSON
          Clarify AUTO, PATH, and RAW modes in FOR JSON
          Teach JSON_MODIFY syntax: path expression, new value, create flag
          Discuss the performance of JSON_MODIFY (copies entire document on update)
          Cover NULL handling and missing path insertion
          Show how FOR JSON is used to generate JSON from stored procedures or queries
     Demo Suggestion: Live demo modifying a JSON document with JSON_MODIFY: update a nested value, add a new
     field, delete a field (set to NULL and handle). Show before/after. Then demo FOR JSON: convert a query result set to
     JSON using AUTO mode (shows relational structure), PATH mode (custom nesting), and RAW mode (simple arrays).
     Combine FOR JSON with FOR JSON ROOT to wrap output. Show practical use case: REST API response generation.
     Common Student Questions:
     Q: Is JSON_MODIFY efficient for large documents?
     A: JSON_MODIFY re-parses and rebuilds the entire JSON document, so it's O(n) in document size. For frequent
     updates to specific fields, consider splitting into separate columns or normalizing structure.
     Q: How do I delete a key from JSON using JSON_MODIFY?
     A: Set its value to NULL and use the lax path mode; JSON_MODIFY will remove it. Or use REPLACE to set value
     directly and check if the key is nullable in your schema.
     Q: What's the difference between FOR JSON AUTO and FOR JSON PATH?
     A: AUTO generates nesting automatically based on the relational structure (joins create hierarchy). PATH uses dot-
     notation column names to define custom nesting. AUTO is quicker; PATH is more flexible.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-17

Lesson 6: Introduction to Vector Search in SQL Server 2025

Estimated Time: 40 minutes

What Are Vectors?

In machine learning, vectors are arrays of numbers that represent complex data (text, images, audio) in high- dimensional space. For example, the sentence “SQL Server is powerful” might be converted to a 768-dimensional vector: \[0.23, -0.45, 0.67, …\] .

These vectors capture semantic meaning–similar concepts have vectors that are close together in this mathematical space. This enables:

Semantic search: Find documents by meaning, not just keywords Recommendation engines: Suggest similar products or content Anomaly detection: Identify outliers in high-dimensional data Image similarity: Match visually similar pictures

Vector Data Types in SQL Server 2025

SQL Server 2025 (version 17) introduces native vector data types to store embeddings generated by AI models:

CREATE TABLE Documents ( – 768-dimensional vector DocumentID INT PRIMARY KEY, Title NVARCHAR(200), ContentEmbedding VECTOR(768)

);

The VECTOR(n) type stores n-dimensional floating-point arrays optimized for similarity calculations.

Vector Similarity Functions

SQL Server 2025 provides functions to calculate distance between vectors: Cosine similarity: Measures angle between vectors (common for text) Euclidean distance: Straight-line distance in vector space Dot product: Direct multiplication of vector components

                                65317A - Querying and Analyzing SQL Server 2025

7-18 Module 7: Modern Data: Native JSON and Vector Search – Find documents similar to a query vector DECLARE @queryVector VECTOR(768) = /\* vector from AI model \*/; SELECT TOP 5 DocumentID, Title, VECTOR_DISTANCE(‘cosine’, ContentEmbedding, @queryVector) AS Similarity FROM Documents ORDER BY Similarity;

Vector search enables AI-powered features directly in your database, eliminating the need for external vector stores.

    Conceptual illustration of semantic similarity showing related concepts clustered together in multidimensional vector space with similarity
                                                                                        calculations

     Key Takeaways
          Vectors are numerical arrays representing semantic meaning of complex data
          SQL Server 2025 (version 17) provides native VECTOR data type for embeddings
          Vector similarity functions calculate distances between embeddings
          Use cases include semantic search, recommendations, and similarity matching

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-19

Instructor Notes Talking Points:

Explain vector embeddings: numeric representations of text/images produced by AI models Clarify SQL Server 2025 has native vector type and similarity search functions Introduce VECTOR data type (fixed-length float array) Discuss similarity metrics: cosine similarity, Euclidean distance, dot product Teach how to generate embeddings (external AI service, Azure OpenAI, local models) Explain approximate nearest neighbor (ANN) indexing for performance at scale Clarify use cases: semantic search, recommendation engines, anomaly detection, RAG systems Address the hybrid approach: metadata in JSON, vectors in VECTOR column Demo Suggestion: Live demo creating a table with VECTOR column. Show sample vector data (do not generate live; use pre-computed embeddings). Demo a similarity search query using VECTOR_DISTANCE or VECTOR_SIMILARITY function. Show results ranked by similarity score. Demonstrate on a dataset of product descriptions: upload embeddings, query with a user input vector, retrieve most similar products. Discuss ANN index creation and performance. Mention integration with Azure OpenAI or Semantic Kernel for embedding generation. Common Student Questions: Q: Where do vector embeddings come from? A: Generated by AI embedding models (e.g., text-embedding-3-small from OpenAI, or local models via Semantic Kernel). Pre-compute embeddings for your data and store in SQL Server; generate embeddings for queries at search time. Q: What’s the difference between VECTOR_DISTANCE and VECTOR_SIMILARITY? A: VECTOR_DISTANCE measures distance (lower is more similar; cosine distance 0-2). VECTOR_SIMILARITY normalizes to similarity score (0-1, higher is more similar). Semantically they measure the same thing; use whichever fits your ranking logic. Q: Do I need an index for vector search to work? A: No, but you should for performance. Without an index, SQL Server does full table scan with similarity calculations. With ANN index, it uses approximate nearest neighbor for fast retrieval of top-k results. Q: Can vector search work with JSON metadata? A: Absolutely! Store product metadata (description, category, tags) as JSON in one column and embeddings as VECTOR in another. Query vectors for similarity, then filter/enrich with JSON metadata.

                                                   65317A - Querying and Analyzing SQL Server 2025

7-20 Module 7: Modern Data: Native JSON and Vector Search

Lab: Working with Native JSON and Vector Search in SQL Server 2025

Objective: Create and query JSON data structures, modify JSON documents, and implement vector similarity search for product recommendations using SQL Server 2025 native features Estimated Time: 45 minutes Platform: Azure Portal VM with Windows Server 2025, SQL Server 2025 (v17), and SSMS 22 Prerequisites:

Access to Azure Portal lab environment SQL Server Management Studio 22 installed SQL Server 2025 (version 17) instance running Basic understanding of relational database concepts Familiarity with SELECT statements

      Lab Facilitation
     Setup: Pre-lab: Verify all students have SQL Server 2025 (version 17+) installed or access to a lab environment.
     Ensure the following sample databases/tables are created or provided: 1. A products table with a JSON column
     containing product details (name, description, category, price, reviews array). 2. A customers table with JSON
     column for address/preferences. 3. A vector_embeddings table with VECTOR column (pre-populated with sample
     embeddings for product descriptions, e.g., 1536-dimensional vectors from text-embedding-3-small). Provide a CSV
     or SQL script with sample vectors. 4. Optionally, provide a Semantic Kernel or Python script that students can use to
     generate embeddings if they want to create custom data. 5. Have sample embedding vectors ready (don't require
     students to call external APIs unless they want advanced challenge). 6. Create or provide a partially-completed lab
     script with TODO comments where students fill in JSON/vector queries.
     Pacing: Allocate ~15 min for JSON basics (storage, validation), ~20 min for JSON_VALUE/JSON_QUERY practice, ~20
     min for OPENJSON unnesting, ~15 min for FOR JSON generation, and ~20 min for vector search queries. Lab total
     ~90 min. Pause between sections to address common mistakes before they compound. If students finish JSON
     sections early, have them explore nested OPENJSON or complex path expressions. For vector section, start with
     simple similarity queries before moving to ANN index creation and performance comparison.

Procedures

Step 1: Connect to the SQL Server instance and create a new database for the lab

Open SQL Server Management Studio 22. In the Connect to Server dialog: Server type: Database Engine

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-21

Server name: localhost (or your VM’s instance name) Authentication: Windows Authentication Click Connect In the toolbar, click New Query. Execute the following script:

– Create the lab database CREATE DATABASE ModernDataLab; GO USE ModernDataLab; GO

    Expected Output:
     Command(s) completed successfully.
     The database context shows 'ModernDataLab' in the dropdown at the top of the query window.

Verification: In Object Explorer, expand **Databases** and confirm **ModernDataLab** appears in the list.

Step 2: Create a Products table with JSON column to store product attributes

In the same query window, execute this script to create a table that stores product information with flexible JSON attributes:

– Create Products table with JSON column CREATE TABLE Products (

     ProductID INT IDENTITY(1,1) PRIMARY KEY,
      ProductName NVARCHAR(100) NOT NULL,
      Category NVARCHAR(50) NOT NULL,
      BasePrice DECIMAL(10,2) NOT NULL,
      Attributes NVARCHAR(MAX) CHECK (ISJSON(Attributes) = 1),
      CreatedDate DATETIME2 DEFAULT GETDATE()

); GO

Note the CHECK (ISJSON(Attributes) = 1) constraint ensures only valid JSON is stored in the Attributes column.

    Expected Output:
     Command(s) completed successfully.

Verification: In Object Explorer, expand **ModernDataLab \> Tables**. Right-click **dbo.Products** and select **Design** to verify the table structure includes the Attributes column with NVARCHAR(MAX) data type.

                                                        65317A - Querying and Analyzing SQL Server 2025

7-22 Module 7: Modern Data: Native JSON and Vector Search

Step 3: Insert sample product records with JSON attributes

Insert products with varying JSON attribute structures to demonstrate flexibility: – Insert products with JSON attributes INSERT INTO Products (ProductName, Category, BasePrice, Attributes) VALUES (‘Laptop Pro 15’, ‘Electronics’, 1299.99, N’{“brand”:“TechCorp”,“specs”:{“ram”:“16GB”,“storage”:“512GB SSD”,“processor”:“Intel i7”},“colors”:\[“Silver”,“Space Gray”\],“warran (‘Wireless Mouse’, ‘Electronics’, 29.99, N’{”brand”:“PeripheralPlus”,“specs”:{“dpi”:“3200”,“buttons”:6,“wireless”:true},“colors”:\[“Black”,“White”,“Blue”\],“batteryLife”:“18 mo (‘Office Chair Deluxe’, ‘Furniture’, 349.99, N’{”brand”:“ComfortSeating”,“specs”:{“material”:“Mesh”,“adjustableHeight”:true,“lumbarSupport”:true},“colors”:\[“Black”,“Gray”\],“w (‘Gaming Headset’, ‘Electronics’, 89.99, N’{”brand”:“AudioMax”,“specs”:{“wireless”:false,“noiseCancel”:true,“microphone”:“detachable”},“colors”:\[“Black”,“Red”\],“compatib (‘Standing Desk’, ‘Furniture’, 599.99, N’{”brand”:“ErgoWork”,“specs”:{“material”:“Bamboo”,“motorized”:true,“heightRange”:“29-48 inches”},“colors”:\[“Natural”,“Walnut”\] GO SELECT COUNT(\*) AS ProductCount FROM Products;

    Expected Output:
     (5 row(s) affected)

ProductCount

    5

Verification: Execute `SELECT ProductID, ProductName, Attributes FROM Products;` and verify 5 rows are returned with JSON content in the Attributes column.

Step 4: Query specific JSON values using JSON_VALUE function

Use JSON_VALUE to extract scalar values from JSON documents. This function returns a single text value from a JSON path:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-23

– Extract brand and specific specs from JSON SELECT

     ProductID,
      ProductName,
      Category,
      BasePrice,
      JSON_VALUE(Attributes, '$.brand') AS Brand,
      JSON_VALUE(Attributes, '$.specs.ram') AS RAM,
      JSON_VALUE(Attributes, '$.specs.storage') AS Storage,
      JSON_VALUE(Attributes, '$.warranty') AS Warranty

FROM Products WHERE Category = ‘Electronics’;

The \$ represents the root of the JSON document, and . notation navigates the hierarchy.

Expected Output:

ProductID ProductName Category BasePrice Brand RAM Storage Warranty

1 Laptop Pro 15 Electronics 1299.99 TechCorp 16GB 512GB SSD 2 years

2 Wireless Mouse Electronics 29.99 PeripheralPlus NULL NULL NULL

4 Gaming Headset Electronics 89.99 AudioMax NULL NULL NULL

Verification: Verify that NULL appears for products that don’t have specific JSON properties (like RAM for the mouse). This demonstrates that JSON_VALUE returns NULL when a path doesn’t exist.

Step 5: Extract JSON objects and arrays using JSON_QUERY

Use JSON_QUERY to extract complex JSON objects or arrays (not scalar values):

– Extract entire specs object and colors array SELECT

     ProductName,
      JSON_QUERY(Attributes, '$.specs') AS FullSpecs,
      JSON_QUERY(Attributes, '$.colors') AS AvailableColors

FROM Products WHERE ProductID \<= 3;

JSON_QUERY preserves the JSON structure, while JSON_VALUE extracts only text values.

                 65317A - Querying and Analyzing SQL Server 2025

7-24 Module 7: Modern Data: Native JSON and Vector Search

Expected Output:

ProductName FullSpecs AvailableColors

Laptop Pro 15 {“ram”:“16GB”,“storage”:“512GB SSD”,“processor”:“Intel i7”} \[“Silver”,“Space Gray”\]

Wireless Mouse {“dpi”:“3200”,“buttons”:6,“wireless”:true} \[“Black”,“White”,“Blue”\]

Office Chair Deluxe {“material”:“Mesh”,“adjustableHeight”:true,“lumbarSupport”:true} \[“Black”,“Gray”\]

Verification: Confirm the FullSpecs column contains valid JSON objects (with curly braces) and AvailableColors contains JSON arrays (with square brackets).

Step 6: Parse JSON arrays using OPENJSON to create rows

Use OPENJSON with CROSS APPLY to convert JSON arrays into relational rows:

– Expand colors array into individual rows SELECT

     p.ProductID,
      p.ProductName,
      p.BasePrice,
      colors.value AS AvailableColor

FROM Products p CROSS APPLY OPENJSON(p.Attributes, ‘\$.colors’) colors WHERE p.Category = ‘Electronics’ ORDER BY p.ProductID, colors.\[key\];

The \[key\] column contains the array index, and value contains each array element.

                            65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-25

Expected Output: ProductName BasePrice AvailableColor ProductID Laptop Pro 15 1299.99 Silver 1 Laptop Pro 15 1299.99 Space Gray 1 Wireless Mouse 29.99 Black 2 Wireless Mouse 29.99 White 2 Wireless Mouse 29.99 Blue 2 Gaming Headset 89.99 Black 4 Gaming Headset 89.99 Red 4

Verification: Count the total rows returned. Should be 7 rows (2 colors for Laptop + 3 for Mouse + 2 for Headset).

Step 7: Modify JSON data using JSON_MODIFY function

Update JSON content to add a new property and change an existing value:

– Add discount and update warranty for Laptop Pro 15 UPDATE Products SET Attributes = JSON_MODIFY(

     JSON_MODIFY(Attributes, '$.warranty', '3 years'),
      '$.discountPercent', 10

) WHERE ProductID = 1;

– Verify the changes SELECT

     ProductName,
      JSON_VALUE(Attributes, '$.warranty') AS Warranty,
      JSON_VALUE(Attributes, '$.discountPercent') AS Discount,
      Attributes

FROM Products WHERE ProductID = 1;

JSON_MODIFY can update existing properties or add new ones. Nest multiple calls to modify multiple properties.

                 65317A - Querying and Analyzing SQL Server 2025

7-26 Module 7: Modern Data: Native JSON and Vector Search

Expected Output:

ProductName Warranty Discount Attributes

Laptop Pro 15 3 years 10 {“brand”:“TechCorp”,“specs”:{“ram”:“16GB”,“storage”:“512GB SSD”,“processor”:“Intel i7”},“colors”:\[“Silver”,“Space Gray”\],“warranty”:“3 years”,“discountPercent”:10}

(1 row affected)

Verification: Confirm the Attributes JSON now contains both the updated warranty value (3 years instead of 2 years) and the new discountPercent property.

Step 8: Convert relational data to JSON using FOR JSON PATH

Generate JSON output from relational query results:

– Create JSON response for products with nested structure SELECT

     ProductID AS 'product.id',
      ProductName AS 'product.name',
      Category AS 'product.category',
      BasePrice AS 'product.pricing.base',
      JSON_VALUE(Attributes, '$.brand') AS 'product.brand',
      JSON_QUERY(Attributes, '$.colors') AS 'product.colors'

FROM Products WHERE Category = ‘Furniture’ FOR JSON PATH, ROOT(‘products’);

The aliases with dots create nested JSON objects. ROOT adds a root element name.

    Expected Output:
     {"products":[{"product":{"id":3,"name":"Office Chair Deluxe","category":"Furniture","pricing":
     {"base":349.99},"brand":"ComfortSeating","colors":["Black","Gray"]}},{"product":{"id":5,"name":"Standing
     Desk","category":"Furniture","pricing":{"base":599.99},"brand":"ErgoWork","colors":["Natural","Walnut"]}}]}

Verification: Copy the JSON output and validate it at a JSON validator (or verify it starts with {“products”:\[ and contains nested objects). The pricing.base shows nested object creation.

Step 9: Create a table with vector data type for product embeddings

Create a table to store product feature vectors for similarity search:

                      65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-27

– Create ProductVectors table with vector column CREATE TABLE ProductVectors (

     VectorID INT IDENTITY(1,1) PRIMARY KEY,
      ProductID INT NOT NULL,
      FeatureDescription NVARCHAR(200),
      FeatureVector VECTOR(8) NOT NULL,
      FOREIGN KEY (ProductID) REFERENCES Products(ProductID)

); GO

The VECTOR(8) data type stores an 8-dimensional vector. In production, vectors typically have 128, 256, 768, or 1536 dimensions depending on the embedding model.

    Expected Output:
     Command(s) completed successfully.

Verification: In Object Explorer, refresh Tables and expand **dbo.ProductVectors \> Columns**. Verify the FeatureVector column shows data type **vector(8)**.

Step 10: Insert sample product feature vectors

Insert vectors representing product features. These simplified 8-dimensional vectors represent product characteristics:

– Insert feature vectors for products – Dimensions represent: \[price_tier, tech_level, portability, office_use, gaming, ergonomic, audio, visual\] INSERT INTO ProductVectors (ProductID, FeatureDescription, FeatureVector) VALUES (1, ‘Laptop - high performance computing’, CAST(‘\[0.9, 0.95, 0.7, 0.9, 0.6, 0.5, 0.3, 0.95\]’ AS VECTOR(8))), (2, ‘Mouse - precision input device’, CAST(‘\[0.2, 0.6, 0.95, 0.8, 0.7, 0.6, 0.1, 0.2\]’ AS VECTOR(8))), (3, ‘Chair - ergonomic seating’, CAST(‘\[0.4, 0.1, 0.0, 0.95, 0.0, 0.95, 0.0, 0.0\]’ AS VECTOR(8))), (4, ‘Headset - gaming audio’, CAST(‘\[0.3, 0.7, 0.8, 0.4, 0.95, 0.3, 0.95, 0.1\]’ AS VECTOR(8))), (5, ‘Desk - ergonomic workspace’, CAST(‘\[0.6, 0.5, 0.0, 0.95, 0.0, 0.9, 0.0, 0.0\]’ AS VECTOR(8))); GO SELECT \* FROM ProductVectors;

                                                        65317A - Querying and Analyzing SQL Server 2025

7-28 Module 7: Modern Data: Native JSON and Vector Search

Expected Output:

VectorID ProductID FeatureDescription FeatureVector 1 1 Laptop - high performance computing \[0.9, 0.95, 0.7, 0.9, 0.6, 0.5, 0.3, 0.95\] 2 2 Mouse - precision input device \[0.2, 0.6, 0.95, 0.8, 0.7, 0.6, 0.1, 0.2\] 3 3 Chair - ergonomic seating \[0.4, 0.1, 0.0, 0.95, 0.0, 0.95, 0.0, 0.0\] 4 4 Headset - gaming audio \[0.3, 0.7, 0.8, 0.4, 0.95, 0.3, 0.95, 0.1\] 5 5 Desk - ergonomic workspace \[0.6, 0.5, 0.0, 0.95, 0.0, 0.9, 0.0, 0.0\]

(5 row(s) affected)

Verification: Verify all 5 vectors are inserted and display correctly with 8 dimensions each.

Step 11: Perform vector similarity search using VECTOR_DISTANCE

Find products similar to the laptop based on feature vectors using cosine distance:

– Declare a search vector (similar to laptop features) DECLARE @SearchVector VECTOR(8) = CAST(‘\[0.85, 0.9, 0.65, 0.85, 0.5, 0.4, 0.2, 0.9\]’ AS VECTOR(8));

– Find similar products using cosine distance SELECT TOP 3

     p.ProductName,
      pv.FeatureDescription,
      VECTOR_DISTANCE('cosine', pv.FeatureVector, @SearchVector) AS CosineSimilarity,
      p.BasePrice

FROM ProductVectors pv INNER JOIN Products p ON pv.ProductID = p.ProductID ORDER BY VECTOR_DISTANCE(‘cosine’, pv.FeatureVector, @SearchVector) ASC;

Lower cosine distance indicates higher similarity. Distance ranges from 0 (identical) to 2 (opposite).

Expected Output: FeatureDescription CosineSimilarity BasePrice ProductName Laptop - high performance computing 0.008549116347729564 1299.99 Laptop Pro 15 Mouse - precision input device 0.183757215738296 29.99 Wireless Mouse Headset - gaming audio 0.267840210348367 89.99 Gaming Headset

                    65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-29

Verification: The Laptop Pro 15 should have the lowest (closest to 0) cosine distance, indicating it’s most similar to the search vector. The order shows decreasing similarity.

Step 12: Find similar products using euclidean distance metric

Compare results using euclidean distance instead of cosine:

– Compare products using euclidean distance DECLARE @SearchVector VECTOR(8) = CAST(‘\[0.4, 0.2, 0.0, 0.95, 0.0, 0.9, 0.0, 0.0\]’ AS VECTOR(8));

SELECT p.ProductName, pv.FeatureDescription, VECTOR_DISTANCE(‘euclidean’, pv.FeatureVector, @SearchVector) AS EuclideanDistance, VECTOR_DISTANCE(‘cosine’, pv.FeatureVector, @SearchVector) AS CosineDistance, p.Category

FROM ProductVectors pv INNER JOIN Products p ON pv.ProductID = p.ProductID ORDER BY VECTOR_DISTANCE(‘euclidean’, pv.FeatureVector, @SearchVector) ASC;

This search vector represents ergonomic office furniture characteristics.

Expected Output:

ProductName FeatureDescription EuclideanDistance CosineDistance Category Office Chair Deluxe Chair - ergonomic seating 0.223606797749979 0.006711409395973 Furniture Standing Desk Wireless Mouse Desk - ergonomic workspace 0.360555127546399 0.010869565217391 Furniture Gaming Headset Mouse - precision input device 1.532970643748558 0.422695035460993 Electronics Headset - gaming audio 1.775976286380381 0.552238805970149 Electronics Laptop Pro 15 Laptop - high performance computing 2.136775414897034 0.617592592592593 Electronics

Verification: Verify that furniture items (Chair and Desk) appear at the top with the lowest euclidean distance values, confirming they match the ergonomic office furniture search vector.

Step 13: Combine JSON queries with vector search for product recommendations

Create a comprehensive recommendation query that uses both JSON attributes and vector similarity:

                 65317A - Querying and Analyzing SQL Server 2025

7-30 Module 7: Modern Data: Native JSON and Vector Search

– Find similar products with specific JSON attribute filtering DECLARE @UserPreferenceVector VECTOR(8) = CAST(‘\[0.3, 0.7, 0.9, 0.5, 0.8, 0.4, 0.8, 0.3\]’ AS VECTOR(8)); SELECT TOP 3

     p.ProductName,
      p.Category,
      p.BasePrice,
      JSON_VALUE(p.Attributes, '$.brand') AS Brand,
      JSON_QUERY(p.Attributes, '$.colors') AS AvailableColors,
      JSON_VALUE(p.Attributes, '$.specs.wireless') AS IsWireless,
      pv.FeatureDescription,
      ROUND(VECTOR_DISTANCE('cosine', pv.FeatureVector, @UserPreferenceVector), 4) AS SimilarityScore

FROM Products p INNER JOIN ProductVectors pv ON p.ProductID = pv.ProductID WHERE p.Category = ‘Electronics’ AND JSON_VALUE(p.Attributes, ‘\$.specs.wireless’) IS NOT NULL ORDER BY VECTOR_DISTANCE(‘cosine’, pv.FeatureVector, @UserPreferenceVector) ASC FOR JSON PATH, ROOT(‘recommendations’);

This demonstrates combining traditional filtering, JSON queries, and vector similarity in a single recommendation engine query.

    Expected Output:
     {"recommendations":[{"ProductName":"Gaming
     Headset","Category":"Electronics","BasePrice":89.99,"Brand":"AudioMax","AvailableColors":
     ["Black","Red"],"IsWireless":"false","FeatureDescription":"Headset - gaming audio","SimilarityScore":0.1169},
     {"ProductName":"Wireless
     Mouse","Category":"Electronics","BasePrice":29.99,"Brand":"PeripheralPlus","AvailableColors":
     ["Black","White","Blue"],"IsWireless":"true","FeatureDescription":"Mouse - precision input
     device","SimilarityScore":0.1919}]}

Verification: Verify the JSON output contains only Electronics products that have a wireless specification defined, ordered by similarity score. The Gaming Headset should rank highest (lowest score) for this preference vector.

Step 14: Create a stored procedure for reusable vector search

Build a stored procedure to encapsulate the vector search logic:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-31

– Create stored procedure for product recommendations CREATE PROCEDURE GetSimilarProducts

@InputVector NVARCHAR(MAX), @TopN INT = 3, @CategoryFilter NVARCHAR(50) = NULL AS BEGIN DECLARE @SearchVector VECTOR(8) = CAST(@InputVector AS VECTOR(8));

SELECT TOP (@TopN) p.ProductID, p.ProductName, p.Category, p.BasePrice, JSON_VALUE(p.Attributes, ‘\$.brand’) AS Brand, pv.FeatureDescription, ROUND(VECTOR_DISTANCE(‘cosine’, pv.FeatureVector, @SearchVector), 6) AS SimilarityScore

FROM Products p INNER JOIN ProductVectors pv ON p.ProductID = pv.ProductID WHERE @CategoryFilter IS NULL OR p.Category = @CategoryFilter ORDER BY VECTOR_DISTANCE(‘cosine’, pv.FeatureVector, @SearchVector) ASC; END; GO

– Test the stored procedure EXEC GetSimilarProducts

@InputVector = ‘\[0.5, 0.6, 0.4, 0.8, 0.3, 0.7, 0.2, 0.4\]’, @TopN = 2, @CategoryFilter = NULL;

Expected Output: Command(s) completed successfully.

ProductID ProductName Category BasePrice Brand FeatureDescription SimilarityScore

3 Office Chair Furniture 349.99 ComfortSeating Chair - ergonomic 0.154321

Deluxe seating

5 Standing Desk Furniture 599.99 ErgoWork Desk - ergonomic 0.178456

                                                   workspace

Verification: In Object Explorer, expand **ModernDataLab \> Programmability \> Stored Procedures** and verify **dbo.GetSimilarProducts** appears. Execute the procedure with different parameters to test functionality.

                65317A - Querying and Analyzing SQL Server 2025

7-32 Module 7: Modern Data: Native JSON and Vector Search

Troubleshooting

    Problem: Error 'Invalid object name' when querying Products or ProductVectors table
     Solution: Verify you are connected to the ModernDataLab database. Check the database dropdown at the top of
     the query window shows 'ModernDataLab'. If not, execute `USE ModernDataLab;` before your query. Alternatively,
     use fully qualified names like `ModernDataLab.dbo.Products`.

     Problem: JSON_VALUE returns NULL for all queries even though JSON data exists
     Solution: Check your JSON path syntax. Ensure you use `$` to represent the root and correct property names with
     proper casing. JSON paths are case-sensitive. Use `SELECT Attributes FROM Products` to view the raw JSON and
     verify property names. Common mistake: using `$.Brand` instead of `$.brand`.

     Problem: Error 'String or binary data would be truncated' when inserting JSON data
     Solution: The Attributes column is defined as NVARCHAR(MAX), but if you copied the column definition incorrectly,
     it might be NVARCHAR(100) or another limited size. Verify with: `SELECT COLUMN_NAME, DATA_TYPE,
     CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Products' AND
     COLUMN_NAME = 'Attributes';` The CHARACTER_MAXIMUM_LENGTH should show -1 (indicating MAX).

     Problem: VECTOR data type is not recognized or VECTOR_DISTANCE function throws an error
     Solution: Verify you are running SQL Server 2025 (version 17) which introduced native vector support. Execute
     `SELECT @@VERSION;` and confirm the version number is 17.x.x. If using an earlier version, vector data types are
     not available. Ensure your database compatibility level is set to 170: `ALTER DATABASE ModernDataLab SET
     COMPATIBILITY_LEVEL = 170;`

     Problem: FOR JSON PATH returns NULL instead of JSON output
     Solution: This occurs when the query returns no rows. Verify your WHERE clause isn't filtering out all results.
     Execute the SELECT portion without the FOR JSON clause first to confirm rows are returned. Also, if any column in
     your SELECT list contains only NULL values across all rows, FOR JSON might behave unexpectedly. Ensure at least
     some columns have data.

     Problem: OPENJSON returns zero rows when parsing the colors array
     Solution: Verify the JSON path is correct. It should be `$.colors` with a dollar sign and dot. Check that the JSON data
     actually contains a colors array by executing: `SELECT JSON_QUERY(Attributes, '$.colors') FROM Products;` If this
     returns NULL, the path is incorrect or the property doesn't exist in your JSON. Also ensure you're using CROSS
     APPLY, not OUTER APPLY, if you want to exclude products without colors.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-33

      Common Student Errors
     Students insert invalid JSON and expect it to work with native JSON type.
     Show them the SQL Server error message. Clarify that native JSON enforces validation immediately. Help them
     either fix the JSON or use NVARCHAR if they truly need to store malformed data (not recommended).
     Using JSON_VALUE on an array or JSON_QUERY expecting a scalar return type.
     Remind them: JSON_VALUE extracts scalars; JSON_QUERY extracts JSON (objects/arrays). If they use JSON_VALUE on
     an array, it returns NULL. Demonstrate both functions on the same document.
     OPENJSON WITH clause has incorrect or missing column mappings.
     Help them inspect the actual JSON structure (pretty-print or use JSON_PRETTY if available). Build the WITH clause
     incrementally: start with 1-2 columns, test, then add more. Use AS JSON for nested structures they're unsure about.
     FOR JSON AUTO produces unexpected nesting due to ambiguous joins.
     Explain that AUTO nesting is based on join order and cardinality. Have them switch to FOR JSON PATH with explicit
     column naming for clarity. Show both outputs side-by-side.
     Vector similarity queries return unexpected results or NULL distances.
     Check that vectors are valid (not NULL, correct dimension). Verify the similarity function syntax and metric choice.
     Remind them that embeddings must be pre-computed and stored; if they uploaded zeros or NaNs, results will be
     meaningless.
     Students attempt to create ANN index without understanding prerequisites.
     Clarify that ANN indexes have specific requirements (vector dimension, metric type). First, ensure data is clean and
     vectors are populated. Then show the CREATE INDEX syntax for VECTOR columns.

Challenge Exercise

Build a Multi-Criteria Product Search with JSON Filtering and Vector Ranking

Create a comprehensive product search system that combines multiple SQL Server 2025 features: 1. Create a customer preferences table that stores search history as JSON documents including: search terms,

preferred categories, color preferences, price range, and feature requirements 2. Insert at least 3 sample customer preference records with realistic JSON structures 3. Build a search function or stored procedure that:

        Accepts a CustomerID parameter
         Retrieves that customer's preferences from JSON
         Filters products based on JSON attributes (category, colors, price range)
         Uses OPENJSON to expand arrays for matching
         Converts the customer's text preferences into a feature vector (you can create a simple mapping logic)
         Ranks remaining products by vector similarity
         Returns the top 5 recommendations as JSON output using FOR JSON

                                                         65317A - Querying and Analyzing SQL Server 2025

7-34 Module 7: Modern Data: Native JSON and Vector Search 4. Test your solution with different customer profiles and verify that: JSON attribute filtering works correctly Vector similarity ranking produces logical results The output JSON is properly structured Products that don’t match JSON criteria are excluded even if they have high vector similarity 5. Add error handling for invalid CustomerIDs and malformed JSON data

Bonus: Create a SQL Server Agent job (or show the T-SQL script) that would update product vectors nightly based on customer interaction data stored in a separate CustomerActivity table. Document your solution with comments explaining the logic, and include sample execution results showing the complete recommendation flow from customer preferences to ranked products.

      Hints: Challenge 1 (JSON): Ask students to write a query that parses a JSON array of orders using OPENJSON,
     calculates total order value, and returns results grouped by customer. Hint: Use OPENJSON with a nested call for
     line items, JOIN back to the original table, GROUP BY customer. Challenge 2 (Vector Search): Provide a sample query
     vector (embedded customer search term) and ask them to find top-5 most similar products, then enrich results
     with JSON metadata. Hint: Use VECTOR_SIMILARITY,

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-35

Answer Key

1.  Which SQL Server function is used to validate whether text content is properly formatted JSON?

    1)  ISJSON
    2)  JSON_VALID
    3)  VALIDATE_JSON
    4)  CHECK_JSON

    Answer: A ISJSON is the correct function. It returns 1 if the text is valid JSON and 0 if it is invalid. The other function names do not exist in SQL Server.

2.  You need to extract the value of the ‘email’ property from a JSON document stored in a column named UserProfile. Which function should you use?

    1)  JSON_QUERY(UserProfile, ‘\$.email’)
    2)  JSON_VALUE(UserProfile, ‘\$.email’)
    3)  JSON_EXTRACT(UserProfile, ‘\$.email’)
    4)  OPENJSON(UserProfile, ‘\$.email’)

    Answer: B JSON_VALUE is used to extract scalar values (strings, numbers, Booleans) from JSON. JSON_QUERY retrieves objects or arrays, not scalar values. JSON_EXTRACT does not exist in SQL Server, and OPENJSON is used to parse JSON into rowsets, not extract single values.

3.  What does the following JSON path expression represent: ‘\$.address.city’?

    1)  The root element named ‘address.city’
    2)  The ‘city’ property nested inside the ‘address’ object
    3)  An array index accessing the city value
    4)  A function call to retrieve city data

    Answer: B The dot notation in JSON path expressions navigates nested objects. ’$`.address.city' accesses the 'city' property within the
      'address' object at the root level (`$).

4.  Which function converts a JSON array into a relational rowset that can be queried like a table?

    1)  JSON_TABLE

                                                          65317A - Querying and Analyzing SQL Server 2025

        7-36 Module 7: Modern Data: Native JSON and Vector Search

    2)  JSON_PARSE

    3)  OPENJSON

    4)  JSON_ARRAY Answer: C OPENJSON converts JSON arrays and objects into rowsets with columns. The WITH clause allows you to define the output schema. JSON_TABLE and JSON_PARSE do not exist in SQL Server, and JSON_ARRAY is not a valid function name.

5.  You want to update the ‘price’ property in a JSON document from 99.99 to 89.99. Which function should you use?

    1)  JSON_UPDATE
    2)  JSON_MODIFY
    3)  JSON_SET
    4)  UPDATE_JSON Answer: B JSON_MODIFY is the correct function for updating, inserting, or deleting properties in JSON documents. The other function names do not exist in SQL Server.

6.  Which FOR JSON clause automatically generates JSON output based on the structure of the query and table relationships?

    1)  FOR JSON PATH
    2)  FOR JSON AUTO
    3)  FOR JSON EXPLICIT
    4)  FOR JSON RAW Answer: B FOR JSON AUTO automatically generates JSON based on SELECT statement structure and JOIN relationships. FOR JSON PATH requires explicit property naming for precise control. EXPLICIT and RAW are XML formatting options, not JSON.

7.  In SQL Server 2025 (version 17), what data type is used to store vector embeddings?

    1)  FLOAT ARRAY

    2)  VECTOR(n)

    3)  EMBEDDING(n)

    4)  NUMARRAY(n)

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 7: Modern Data: Native JSON and Vector Search 7-37

    Answer: B VECTOR(n) is the native data type introduced in SQL Server 2025 (version 17) for storing n-dimensional vector embeddings. The other data type names do not exist in SQL Server.

8.  Which similarity measure is most commonly used for comparing text embeddings in vector search?

    1)  Euclidean distance
    2)  Manhattan distance
    3)  Cosine similarity
    4)  Hamming distance

    Answer: C Cosine similarity measures the angle between vectors and is the standard choice for text embeddings because it focuses on direction rather than magnitude. Euclidean distance is also used but less commonly for text. Manhattan and Hamming distances are less suitable for high-dimensional embeddings.

9.  What is the primary advantage of storing JSON data in SQL Server instead of using a separate NoSQL database?

    1)  JSON data can only be stored in SQL Server
    2)  Unified data management with ACID transactions and enterprise security
    3)  SQL Server JSON storage is always faster than NoSQL databases
    4)  JSON in SQL Server does not require any validation

    Answer: B The key advantage is unified data management–you can work with both relational and JSON data in the same database while maintaining ACID transactions, referential integrity, and security features. NoSQL databases can also store JSON, performance depends on workload, and SQL Server supports JSON validation with ISJSON.

10. When using OPENJSON with a WITH clause, what does the WITH clause define?

    1)  The source table containing the JSON data
    2)  The output schema mapping JSON properties to typed columns
    3)  The index to use for optimizing the query
    4)  The error handling behavior for invalid JSON

    Answer: B The WITH clause in OPENJSON defines the output schema by mapping JSON properties to column names and data types, allowing you to shape the resulting rowset. It does not specify source tables, indexes, or error handling.

                                                         65317A - Querying and Analyzing SQL Server 2025

    7-38 Module 7: Modern Data: Native JSON and Vector Search

Module Summary

This module explored SQL Server 2025 (version 17) native capabilities for modern data formats. You learned to store and validate JSON using ISJSON, extract values with JSON_VALUE and JSON_QUERY, parse arrays with OPENJSON, and modify documents using JSON_MODIFY. You also discovered how to generate JSON output with FOR JSON PATH and FOR JSON AUTO. Finally, you examined vector search capabilities, including the VECTOR data type and similarity functions for AI-powered semantic search and recommendations.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-39

Day 2 Capstone Lab: GlobalMed Patient Care Analytics Platform Migration

Estimated Time: 240 minutes Platform: azure_portal

     Reference: If you need step-by-step detail on any individual skill, refer to the lab guides from this morning's
     modules.

Skills Integration

INNER JOIN and OUTER JOIN operations across multiple tables Self-joins for hierarchical relationships Correlated and non-correlated subqueries Common Table Expressions for recursive hierarchies Window functions (ROW_NUMBER, RANK, LAG, LEAD) Aggregate window functions with PARTITION BY JSON data querying and modification Vector similarity search implementation

Scenario Briefing

Scenario Briefing

GlobalMed Healthcare Systems is consolidating patient care data from three regional clinics into a unified SQL Server 2025 analytics platform hosted in Azure. You have been assigned as the database analyst responsible for delivering the initial analytics framework. The legacy systems have been migrated into separate schemas (NorthClinic, EastClinic, WestClinic) within the GlobalMedAnalytics database. Leadership requires: 1. Unified Patient Journey Analysis: Track patient visits across all three clinics, identifying continuity of care

patterns and referral networks between physicians 2. Clinical Performance Metrics: Rank physicians by specialty based on patient volume, treatment duration, and

patient satisfaction scores, with period-over-period comparisons 3. Treatment Protocol Intelligence: The research division has stored treatment protocols as JSON documents and

needs similarity matching between patient symptom vectors and historical successful treatment vectors to recommend evidence-based care pathways

                                                        65317A - Querying and Analyzing SQL Server 2025

7-40 Module 7: Modern Data: Native JSON and Vector Search

4.  Hierarchical Reporting: The physician directory uses a manager-subordinate structure across specialties that must be queryable for organizational reporting

All deliverables must be production-ready queries that the analytics team can schedule as automated reports. The clinical operations director will review your work in four hours.

Desired End State

Desired End State

You will deliver a documented SQL script file containing the following production-ready query solutions:

1.  Cross-Clinic Patient Journey Report

A query that shows each patient’s complete visit history across all three clinic schemas, including: Patient demographic information (name, date of birth, primary clinic) Chronological visit sequence with visit date, clinic location, attending physician name and specialty Referral chain tracking (which physician referred to which physician, across clinics) Total visit count and days between first and most recent visit

2.  Physician Performance Dashboard

A comprehensive analytical query that produces: Physician rankings within each specialty based on total patients treated (current quarter) Patient volume comparison against the previous quarter using offset functions Running total of patients treated year-to-date for each physician Patient satisfaction score percentile ranking within specialty Identification of the top 3 physicians per specialty by composite performance metrics

3.  Hierarchical Physician Directory

A recursive query that: Displays the complete physician organizational hierarchy (department heads, section chiefs, attending physicians, residents) Shows reporting chain depth for each physician Calculates aggregate patient volume rolled up through the management hierarchy Formats output showing indented hierarchy levels

4.  Treatment Protocol Recommendation Engine

Queries utilizing JSON and vector search capabilities: Extract and analyze treatment protocols stored in JSON format (protocol name, medication list, success rate, contraindications)

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 7: Modern Data: Native JSON and Vector Search 7-41

Modify JSON documents to add new treatment outcome data Perform vector similarity searches between incoming patient symptom vectors and the treatment protocol knowledge base (minimum 15 historical protocol vectors) Return the top 5 most similar treatment protocols with similarity scores for a given patient symptom profile Combine vector search results with patient history using joins to exclude protocols with documented contraindications for specific patients

5.  Integrated Executive Summary

A final query combining multiple techniques: Use CTEs to prepare intermediate datasets from requirements 1-4 Join patient journey data with physician performance metrics Include JSON-formatted output showing recommended protocols per patient visit Apply window functions to identify trends across the integrated dataset

Deliverable Format: Single .sql file with clear section headers, comments explaining business logic, and query results that can be consumed by Power BI or Excel for visualization.

Constraints

You must query across three separate schemas (NorthClinic, EastClinic, WestClinic) with identical table structures but independent data Patient identifiers are not consistent across clinics; matching must use SSN (Social Security Number) stored in the Person table The physician hierarchy is stored in a PhysicianDirectory table with EmployeeID and ManagerID columns; some physicians report to managers in different clinics Treatment protocols are stored in a ProtocolLibrary table with a JSON column named ProtocolDetails and a VECTOR column named SymptomVector (1536 dimensions) Patient visit dates span 2023-2025; your performance comparisons must use Q4 2024 vs Q3 2024 Vector similarity searches must use VECTOR_DISTANCE function with cosine similarity All patient satisfaction scores are on a 1-10 scale stored in the VisitFeedback table You cannot create new tables, indexes, or stored procedures; deliver queries only Assume the GlobalMedAnalytics database is already restored and accessible in your Azure SQL Server instance Physician specialties include: Cardiology, Orthopedics, Neurology, Pediatrics, Internal Medicine

                                                        65317A - Querying and Analyzing SQL Server 2025

7-42 Module 7: Modern Data: Native JSON and Vector Search

      Capstone Lab -- Instructor Notes
     Scenario Rationale: This healthcare analytics scenario requires students to synthesize all Day 2 skills in a realistic
     business context distinct from the retail/AdventureWorks environments used in morning labs. The multi-schema
     clinic structure forces sophisticated join strategies, the physician hierarchy demands recursive CTEs, performance
     metrics require complex window functions, and the protocol recommendation system integrates JSON and vector
     search with relational data.
     Skill Integration:

          JOIN operations: Students must combine data across three clinic schemas using INNER/OUTER joins on non-
          identical patient identifiers, join physician hierarchies across schemas, and link visits to physicians and feedback
          tables
          Self-joins and CTEs: The physician hierarchy requires recursive CTEs for organizational depth, and self-joins
          identify referral chains between physicians within and across clinics
          Subqueries: Correlated subqueries needed for comparative metrics (current vs previous quarter), filtering
          patients by protocol contraindications, and identifying top performers per specialty
          Window functions: ROW_NUMBER for ranking physicians, RANK/DENSE_RANK for performance tiers, LAG/LEAD
          for period-over-period comparisons, running totals via SUM() OVER for year-to-date volumes, PARTITION BY for
          specialty-specific analytics
          JSON operations: Query ProtocolDetails JSON for medications and success rates, use JSON_MODIFY to add
          outcome data, FOR JSON to format final output for executive summary
          Vector search: VECTOR_DISTANCE for symptom-to-protocol similarity matching, combining vector results with
          relational contraindication data via joins
     Afternoon Session Facilitation: Begin the afternoon with a 5-10 minute Q&A where you present the GlobalMed
     scenario and desired end state. Ask students: 'What's the first query you'd write and why?' Let 2-3 students share
     their approach to expose different valid strategies. Emphasize there's no single correct sequence--this tests their
     ability to decompose a complex requirement. Circulate during the session to observe whether students are: (1)
     attempting to solve all requirements in one massive query vs. building incrementally, (2) testing intermediate
     results, (3) using CTEs to organize logic. Common struggles: joining across schemas with non-identical keys (remind
     them of the SSN constraint), recursive CTE syntax for hierarchy, and combining vector search results with relational
     filters. If students finish early, challenge them to optimize query performance or add additional analytical
     dimensions (e.g., cost analysis, readmission rates). Debrief by having 1-2 students present their executive summary
     query, discussing design choices.

                                                         65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

             Module 8: Analyzing Execution Plans with AI

                                                           65317A
                                   3-day course ? 10 modules ? beginner level

Contents

Module 8: Analyzing Execution Plans with AI

Lesson 1: Understanding Execution Plans and Query Optimization Lesson 2: Generating Execution Plans in SSMS 22 Lesson 3: Reading Execution Plans: Operators and Flow Lesson 4: Scan vs. Seek: Understanding Data Access Patterns Lesson 5: Performance Metrics: SET STATISTICS IO and TIME Lesson 6: AI-Powered Execution Plan Analysis in SSMS 22 Lab: Analyzing Execution Plans with AI-Powered Tools Answer Key Module Summary  Module 8: Analyzing Execution Plans with AI 8-1

Learning Objectives

After completing this module, you will be able to: Generate and interpret graphical execution plans in SSMS 22 Analyze query performance using SET STATISTICS IO and SET STATISTICS TIME Use AI-powered tools to interpret execution plan recommendations Identify expensive operators and resource consumption patterns

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                  65317A - Querying and Analyzing SQL Server 2025

8-2 Module 8: Analyzing Execution Plans with AI

      Module Overview
     This module teaches students to generate, interpret, and optimize SQL queries using execution
     plans and AI-powered analysis tools in SSMS 22. Students will move from understanding
     execution plan basics through reading operators, comparing data access patterns, and leveraging
     AI recommendations. Total estimated delivery time: 240 minutes (4 hours).

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-3

Lesson 1: Understanding Execution Plans and Query Optimization

      Estimated Time: 30 minutes

Understanding Execution Plans and Query Optimization

Execution plans are the roadmap SQL Server uses to retrieve your data. When you submit a query, the database engine doesn’t execute it blindly–it creates a detailed plan of action that determines the most efficient way to access tables, join data, and filter results. Think of an execution plan as a GPS navigation route. Just as GPS evaluates multiple routes considering traffic, distance, and road conditions, SQL Server’s Query Optimizer evaluates different execution strategies and chooses the path with the lowest estimated cost. This cost-based optimization considers factors like:

Available indexes that can speed up data access Table statistics that estimate row counts and data distribution Join algorithms (nested loops, merge joins, hash joins) Memory and CPU resources available for the operation Execution plans come in two varieties: estimated plans show what the optimizer intends to do before execution based on statistics, while actual plans capture what really happened during query execution, including actual row counts and real resource consumption. Estimated plans are fast to generate but may not reflect reality if statistics are outdated. Actual plans provide truth but require query execution.

Why Execution Plans Matter

A query that returns the same results can perform drastically differently depending on its execution plan. A well-optimized plan might complete in milliseconds, while a poorly optimized one could take minutes or even hours. Understanding execution plans transforms you from someone who writes queries to someone who writes efficient queries.

                                                        65317A - Querying and Analyzing SQL Server 2025

8-4 Module 8: Analyzing Execution Plans with AI

In SSMS 22, AI-powered features now help interpret these plans, making performance tuning accessible even to developers who are just beginning their optimization journey.

Illustration showing a GPS navigation system with multiple route options, each labeled with different costs and metrics, paralleling how SQL Server’s Query Optimizer evaluates execution strategies

    Key Takeaways
          Execution plans show SQL Server's strategy for retrieving data
          The Query Optimizer evaluates multiple strategies and chooses the lowest-cost option
          Estimated plans predict behavior; actual plans capture real execution metrics
          Understanding plans is essential for writing efficient queries

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-5

Instructor Notes Talking Points:

Execution plans are the database engine’s roadmap for retrieving data–emphasize this as a diagnostic tool, not just a performance metric Distinguish between estimated and actual plans; actual plans show what truly happened during execution Explain the cost percentage shown in SSMS: a 0.02% operator might still be a bottleneck if it’s the final output step Connect to real-world scenarios: a query running in 30 seconds in development might run in 3 seconds with proper indexes based on plan analysis Demo Suggestion: Live demo: Open SSMS, show how to toggle ‘Include Actual Execution Plan’ (Ctrl+Alt+A), run a simple SELECT with a WHERE clause, and display the graphical execution plan. Point out the flow direction (right-to-left, bottom-to-top) and highlight the cost percentage of the most expensive operator. Common Student Questions: Q: Why does my estimated plan look different from my actual plan? A: Estimated plans are based on table statistics; actual plans reflect real data and runtime conditions. Parameter sniffing, data changes, or stale statistics can cause differences. This is why actual plans are more valuable for troubleshooting. Q: If an operator shows 0.001% cost, should I optimize it? A: Probably not–focus on operators consuming the most resources (typically \>10-15% cost). However, if it’s a Spill to Disk or Hash Spill warning, investigate even for small percentages. Q: Can I use execution plans on very large queries? A: Yes, but be cautious running actual plans in production–they consume resources. Use estimated plans first, or run during maintenance windows.

                                                  65317A - Querying and Analyzing SQL Server 2025

8-6 Module 8: Analyzing Execution Plans with AI

Lesson 2: Generating Execution Plans in SSMS 22

      Estimated Time: 25 minutes

Generating Execution Plans in SSMS 22

SQL Server Management Studio 22 provides intuitive tools for generating and viewing execution plans. Understanding when to use each type of plan is crucial for effective performance analysis.

Estimated Execution Plans

Estimated plans show the optimizer’s intended strategy without executing the query. This is invaluable when analyzing potentially long-running queries–you can see the plan without waiting for completion. To generate an estimated plan: 1. Write your query in a query window 2. Click the Display Estimated Execution Plan button (or press Ctrl+L ) 3. View the graphical plan in the execution plan tab Estimated plans use statistics to predict row counts and costs. They’re perfect for initial analysis, but remember: estimates aren’t always accurate, especially with outdated statistics or parameter sniffing issues.

Actual Execution Plans

Actual plans capture real execution metrics including actual row counts, actual execution time, and resource consumption. They provide the truth about what really happened. To generate an actual plan: 1. Click Include Actual Execution Plan (or press Ctrl+M ) before executing 2. Execute your query normally (F5) 3. After completion, switch to the Execution plan tab Actual plans reveal discrepancies between estimates and reality. When the optimizer’s estimated row count differs significantly from actual rows, you’ve found a clue about why performance might

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-7

suffer.

Best Practices

Start with estimated plans for quick analysis, then use actual plans to verify behavior. For production systems, always test with representative data volumes–execution plans can vary dramatically based on data size and distribution.

Illustration of a modern workspace showing a developer at a computer with SSMS interface, with visual emphasis on the execution plan toolbar buttons and the workflow of generating plans

    Key Takeaways
         Estimated plans show optimizer strategy without executing the query
         Actual plans capture real execution metrics and resource usage
         Use Ctrl+L for estimated plans, Ctrl+M to include actual plans
         Compare estimated vs. actual row counts to identify optimization issues

                                                         65317A - Querying and Analyzing SQL Server 2025

8-8 Module 8: Analyzing Execution Plans with AI

      Instructor Notes
     Talking Points:

          SSMS 22 has improved execution plan visualization--darker colors indicate higher costs,
          making visual scanning easier
          Multiple methods to capture plans: Ctrl+Alt+A (toggle), Query > Include Actual Execution Plan,
          or right-click in query editor
          Execution Plan Display option: Students can choose between single plan view, side-by-side
          comparison, or tabbed views for batch queries
          Show statistics pane at bottom of plan--this displays I/O, CPU, and memory information
          directly from the plan
     Demo Suggestion: Demo 1: Generate an execution plan for a query with JOIN. Demo 2: Show the
     statistics pane and explain estimated vs. actual row counts. Demo 3: Run a batch of 3-4
     statements and show how SSMS displays multiple plans in tabs.
     Common Student Questions:
     Q: What's the difference between 'Include Actual Execution Plan' and 'Include Live Query Statistics'?
     A: Actual plans show the complete execution after queries finish; Live Query Statistics stream
     data in real-time as the query executes. Live Statistics are better for long-running queries to
     understand where time is spent.
     Q: Why does including the execution plan slow down my query?
     A: There's minimal overhead from collecting actual plans in modern SSMS. The slowdown you
     perceive is likely from running the query; the plan itself doesn't cause delays.
     Q: Can I save and compare execution plans?
     A: Yes--right-click the execution plan and select 'Save Execution Plan As' (.sqlplan file). You can
     open and compare multiple plans side-by-side in SSMS 22.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-9

Lesson 3: Reading Execution Plans: Operators and Flow

      Estimated Time: 40 minutes

Reading Execution Plans: Operators and Flow

Execution plans display as graphical flowcharts, reading from right to left. Data flows from the rightmost operators (data sources) through transformation operators, ultimately producing results at the leftmost SELECT operator.

Understanding Operator Icons

Each icon in the execution plan represents a physical operation: Table Scan (table icon): Reads every row in a table–often the slowest operation Index Scan (index icon with arrows): Reads all rows in an index Index Seek (index icon with arrow pointing): Efficiently locates specific rows using index Nested Loops (circular arrows): Join method that iterates for each row Hash Match (grid icon): Join method that builds hash table for matching Sort (up/down arrows): Orders data, often consuming memory Filter (funnel icon): Applies WHERE clause conditions

Analyzing Operator Costs

Each operator displays a cost percentage representing its relative expense within the query. Hover over any operator to see detailed metrics:

Estimated Operator Cost: Relative expense of this operation Estimated Number of Rows: How many rows the optimizer expects Actual Number of Rows: How many rows actually processed (in actual plans) Estimated Subtree Cost: Cumulative cost including this operator and everything to its right Operators consuming 30% or more of total cost deserve investigation. However, don’t optimize blindly based on percentages alone–sometimes a high-cost operator is unavoidable with current schema and indexing.

                                                        65317A - Querying and Analyzing SQL Server 2025

8-10 Module 8: Analyzing Execution Plans with AI

Following the Data Flow

Trace data flow by starting at the rightmost operators (your tables) and following arrows leftward. Thick arrows indicate high row counts flowing between operators–potential bottlenecks worth investigating.

Illustration showing a stylized factory assembly line with workers and machinery processing items from right to left, with visual indicators of cost and efficiency at each station, representing execution plan operator flow

    Key Takeaways
          Execution plans read right to left, showing data flow from source to result
          Each operator icon represents a specific physical operation
          Operator cost percentages identify the most expensive operations
          Thick arrows between operators indicate high row counts and potential bottlenecks

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-11

Instructor Notes Talking Points:

Execution plans flow right-to-left and bottom-to-top: operators at the top are the final output step Key operators students must recognize: Table Scan, Index Seek, Nested Loop Join, Hash Match (Join), Sort, Filter, Compute Scalar Hover over any operator to see: Logical Read Count, Physical Reads, CPU, Duration, Actual vs. Estimated row counts Arrow thickness between operators indicates row count flow–thicker arrows = more rows passing through Cost percentage is relative to the entire query, not absolute; a 50% operator in a slow query is still slow Demo Suggestion: Demo: Show a query with multiple operators (Scan Filter Join Sort). Point to each operator and explain what it does. Hover over operators to show the statistics tooltip. Highlight a thick arrow between operators and explain the row flow. Show an example where estimated rows (10,000) differ from actual rows (100,000)–this indicates a statistics problem. Common Student Questions: Q: What does the exclamation mark icon on an operator mean? A: It indicates a warning or issue–common ones are ‘Spill to Disk’ (sort/hash unable to fit in memory), ‘Unmatched Indexes’, or ‘Missing Statistics’. Click the icon for details. Q: Which operators should I always try to avoid? A: Focus on avoiding Table Scan (if you have indexes), Sort with Spill warnings, and Hash Spill. Nested Loop with 100K+ rows is also suspicious–a Hash Match might be more efficient. Q: Why do I see ‘Predicate’ and ‘Seek Predicate’ in the tooltip? A: Seek Predicate is applied when reading the index (before rows are returned); Predicate is applied after (on returned rows). Seek Predicates are more efficient because they filter before returning data.

                                                  65317A - Querying and Analyzing SQL Server 2025

8-12 Module 8: Analyzing Execution Plans with AI

Lesson 4: Scan vs. Seek: Understanding Data Access Patterns

      Estimated Time: 35 minutes

Scan vs. Seek: Understanding Data Access Patterns

One of the most critical distinctions in execution plan analysis is understanding the difference between scans and seeks. This difference often separates fast queries from slow ones.

Table Scans and Index Scans

A scan operation reads through data sequentially, examining every row or index entry. Think of it like searching for a specific book by walking through every aisle of a library and checking every shelf. Table Scan: Reads every row in the entire table, even if only a few rows are needed. This is necessary when:

No indexes exist on the table The query returns most/all rows anyway The optimizer determines a scan is more efficient than multiple seeks Index Scan: Reads through an entire index. While faster than table scans (indexes are smaller), it still processes more data than necessary when you need only a few rows. Scans aren’t inherently bad–when retrieving large percentages of rows, scanning can actually be more efficient than seeking repeatedly.

Index Seeks

An Index Seek operation uses an index’s B-tree structure to jump directly to specific rows, like using a library’s card catalog to find exactly where your book is located. Seeks are highly efficient because they:

Avoid reading unnecessary data Leverage index organization for fast lookups

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-13

Scale well as table size grows For queries returning small percentages of rows (typically under 10-20%), seeks dramatically outperform scans.

When to Optimize

If you see Table Scan or Index Scan operations consuming significant cost percentages, investigate whether:

Adding an index would enable seeks Existing indexes aren’t being used due to functions in WHERE clauses Statistics are outdated, causing poor optimizer decisions The transformation from scan to seek often delivers the most dramatic performance improvements.

Side-by-side comparison illustration showing a person searching through a disorganized warehouse shelf-by-shelf versus using an organized filing system with direct access, representing scan versus seek operations

    Key Takeaways
         Scans read through data sequentially; seeks jump directly to needed rows using indexes
         Table scans read every row; index scans read entire indexes
         Seeks are efficient for small result sets; scans can be better for large result sets
         Converting scans to seeks through proper indexing often yields dramatic performance gains

                                                         65317A - Querying and Analyzing SQL Server 2025

8-14 Module 8: Analyzing Execution Plans with AI

      Instructor Notes
     Talking Points:

          Index Seek is almost always better than Table Scan--Seek jumps directly to needed data, Scan
          reads every row
          However, a Table Scan is sometimes optimal: if querying 40% of a table, the I/O cost of Seek +
          Lookups may exceed a single Scan
          Key metrics: Logical Reads (in statistics). A Scan of 10K pages vs. Seek using 50 pages--Seek
          wins dramatically
          Clustered Index Scan vs. Index Seek: Clustered Index Scan reads the entire table; still
          preferable to a non-clustered Scan if no better option exists
          Explain Key Lookup operator--appears after non-clustered Index Seek to fetch columns not in
          the index. Many Lookups = missing columns in the index (consider index hints)
     Demo Suggestion: Demo 1: Create a simple table and index. Run a query with WHERE on the
     indexed column and show Index Seek. Demo 2: Run the same table with an OR condition or
     WHERE on a non-indexed column; show Table Scan appearing. Demo 3: Show a query with Key
     Lookup and explain why--then suggest adding columns to the index (INCLUDE clause) and rerun
     to show Seek-only plan.
     Common Student Questions:
     Q: My query shows a Table Scan, but I have an index on the WHERE column. Why?
     A: Common causes: (1) WHERE clause uses a function (e.g., WHERE YEAR(DateColumn) = 2024)--
     non-sargable predicates prevent Seek; (2) Outdated statistics; (3) Index is disabled; (4) Cardinality
     is low and Scan is actually cheaper. Check statistics with DBCC SHOW_STATISTICS.
     Q: Is a Key Lookup always bad?
     A: Not necessarily. If the lookup count is low (hundreds) it's fine. But if it's 100K+ lookups, the I/O
     adds up. Consider adding INCLUDE columns to the index to cover the query without Lookups.
     Q: How do I force a Seek instead of Scan?
     A: Use a query hint like WITH (NOLOCK) or (INDEX=IndexName) but avoid this as a permanent fix.
     Better approach: rewrite the query or improve statistics. Hints hide the real problem.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-15

Lesson 5: Performance Metrics: SET STATISTICS IO and TIME

      Estimated Time: 30 minutes

Performance Metrics: SET STATISTICS IO and TIME

While graphical execution plans show operator flow and relative costs, two powerful T-SQL commands reveal precise resource consumption: SET STATISTICS IO and SET STATISTICS TIME.

SET STATISTICS IO: Understanding Disk Activity

This setting displays detailed information about logical and physical reads for each table accessed:

SET STATISTICS IO ON; SELECT \* FROM Sales.Orders WHERE OrderDate \> ‘2024-01-01’; SET STATISTICS IO OFF;

Output shows: Logical reads: Pages read from memory (buffer cache) Physical reads: Pages read from disk Read-ahead reads: Pages read by the read-ahead mechanism Scan count: Number of scans or seeks performed

Lower numbers are better. High logical reads indicate excessive data access. Physical reads (disk I/O) are significantly slower than logical reads (memory access), so queries should ideally show zero physical reads after the first execution (data cached in memory). A single logical read accesses one 8KB page. A query with 100,000 logical reads touches approximately 800MB of data–understanding this scale helps assess query efficiency.

SET STATISTICS TIME: Measuring Execution Duration

This setting reports CPU time and total elapsed time:

                                                        65317A - Querying and Analyzing SQL Server 2025

8-16 Module 8: Analyzing Execution Plans with AI

SET STATISTICS TIME ON; SELECT \* FROM Sales.Orders WHERE OrderDate \> ‘2024-01-01’; SET STATISTICS TIME OFF;

Output shows: CPU time: Actual processing time on the CPU Elapsed time: Total wall-clock time from start to finish

Large differences between CPU and elapsed time indicate waiting–for disk I/O, locks, network transmission, or other resources.

Combining Metrics with Execution Plans

Use these statistics alongside execution plans for comprehensive analysis. While plans show the strategy and relative costs, STATISTICS IO/TIME reveal actual resource consumption in measurable units.

Dashboard-style illustration showing gauges and meters measuring different performance metrics like CPU usage, memory access, and disk I/O, presented as an automobile instrument cluster

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-17

Key Takeaways SET STATISTICS IO reports logical/physical reads and scan counts SET STATISTICS TIME reports CPU time and elapsed time Lower read counts indicate more efficient data access Physical reads (disk I/O) are much slower than logical reads (memory) Combine statistics with execution plans for complete performance analysis

                                                  65317A - Querying and Analyzing SQL Server 2025

8-18 Module 8: Analyzing Execution Plans with AI

      Instructor Notes
     Talking Points:

          SET STATISTICS IO ON shows logical and physical reads--the most concrete metric for I/O
          performance
          Logical Reads = total page accesses; Physical Reads = pages read from disk (not cache). High
          physical reads suggest memory pressure or missing caches
          SET STATISTICS TIME ON shows CPU and elapsed time--elapsed time includes waits (locking,
          blocking), CPU is actual processing
          Use both STATISTICS together: high logical reads + low CPU = I/O bound; low logical reads +
          high CPU = CPU bound
          Always run statistics with STATISTICS IO/TIME OFF between tests to get clean output for the
          next query
     Demo Suggestion: Demo 1: Run a simple query with SET STATISTICS IO ON; show the output
     table with ScanCount, LogicalReads, PhysicalReads, ReadAheadReads. Demo 2: Run the same
     query again--PhysicalReads should drop (cached). Demo 3: Use SET STATISTICS TIME ON; show
     parse, compile, and execution times. Demo 4: Compare two queries (one with Scan, one with
     Seek) and show how logical reads differ dramatically.
     Common Student Questions:
     Q: My query shows 0 PhysicalReads but high LogicalReads. Is it fast?
     A: Yes, data is cached in memory (buffer pool). LogicalReads are still a cost--excessive logical
     reads mean unnecessary pages accessed. Optimize by reducing LogicalReads, not just chasing
     PhysicalReads.
     Q: Why is my elapsed time much higher than CPU time?
     A: The difference is wait time--locking, blocking, network latency, or I/O waits. Investigate
     blocking with sp_who2 or use Extended Events to capture wait types.
     Q: Can I use STATISTICS in production?
     A: Yes, it's very lightweight. However, collect statistics during off-peak or testing. Do not leave
     STATISTICS ON permanently--turn it OFF after troubleshooting.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-19

Lesson 6: AI-Powered Execution Plan Analysis in SSMS 22

      Estimated Time: 40 minutes

AI-Powered Execution Plan Analysis in SSMS 22

SQL Server Management Studio 22 introduces AI-powered features that transform execution plan analysis from a specialized skill into an accessible capability for all developers. These intelligent tools interpret complex plans and provide actionable optimization recommendations.

Intelligent Plan Insights

When viewing an execution plan in SSMS 22, AI analyzes the plan structure and highlights potential issues:

Missing Index Recommendations: AI identifies beneficial indexes, estimating improvement percentage Warning Detection: Automatically spots warnings like implicit conversions, missing statistics, or excessive memory grants Operator Explanations: Plain-English descriptions of what each operator does and why it might be expensive Optimization Suggestions: Context-aware recommendations based on query patterns and data access Instead of manually investigating every operator, AI surfaces the most impactful opportunities first, prioritizing your optimization efforts.

Natural Language Query Analysis

SSMS 22’s AI can explain execution plans in conversational language. Ask questions like: “Why is this query slow?” “What does the Hash Match operator do?” “Should I add the recommended index?”

                                                        65317A - Querying and Analyzing SQL Server 2025

8-20 Module 8: Analyzing Execution Plans with AI

The AI considers your specific query context, data statistics, and execution metrics when formulating responses–going beyond generic explanations to provide tailored guidance.

Learning from AI Recommendations

While AI provides excellent suggestions, understanding the underlying principles remains crucial. Use AI recommendations as learning opportunities: 1. Review the suggested optimization 2. Understand why the AI recommends it 3. Apply the change and compare before/after metrics 4. Build intuition about similar patterns in future queries AI accelerates your learning curve, but developing your own execution plan analysis skills ensures you can troubleshoot effectively in any environment.

Illustration showing a developer working with AI assistance, represented as a helpful advisor pointing out insights on a complex technical diagram, with highlighted areas of concern and improvement suggestions

    Key Takeaways
          SSMS 22 AI automatically identifies performance issues and optimization opportunities
          AI provides plain-English explanations of complex operators and patterns
          Missing index recommendations estimate improvement percentages
          Use AI as a learning tool while developing your own analysis skills

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-21

Instructor Notes Talking Points:

SSMS 22 integrates Copilot (with GitHub Copilot subscription) to analyze execution plans and suggest improvements AI can identify missing indexes, suggest index hints, rewrite queries, and explain operators in plain language Limitations: AI suggestions are not always optimal–always validate on a test server. A suggested index might not align with your workload The AI panel appears to the right of the execution plan. Right-click the plan and select ‘Explain Plan with Copilot’ (requires Copilot extension) Use AI recommendations as a starting point, not a final solution. Combine with manual analysis, statistics, and testing Demo Suggestion: Demo 1: Open an execution plan with a Table Scan in SSMS 22. Click the Copilot icon (if enabled) and show the AI recommendation panel. Demo 2: Have the AI explain an operator–show how it provides readable descriptions. Demo 3: Show a suggested index recommendation from the AI and discuss whether it aligns with the workload. Demo 4: Intentionally show an AI suggestion that might not be optimal (e.g., too many indexes) and explain why you’d reject it. Common Student Questions: Q: Does Copilot in SSMS require a subscription? A: Yes, you need a GitHub Copilot subscription. However, SSMS 22 also has built-in execution plan recommendations (without Copilot) for common issues like missing statistics or expensive operators. Q: Should I always implement the AI’s index suggestions? A: No. Test index suggestions on a development server first. Consider maintenance costs, storage, and overall workload. One suggested index might help one query but slow down others. Q: Can the AI rewrite complex queries? A: It can suggest rewrites, but quality varies. Always manually review and test. The AI is best at identifying *what’s* wrong (expensive operators, missing indexes) rather than perfectly rewriting complex logic.

                                                  65317A - Querying and Analyzing SQL Server 2025

8-22 Module 8: Analyzing Execution Plans with AI

Lab: Analyzing Execution Plans with AI-Powered Tools

Objective: Generate and analyze SQL Server execution plans using SSMS 22, interpret performance statistics, and leverage AI-powered recommendations to optimize query performance Estimated Time: 45 minutes Platform: Azure Portal with Windows Server 2025 VM running SQL Server 2025 and SSMS 22 Prerequisites:

Access to Azure Portal Windows Server 2025 VM with SQL Server 2025 (version 17) installed SQL Server Management Studio 22 installed AdventureWorks2025 sample database restored Basic knowledge of T-SQL SELECT statements

      Lab Facilitation
     Setup: Pre-lab checklist: (1) Provide students with a pre-built database or SQL script to create a
     sample database (AdventureWorks or custom tables with 100K+ rows for realistic execution
     plans). (2) Ensure SSMS 22 is installed with Copilot extension (optional but recommended). (3)
     Create a lab handout with 5-6 poorly optimized queries (includes Table Scans, missing indexes,
     Sort spills). (4) Set up a shared folder with .sqlplan files from your execution plan captures so
     students can open and analyze them. (5) If using Copilot, ensure students have GitHub Copilot
     subscriptions or provide a demo account. (6) Pre-create 2-3 indexes on key tables so students can
     compare Seek plans vs. original Scans.
     Pacing: Allocate 120 minutes total for the lab. (1) First 20 minutes: guided walkthrough--students
     generate execution plans for a provided simple query, identify operators, and read statistics. (2)
     Next 40 minutes: hands-on--students run 5-6 progressively complex queries, generate plans, and
     document LogicalReads and CPU times. (3) Middle 20 minutes: AI analysis--demonstrate Copilot
     recommendations (or built-in recommendations) and have students evaluate 2-3 suggestions. (4)
     Final 40 minutes: challenge exercise (see below). Encourage students to work in pairs; circulate
     frequently to check understanding. If students finish early, assign the challenge or have them
     optimize an additional query from the challenge list.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-23

Procedures

Step 1: Connect to the Azure Portal and start your lab VM

1.  Navigate to https://portal.azure.com

2.  Sign in with your lab credentials

3.  Click Virtual machines in the left navigation menu

4.  Locate your VM named SQL2025-Lab-VM

5.  Click the VM name to open its overview page

6.  Click the Start button in the top toolbar

7.  Wait for the Status to change from Starting to Running (approximately 2-3 minutes)

    Expected Output: VM Status displays ‘Running’ in the overview page

Verification: The Connect button becomes enabled when the VM is fully started

Step 2: Connect to the VM using Remote Desktop

1.  Click the Connect button in the top toolbar

2.  Select RDP from the dropdown menu

3.  Click Download RDP File

4.  Open the downloaded RDP file

5.  Enter the username: sqlAdmin

6.  Enter the password provided in your lab credentials

7.  Click OK to connect

8.  If prompted about certificate warnings, click Yes to continue

    Expected Output: Windows Server 2025 desktop appears with the Server Manager dashboard

Verification: You can see the Windows taskbar and desktop icons

                                                        65317A - Querying and Analyzing SQL Server 2025

8-24 Module 8: Analyzing Execution Plans with AI

Step 3: Launch SQL Server Management Studio 22

1.  Click the Start button

2.  Type SSMS in the search box

3.  Click Microsoft SQL Server Management Studio 22

4.  In the Connect to Server dialog:

         Server type: Database Engine
         Server name: localhost
         Authentication: Windows Authentication

5.  Click Connect

    Expected Output: SSMS 22 opens with Object Explorer showing the localhost server and system databases

Verification: You can expand the Databases node and see AdventureWorks2025 database listed

Step 4: Enable execution plan display and statistics

1.  Click New Query in the toolbar
2.  Ensure the database dropdown shows AdventureWorks2025
3.  In the toolbar, click Query menu
4.  Select Include Actual Execution Plan (or press Ctrl+M)
5.  Verify a checkmark appears next to this menu item
6.  In the query window, type the following commands:

SET STATISTICS IO ON; SET STATISTICS TIME ON;

7.  Click Execute (or press F5)

    Expected Output: Messages tab displays: ‘STATISTICS IO turned ON’ and ‘STATISTICS TIME turned ON’

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 8: Analyzing Execution Plans with AI 8-25

Verification: The Include Actual Execution Plan button in the toolbar appears pressed/highlighted

Step 5: Execute a query with a table scan to analyze

1.  In the same query window, clear previous commands and type:

    USE AdventureWorks2025; GO

    SELECT p.FirstName, p.LastName, e.JobTitle, e.HireDate

    FROM Person.Person p INNER JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID WHERE p.LastName LIKE ‘%son%’;

2.  Click Execute (F5)

3.  Wait for the query to complete

    Expected Output: Results tab shows multiple rows with names ending in ‘son’. Messages tab displays SQL Server parse and compile time, execution time statistics, and logical reads information showing table scans on Person and Employee tables.

Verification: You see three tabs at the bottom: Results, Messages, and Execution plan

Step 6: Examine the graphical execution plan

1.  Click the Execution plan tab at the bottom of the results pane

2.  Observe the data flow from right to left

3.  Hover your mouse over the Clustered Index Scan operator on the Person.Person table

4.  Note the tooltip information:

         Estimated Number of Rows
         Actual Number of Rows
         Estimated Operator Cost
         Estimated Subtree Cost

                                                         65317A - Querying and Analyzing SQL Server 2025

    8-26 Module 8: Analyzing Execution Plans with AI

5.  Identify the operator with the highest cost percentage (shown in bold)

6.  Look at the thickness of the arrows between operators (thicker = more rows)

    Expected Output: Execution plan displays graphically with icons representing Clustered Index Scan, Hash Match (Inner Join), and SELECT operators. The Clustered Index Scan on Person.Person typically shows the highest cost percentage (approximately 50-60%).

Verification: Hovering over any operator displays a detailed tooltip with row counts and cost metrics

Step 7: Analyze IO statistics in the Messages tab

1.  Click the Messages tab

2.  Scroll to locate the STATISTICS IO output

3.  Find the line starting with Table ‘Person’

4.  Record these values:

         Scan count
         Logical reads
         Physical reads
         Read-ahead reads

5.  Repeat for the Table ‘Employee’ line

6.  Compare the logical reads between the two tables

    Expected Output: Messages tab shows output similar to:

         Table 'Employee'. Scan count 1, logical reads 8, physical reads 0, read-ahead reads 0.
         Table 'Person'. Scan count 1, logical reads 155, physical reads 0, read-ahead reads 0.

    The Person table shows significantly more logical reads due to its larger size.

Verification: Logical reads for Person table are substantially higher than Employee table

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-27

Step 8: Use AI-powered execution plan analysis

1.  Return to the Execution plan tab

2.  Right-click anywhere in the execution plan area

3.  Select Analyze Execution Plan with Copilot from the context menu

4.  Wait for the Copilot pane to appear on the right side of SSMS

5.  Review the AI-generated analysis, which includes:

         Summary of plan characteristics
         Identified performance issues
         Specific recommendations for optimization

6.  Look for recommendations about missing indexes or expensive operations Expected Output: Copilot pane displays on the right side with analysis text. The AI identifies the LIKE operator with wildcard at the beginning (‘%son%’) as causing a table scan and may recommend creating a full- text index or restructuring the query. It highlights that the Person table scan is the most expensive operation.

Verification: Copilot pane shows specific, actionable recommendations with explanations

Step 9: Compare execution plans with an optimized query

1.  Open a new query window (Ctrl+N)

2.  Ensure Include Actual Execution Plan is still enabled

3.  Type the following optimized query that avoids the leading wildcard:

                                                         65317A - Querying and Analyzing SQL Server 2025

    8-28 Module 8: Analyzing Execution Plans with AI

SET STATISTICS IO ON; SET STATISTICS TIME ON; GO SELECT

     p.FirstName,
      p.LastName,
      e.JobTitle,
      e.HireDate

FROM Person.Person p INNER JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID WHERE p.LastName LIKE ‘Son%’;

4.  Execute the query (F5)

5.  Click the Execution plan tab

6.  Compare the operator types and costs with the previous query

    Expected Output: Execution plan may still show a Clustered Index Scan but with different costs. The Messages tab shows significantly fewer logical reads for the Person table (approximately 8-15 reads instead of 155). Results return fewer rows since we’re looking for names starting with ‘Son’ instead of containing ‘son’.

Verification: Logical reads in the Messages tab are substantially lower than the previous query

Step 10: Identify Index Seek vs. Index Scan operations

1.  Create a new query window

2.  Enable execution plan if not already enabled

3.  Execute this query that uses an equality predicate:

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 8: Analyzing Execution Plans with AI 8-29

SET STATISTICS IO ON; GO SELECT

     p.FirstName,
      p.LastName,
      e.JobTitle

FROM Person.Person p INNER JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID WHERE e.BusinessEntityID = 5;

4.  View the execution plan

5.  Identify the Clustered Index Seek operator on the Employee table

6.  Hover over it to see the seek predicates

7.  Compare this with the scan operations from previous queries

    Expected Output: Execution plan shows a Clustered Index Seek operator with a very low cost (typically under 5%). The seek predicate shows \[e\].\[BusinessEntityID\]=(5) . Logical reads for Employee table show only 2-3 reads. Results return a single employee record.

Verification: The operator specifically says ‘Seek’ not ‘Scan’ and shows seek predicates in the tooltip

Step 11: Analyze join operator selection

1.  Create a new query window

2.  Execute this query that joins larger result sets:

                                                         65317A - Querying and Analyzing SQL Server 2025

    8-30 Module 8: Analyzing Execution Plans with AI

SET STATISTICS IO ON; SET STATISTICS TIME ON; GO

SELECT p.FirstName, p.LastName, a.AddressLine1, a.City

FROM Person.Person p INNER JOIN Person.BusinessEntityAddress bea ON p.BusinessEntityID = bea.BusinessEntityID INNER JOIN Person.Address a ON bea.AddressID = a.AddressID WHERE a.City = ‘Seattle’;

3.  Examine the execution plan

4.  Identify the join operators used (Hash Match, Nested Loops, or Merge Join)

5.  Hover over each join operator to see:

         Join type
         Estimated vs. actual rows
         Memory grant information (for Hash Match)

    Expected Output: Execution plan shows multiple join operators. Typically displays Hash Match joins for the larger result sets. The plan flows right-to-left showing the build and probe phases of hash joins. Messages tab shows logical reads from three tables: Person, BusinessEntityAddress, and Address.

Verification: You can identify at least two join operators in the plan with their specific types labeled

Step 12: Save and compare multiple execution plans

1.  In the execution plan tab from the previous query, right-click in the plan area

2.  Select Save Execution Plan As…

3.  Navigate to C:(create the folder if needed)

4.  Save the file as Seattle_Query.sqlplan

5.  Go back to the query window from Step 5 (the LIKE query)

6.  Re-execute that query if needed

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 8: Analyzing Execution Plans with AI 8-31

7.  Save its execution plan as Like_Query.sqlplan

8.  In SSMS, click File \> Open \> File

9.  Hold Ctrl and select both .sqlplan files

10. Click Open

11. Both plans open in separate tabs for side-by-side comparison

    Expected Output: Two execution plan tabs are visible, labeled with the file names. You can click between them to compare operator types, costs, and data flow patterns. The saved .sqlplan files are visible in Windows Explorer at C:.

Verification: You can toggle between two execution plan tabs without re-running the queries

Step 13: Identify expensive operators and bottlenecks

1.  Return to the execution plan from Step 11 (Seattle query)

2.  Look for operators with red or yellow warning icons

3.  Identify the operator with the highest cost percentage (displayed in bold)

4.  Right-click that operator

5.  Select Properties from the context menu

6.  In the Properties window, examine:

         Actual Number of Rows vs. Estimated Number of Rows (look for large discrepancies)
         Estimated Operator Cost
         Estimated CPU Cost
         Estimated I/O Cost

7.  Look for any warnings in the properties list

    Expected Output: Properties window displays on the right side showing detailed metrics. The most expensive operator is typically a Clustered Index Scan or Hash Match operator. If row estimates differ significantly from actual rows (more than 10x difference), this indicates outdated statistics. No warning icons appear if statistics are current.

                                                         65317A - Querying and Analyzing SQL Server 2025

    8-32 Module 8: Analyzing Execution Plans with AI

Verification: Properties window shows numeric values for all cost metrics and row counts

Step 14: Generate AI recommendations for query optimization

1.  With the Seattle query execution plan still displayed, ensure the Copilot pane is visible

2.  If not visible, right-click the execution plan and select Analyze Execution Plan with Copilot

3.  Read through the complete AI analysis

4.  Look for specific recommendations such as:

         Missing index recommendations with CREATE INDEX statements
         Query rewrite suggestions
         Statistics update recommendations
         Join hint suggestions

5.  In the Copilot pane, you can ask follow-up questions like: “Why is the Hash Match join being used here?” “What would be the impact of creating the suggested index?”

6.  Review the AI’s explanations

    Expected Output: Copilot provides detailed analysis including:

          Identification of the most expensive operations
          Specific index recommendations with DDL syntax
          Explanation of why certain operators were chosen
          Estimated performance improvement percentages
          Contextual answers to follow-up questions in conversational format

Verification: You receive specific CREATE INDEX statements or other actionable T-SQL recommendations

Step 15: Document your findings and clean up

1.  Create a new text file at C:\_Summary.txt

2.  Document the following from your analysis:

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 8: Analyzing Execution Plans with AI 8-33

         Query with the highest logical reads (from Messages tab)
         Difference between Scan and Seek operations observed
         At least one AI recommendation you received
         The most expensive operator type you identified

3.  Save the file

4.  In SSMS, execute this cleanup command:

SET STATISTICS IO OFF; SET STATISTICS TIME OFF;

5.  Click Query menu and deselect Include Actual Execution Plan

6.  Close all query windows in SSMS (you can save them if desired to C:)

    Expected Output: Analysis_Summary.txt file is created with your documented findings. Messages tab confirms: ‘STATISTICS IO turned OFF’ and ‘STATISTICS TIME turned OFF’. The Include Actual Execution Plan button is no longer highlighted in the toolbar.

Verification: You can open Analysis_Summary.txt and see your documented observations

Troubleshooting

    Problem: Execution plan tab does not appear after running a query
     Solution: Verify that 'Include Actual Execution Plan' is enabled in the Query menu (Ctrl+M). The
     checkmark must be present. If using SET SHOWPLAN_XML ON instead, this will return XML
     instead of executing the query. Use Ctrl+M method instead for this lab.

     Problem: Copilot pane does not appear or 'Analyze Execution Plan with Copilot' option is missing
     Solution: Ensure you are using SSMS 22 (verify by clicking Help > About). Copilot features require
     SSMS version 20 or later and may require enabling preview features. Go to Tools > Options >
     Azure Services > Enable Azure AI features, check the box, and restart SSMS. Some Azure
     environments may require additional authentication to Azure OpenAI services.

                                                         65317A - Querying and Analyzing SQL Server 2025

8-34 Module 8: Analyzing Execution Plans with AI

    Problem: AdventureWorks2025 database is not listed in Object Explorer
     Solution: The database may not be restored. Right-click Databases > Restore Database. Select
     Device, click the browse button (...), and locate the AdventureWorks2025.bak file typically in
     C:\SQLBackups. If the backup file is missing, download it from Microsoft Learn sample databases
     page and restore from the downloaded location.
     Problem: STATISTICS IO and STATISTICS TIME show no output in Messages tab
     Solution: Ensure you executed the SET statements before running your query. These settings are
     session-specific. If you opened a new query window, you must re-execute SET STATISTICS IO ON
     and SET STATISTICS TIME ON in that window. Also verify the Messages tab is visible (if not, click
     View > Messages or press Ctrl+Alt+T).
     Problem: All operators show 0% cost or execution plan appears incomplete
     Solution: You may be viewing an Estimated Execution Plan instead of an Actual Execution Plan.
     Estimated plans do not include actual row counts or precise costs. Execute the query with Include
     Actual Execution Plan enabled (Ctrl+M) to generate complete statistics. If the query has syntax
     errors, it will only generate an estimated plan without execution.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-35

      Common Student Errors
     Students run execution plans without SET STATISTICS ON/OFF in between, causing cache
     confusion.
     Emphasize running 'SET STATISTICS IO OFF; SET STATISTICS TIME OFF;' as a cleanup step before
     each new query. Provide a template script with these statements pre-populated.
     Students confuse estimated rows with actual rows; they assume estimated plans are
     always wrong if numbers differ.
     Explain that small differences (2x-10x) are normal due to rounding and statistics granularity.
     Large differences (100x+) indicate stale statistics or cardinality estimation issues. Show an
     example of both.
     Students focus on optimizing a 0.01% operator instead of the 40% operator.
     Remind them to sort operators by cost percentage and prioritize the top 3-5 most expensive. Use
     a visual aid (highlight the thick-arrow operators) to reinforce this.
     Students create indexes for every AI suggestion without testing impact on other queries.
     Demo how an index that helps one query can slow down INSERT/UPDATE/DELETE on that table.
     Walk through the process: test on dev, measure INSERT performance, and validate the index is
     actually used.
     Students misinterpret the 'Nested Loop' operator as always bad.
     Show that Nested Loop is perfectly fine for small inner result sets (100-500 rows). It only becomes
     a problem at 10K+ rows. Compare a good Nested Loop vs. a bad one in the

Challenge Exercise

Optimize a Complex Query Using Execution Plan Analysis

You have been given a performance problem to solve. A reporting query is running slowly in production. Your challenge: 1. Execute the following query and analyze its execution plan:

                                                        65317A - Querying and Analyzing SQL Server 2025

8-36 Module 8: Analyzing Execution Plans with AI

SELECT p.FirstName + ’ ’ + p.LastName AS FullName, e.JobTitle, d.Name AS DepartmentName, COUNT(edh.DepartmentID) AS DepartmentChanges, MAX(edh.StartDate) AS LatestDepartmentStart

FROM Person.Person p INNER JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID INNER JOIN HumanResources.EmployeeDepartmentHistory edh ON e.BusinessEntityID = edh.BusinessEntityID INNER JOIN HumanResources.Department d ON edh.DepartmentID = d.DepartmentID WHERE edh.EndDate IS NULL GROUP BY p.FirstName, p.LastName, e.JobTitle, d.Name ORDER BY DepartmentChanges DESC;

2.  Use execution plan analysis, STATISTICS IO, STATISTICS TIME, and AI-powered recommendations to identify at least three performance issues

3.  Implement optimizations which might include: Creating appropriate indexes based on AI recommendations Rewriting the query to improve efficiency Updating statistics if cardinality estimates are poor Restructuring joins or filtering predicates

4.  Document your optimization approach: Original query performance metrics (execution time, logical reads) Issues identified from the execution plan Optimizations implemented with T-SQL code Improved performance metrics after optimization Percentage improvement achieved

5.  Save your before and after execution plans and create a brief report explaining your optimization strategy

Success criteria: Achieve at least 30% reduction in logical reads or execution time through your optimizations, and be able to explain why each optimization improved performance based on execution plan analysis.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 8: Analyzing Execution Plans with AI 8-37

Answer Key

1.  What is the primary difference between an estimated execution plan and an actual execution plan?

    1)  Estimated plans show what the optimizer intends to do without running the query; actual plans capture real execution metrics
    2)  Estimated plans are always more accurate than actual plans
    3)  Actual plans can only be generated for SELECT statements
    4)  Estimated plans include AI recommendations while actual plans do not

    Answer: A Estimated execution plans show the Query Optimizer’s intended strategy without executing the query, using statistics to predict costs and row counts. Actual execution plans capture real metrics during query execution, including actual row counts and resource consumption. This allows comparison between estimates and reality to identify optimization issues.

2.  In what direction do you read SQL Server graphical execution plans?

    1)  Left to right, following the data flow
    2)  Right to left, from data sources to results
    3)  Top to bottom, in sequential order
    4)  The direction doesn’t matter as long as you understand each operator

    Answer: B Execution plans read right to left. Data flows from the rightmost operators (data sources like tables and indexes) through transformation operators, ultimately producing results at the leftmost SELECT operator. This right-to-left flow represents how SQL Server processes your query from source data to final output.

3.  When analyzing an execution plan, which operation is typically more efficient for retrieving a small percentage of rows from a large table?

    1)  Table Scan

                                                          65317A - Querying and Analyzing SQL Server 2025

        8-38 Module 8: Analyzing Execution Plans with AI

    2)  Index Scan

    3)  Index Seek

    4)  Clustered Index Scan

    Answer: C Index Seek is typically most efficient for retrieving small percentages of rows because it uses the index’s B-tree structure to jump directly to specific rows, avoiding unnecessary data reads. Scans (whether table or index) read through data sequentially, which is inefficient when you need only a small subset of rows, though scans can be more efficient when retrieving large percentages of the table.

4.  What keyboard shortcut generates an estimated execution plan in SSMS without executing the query?

    1)  Ctrl+M
    2)  Ctrl+E
    3)  Ctrl+L
    4)  Ctrl+P

    Answer: C Ctrl+L generates an estimated execution plan without executing the query. This allows you to preview the optimizer’s strategy for potentially long-running queries before committing to execution. Ctrl+M enables the ‘Include Actual Execution Plan’ option, which captures actual metrics when you execute the query with F5.

5.  What does SET STATISTICS IO primarily measure?

    1)  CPU time and elapsed time for query execution

    2)  Logical reads, physical reads, and scan counts

    3)  Memory consumption and tempdb usage

    4)  Network bandwidth and packet transmission

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 8: Analyzing Execution Plans with AI 8-39

    Answer: B SET STATISTICS IO reports disk activity metrics including logical reads (pages read from memory), physical reads (pages read from disk), read-ahead reads, and scan counts. This information reveals how much data the query accesses and whether it’s being read from memory (fast) or disk (slow). SET STATISTICS TIME measures CPU and elapsed time, not SET STATISTICS IO.

6.  In SET STATISTICS IO output, what do logical reads represent?

    1)  Pages read from physical disk storage
    2)  Pages read from memory (buffer cache)
    3)  The number of times an index was scanned
    4)  Estimated rows returned by the query

    Answer: B Logical reads represent 8KB pages read from memory (the buffer cache). They indicate data access volume regardless of whether data was originally on disk. Lower logical read counts indicate more efficient queries. Physical reads represent pages read from disk, which are much slower than memory access and should ideally be zero after initial query execution when data is cached.

7.  What does a thick arrow between operators in an execution plan typically indicate?

    1)  The operation is computationally expensive
    2)  High row counts flowing between operators
    3)  A recommended index is missing
    4)  The operation uses parallel processing

    Answer: B Thick arrows between operators indicate high row counts flowing from one operator to the next. This visual cue helps identify potential bottlenecks where large data volumes are being processed or transferred. Thin arrows represent lower row counts. Arrow thickness provides a quick visual assessment of data volume at different stages of query execution.

8.  When viewing SET STATISTICS TIME output, what might a large difference between CPU time and elapsed time indicate?

                                                          65317A - Querying and Analyzing SQL Server 2025

    8-40 Module 8: Analyzing Execution Plans with AI

    1)  The query is CPU-bound and needs optimization
    2)  The query is waiting for resources like disk I/O or locks
    3)  The query used parallel execution across multiple processors
    4)  The query plan is optimal and requires no changes

    Answer: B A large difference between CPU time and elapsed time indicates the query is spending time waiting for resources rather than actively processing. This waiting could be for disk I/O, locks held by other queries, network transmission, or other resource constraints. If CPU time and elapsed time are similar, the query is CPU-bound; if elapsed time is much higher, investigation should focus on wait statistics and resource contention.

9.  What type of insight can SSMS 22 AI provide when analyzing execution plans?

    1)  Plain-English explanations of operators and performance bottlenecks
    2)  Automatic query rewriting without user intervention
    3)  Real-time monitoring of all database queries
    4)  Backup and restore recommendations

    Answer: A SSMS 22 AI provides plain-English explanations of execution plan operators, identifies performance bottlenecks, suggests missing indexes, and offers context-aware optimization recommendations. It helps developers understand complex plans through conversational analysis. However, it does not automatically rewrite queries or perform changes without user review and approval–it serves as an intelligent assistant, not an autonomous optimizer.

10. Which execution plan operator typically indicates that SQL Server is reading every row in a table?

    1)  Index Seek

    2)  Nested Loops Join

    3)  Table Scan

    4)  Hash Match

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 8: Analyzing Execution Plans with AI 8-41

Answer: C Table Scan indicates SQL Server is reading every row in the table sequentially. This operation is often expensive when the table is large and only a small subset of rows is needed. Table scans occur when no suitable index exists or when the optimizer determines that scanning is more efficient than seeking (such as when retrieving most of the table’s rows). Converting table scans to index seeks through proper indexing often yields significant performance improvements.

                                                  65317A - Querying and Analyzing SQL Server 2025

8-42 Module 8: Analyzing Execution Plans with AI

Module Summary

This module explored execution plan analysis and AI-powered optimization in SSMS 22. You learned to generate and interpret both estimated and actual execution plans, understanding how SQL Server’s Query Optimizer selects data access strategies. The distinction between scan and seek operations, reading operator flow right-to-left, and analyzing cost percentages provide the foundation for query performance tuning. SET STATISTICS IO and TIME commands reveal precise resource consumption metrics, while SSMS 22’s AI features offer intelligent insights, missing index recommendations, and plain-English explanations of complex patterns. By combining execution plan analysis with performance metrics and AI assistance, you can systematically identify bottlenecks and optimize query performance.

                                                        65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

      Module 9: Indexing Strategies for Modern Workloads

                                                           65317A
                                   3-day course ? 10 modules ? beginner level

Contents

Module 9: Indexing Strategies for Modern Workloads

Lesson 1: Understanding Database Indexes Lesson 2: Clustered Index Fundamentals and Design Lesson 3: Nonclustered Indexes and Covering Strategies Lesson 4: Specialized Indexes: Filtered, Columnstore, and JSON Lesson 5: Index Maintenance and Fragmentation Management Lesson 6: Index Usage Analysis and Design Optimization Lab: Implementing and Optimizing Index Strategies Answer Key Module Summary  Module 9: Indexing Strategies for Modern Workloads 9-1

Learning Objectives

After completing this module, you will be able to: Design and create clustered indexes for optimal data organization Implement nonclustered and covering indexes to improve query performance Create specialized indexes for JSON data and modern workload patterns Evaluate index usage and identify missing index opportunities

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                  65317A - Querying and Analyzing SQL Server 2025

9-2 Module 9: Indexing Strategies for Modern Workloads

      Module Overview
     Module 9 covers comprehensive indexing strategies for modern SQL Server workloads,
     progressing from fundamental index types through specialized indexes and maintenance
     techniques. Students will design and implement various index strategies, analyze usage patterns,
     and optimize query performance. Total estimated delivery time: 4.5-5 hours including labs and
     discussions.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-3

Lesson 1: Understanding Database Indexes

      Estimated Time: 30 minutes

In SQL Server 2025 (version 17), indexes serve the same purpose: they allow the database engine to locate data without scanning every row in a table. When you execute a query with a WHERE clause, JOIN condition, or ORDER BY statement, SQL Server can use indexes to find matching rows quickly.

Illustration showing the contrast between a sequential table scan through stacks of data versus a direct index lookup using an organized card catalog system

    Key Takeaways
         Indexes create organized pathways to data, eliminating the need for full table scans
         Proper indexing can reduce query execution time from seconds to milliseconds
         Indexes consume storage space and add overhead to data modification operations
         Effective index design requires understanding query patterns and workload characteristics

                                                         65317A - Querying and Analyzing SQL Server 2025

9-4 Module 9: Indexing Strategies for Modern Workloads

      Instructor Notes
     Talking Points:

          Indexes are fundamental performance tools--emphasize the balance between read
          optimization and write overhead
          Index architecture affects every query execution plan decision
          The cost of index maintenance often overlooked by junior DBAs
          Indexes consume storage and memory--there's no 'free lunch' in indexing
          Modern workloads demand different indexing strategies than traditional OLTP systems
     Demo Suggestion: Demonstrate execution plans with and without indexes on the same query.
     Show actual I/O statistics using SET STATISTICS IO ON to quantify the impact. Display the
     sys.dm_db_index_usage_stats DMV to show how SQL Server tracks index utilization.
     Common Student Questions:
     Q: Why would I ever not want an index on every column used in WHERE clauses?
     A: Every index consumes storage, increases INSERT/UPDATE/DELETE time, and requires
     maintenance. We balance query speed with modification performance and resource costs.
     Q: Can an index make queries slower?
     A: Yes--optimizer may choose an inefficient index over a table scan, or index scans can be slower
     than table scans on small tables. Always verify with actual execution plans.
     Q: What's the difference between an index and a primary key?
     A: A primary key is a constraint enforcing uniqueness; a clustered index is a physical storage
     structure. You can have a primary key that isn't clustered, though typically the clustered index
     backs the primary key.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-5

Lesson 2: Clustered Index Fundamentals and Design

      Estimated Time: 45 minutes

The Foundation: Clustered Indexes

A clustered index determines the physical order of data in a table. Unlike other index types that create separate structures, the clustered index is the table–data rows are stored in the order of the clustered index key. Each table can have only one clustered index because data can be physically sorted in only one way. This makes clustered index selection one of your most important design decisions. How Clustered Indexes Work SQL Server organizes clustered indexes as B-tree structures with three levels:

Leaf level: Contains the actual data pages with all table columns Intermediate levels: Contain index pages with key values and pointers Root level: The top-level page that starts all searches When you query data using the clustered index key, SQL Server traverses this tree efficiently– typically requiring only 3-4 page reads even for tables with millions of rows. Choosing the Right Clustered Index Key The ideal clustered index key is: Unique: Ensures each row has a distinct position Narrow: Small data types reduce index size and improve cache efficiency Static: Unchanging values avoid expensive row relocations Ever-increasing: Sequential inserts minimize page splits and fragmentation Primary key columns often make excellent clustered index keys, especially identity columns or date/time stamps. For example, an OrderID identity column or OrderDate timestamp naturally meets all these criteria. Common Design Patterns

                                                        65317A - Querying and Analyzing SQL Server 2025

9-6 Module 9: Indexing Strategies for Modern Workloads

– Transaction table: clustered on ever-increasing ID CREATE TABLE Orders (

     OrderID INT IDENTITY(1,1) PRIMARY KEY CLUSTERED,
      CustomerID INT,
      OrderDate DATETIME2

); – Reference table: clustered on natural key CREATE TABLE Products ( ProductCode CHAR(10) PRIMARY KEY CLUSTERED, ProductName NVARCHAR(100) );

Avoid clustering on wide keys (like GUIDs or multiple columns) or frequently updated columns, as these patterns create fragmentation and performance problems.

Illustration of a library with books organized sequentially on shelves by call number, representing how clustered indexes physically organize data

    Key Takeaways
          Clustered indexes define the physical order of table data--each table has exactly one
          Data is stored at the leaf level, making clustered index seeks extremely efficient
          Ideal clustered keys are unique, narrow, static, and ever-increasing
          Poor clustered index choices cause fragmentation and performance degradation

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-7

Instructor Notes Talking Points:

The clustered index IS the table–every table must have exactly one clustered index Clustered index choice is one of the most consequential decisions in database design Selectivity, stability, and width are key design criteria; present the FILLFACTOR concept as future-proofing Foreign key searches often benefit from clustered indexes on the FK column The clustered index key is included in every nonclustered index–keep it narrow GUID/UUID columns as clustered keys create fragmentation; discuss sequential vs. random GUIDs Demo Suggestion: Create a table with a poor clustered index choice (e.g., GUID), run queries, then rebuild with a better clustered index (e.g., sequential or natural key) and compare execution plans. Show DBCC IND output to visualize page allocation. Demonstrate range queries with different clustered indexes to show seek vs. scan behavior. Common Student Questions: Q: Should the primary key always be the clustered index? A: Not necessarily. Choose the clustered index based on query patterns, not constraint requirements. The primary key should be unique and stable, but the clustered index should optimize your most frequent range queries. Q: What happens if I don’t specify a clustered index? A: SQL Server will still create a clustered index if you create a primary key constraint, unless you explicitly specify NONCLUSTERED. Without any clustered index, the table becomes a heap, which has performance implications. Q: How wide should my clustered index key be? A: Keep it as narrow as possible since it’s included in every nonclustered index. 1-3 columns is typical; if you need more selectivity, consider a nonclustered unique index instead.

                                                  65317A - Querying and Analyzing SQL Server 2025

9-8 Module 9: Indexing Strategies for Modern Workloads

Lesson 3: Nonclustered Indexes and Covering Strategies

      Estimated Time: 50 minutes

Nonclustered Indexes: Additional Access Paths

While a table can have only one clustered index, you can create multiple nonclustered indexes to support different query patterns. Nonclustered indexes create separate structures that maintain sorted copies of specific columns along with pointers back to the data. Nonclustered Index Structure A nonclustered index consists of:

Leaf level: Contains indexed column values and row locators Row locators: Either clustered index keys (if table has clustered index) or physical row identifiers (RIDs) Intermediate levels: Guide searches to the appropriate leaf pages When SQL Server uses a nonclustered index, it first navigates the B-tree to find matching index rows, then follows the row locators to retrieve additional columns from the base table. This two-step process is called a “bookmark lookup” or “key lookup.” When to Create Nonclustered Indexes Create nonclustered indexes for columns frequently used in: WHERE clause filters JOIN conditions ORDER BY or GROUP BY operations Queries that return small result sets

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-9

– Index for customer lookup queries CREATE NONCLUSTERED INDEX IX_Orders_CustomerID ON Orders(CustomerID); – Composite index for date range queries CREATE NONCLUSTERED INDEX IX_Orders_DateStatus ON Orders(OrderDate, Status);

Covering Indexes with INCLUDE Columns A covering index contains all columns needed by a query, eliminating the need for expensive key lookups. SQL Server 2025 supports the INCLUDE clause to add non-key columns at the leaf level:

CREATE NONCLUSTERED INDEX IX_Orders_CustomerID_INCLUDE ON Orders(CustomerID) INCLUDE (OrderDate, TotalAmount, Status);

This index “covers” queries that filter on CustomerID and retrieve OrderDate, TotalAmount, or Status –no key lookup required. The INCLUDE columns don’t participate in the B-tree structure, keeping the index efficient while providing coverage. Design Considerations Use covering indexes for:

Critical queries executed frequently Reports that retrieve specific column sets Queries with expensive key lookups in execution plans Avoid over-indexing: each additional index increases storage and modification overhead. Focus on indexes that support your most important and frequent query patterns.

                                                        65317A - Querying and Analyzing SQL Server 2025

9-10 Module 9: Indexing Strategies for Modern Workloads

     Illustration showing a main library catalog with multiple specialized reference systems pointing to the same books,
                        representing how nonclustered indexes provide different access paths to the same data

     Key Takeaways
          Nonclustered indexes create separate structures with pointers to table data
          Tables can have multiple nonclustered indexes to support different query patterns
          Covering indexes with INCLUDE columns eliminate key lookups for better performance
          Balance index benefits against storage and modification costs

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-11

Instructor Notes Talking Points:

Nonclustered indexes are your primary performance tuning tool for SELECT queries Every nonclustered index includes the clustered index key automatically–use this to avoid key lookups Covering indexes eliminate key lookups and can enable index-only scans for dramatic performance gains The INCLUDE clause (added SQL Server 2008) allows non-key columns without affecting uniqueness constraints Index ordering in composite indexes matters–equality columns first, then range columns, then INCLUDE columns Wide covering indexes consume more storage and increase maintenance overhead– measure the tradeoff Filtered indexes reduce size and maintenance by excluding rows that don’t match the filter predicate Demo Suggestion: Create a query that requires key lookups; show the execution plan with the lookup operator. Then add a covering index and demonstrate the index seek with no lookups. Use actual execution plan to show CPU and I/O differences. Show STATISTICS IO output comparing with and without covering index. Common Student Questions: Q: When should I use INCLUDE versus adding columns to the index key? A: Use INCLUDE for columns needed to avoid lookups but not used for seeking or sorting. Key columns define the index structure and affect uniqueness; INCLUDE columns are stored separately in leaf pages, not in intermediate pages. Q: Can I have too many nonclustered indexes? A: Absolutely. Each index increases INSERT/UPDATE/DELETE cost and storage. Measure actual usage with DMVs; remove unused indexes. Typically 5-10 nonclustered indexes per table is reasonable, rarely more than 15. Q: Does a covering index eliminate all lookups? A: Only for the specific query it covers. A covering index for queries A and B won’t help query C that needs different columns. Design covering indexes for your highest-impact queries.

                                                  65317A - Querying and Analyzing SQL Server 2025

9-12 Module 9: Indexing Strategies for Modern Workloads

Lesson 4: Specialized Indexes: Filtered, Columnstore, and JSON

      Estimated Time: 55 minutes

Filtered Indexes for Subset Optimization

Filtered indexes include only a subset of rows that match a WHERE predicate. They’re ideal for columns with non-uniform data distribution or when queries consistently filter on specific values.

– Index only active orders CREATE NONCLUSTERED INDEX IX_Orders_Active ON Orders(OrderDate) WHERE Status = ‘Active’; – Index only recent records CREATE NONCLUSTERED INDEX IX_Orders_Recent ON Orders(CustomerID) WHERE OrderDate \>= ‘2024-01-01’;

Filtered indexes reduce storage, improve maintenance speed, and increase query performance when your filter matches the index predicate. They’re particularly valuable for:

Sparse columns: Columns with many NULL values Category subsets: Specific status values or flags Date ranges: Recent or active data Columnstore Indexes for Analytics Columnstore indexes store data by column rather than by row, delivering exceptional compression and query performance for analytical workloads. SQL Server 2025 offers both clustered and nonclustered columnstore options. Traditional row-based storage excels at transactional operations (SELECT, INSERT, UPDATE), while columnstore indexes optimize analytical queries that aggregate across millions of rows:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-13

– Clustered columnstore for data warehouse fact table CREATE CLUSTERED COLUMNSTORE INDEX CCI_SalesHistory ON SalesHistory; – Nonclustered columnstore for real-time analytics CREATE NONCLUSTERED COLUMNSTORE INDEX NCCI_Orders_Analytics ON Orders(OrderDate, ProductID, Quantity, Revenue);

Columnstore indexes achieve 10x or better compression and can deliver 10-100x query performance improvements for sum, average, count, and grouping operations. JSON Indexes in SQL Server 2025 SQL Server 2025 (version 17) introduces native JSON indexing capabilities. You can create indexes on JSON paths to accelerate queries against semi-structured data:

– Create index on JSON property CREATE INDEX IX_Products_JsonSpecs ON Products(CAST(Specifications AS NVARCHAR(4000))) WHERE ISJSON(Specifications) = 1;

JSON indexes improve performance for applications storing configuration data, user preferences, or flexible schemas in JSON columns.

Illustration showing three specialized filing systems: a filtered cabinet with selective documents, a compressed archive of columnar data, and a flexible JSON document organizer

                                                        65317A - Querying and Analyzing SQL Server 2025

9-14 Module 9: Indexing Strategies for Modern Workloads

    Key Takeaways
          Filtered indexes optimize queries on data subsets while reducing storage and maintenance
          costs
          Columnstore indexes deliver exceptional compression and performance for analytical
          workloads
          SQL Server 2025 supports JSON indexing for semi-structured data scenarios
          Choose specialized indexes based on workload patterns: OLTP versus analytics versus flexible
          schemas

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-15

Instructor Notes Talking Points:

Filtered indexes improve performance and reduce maintenance by indexing only relevant rows–ideal for sparse data or status columns Columnstore indexes revolutionized analytics and compression; they store data by column, not row, enabling massive compression ratios Columnstore indexes are append-optimized; batch mode operations provide 10-100x improvements on aggregations Columnstore not suitable for OLTP with frequent updates; primarily for data warehouses and historical analysis JSON indexes (with SQL Server 2016) enable efficient querying of semi-structured data without extracting to relational columns Full-text indexes and spatial indexes serve specialized use cases; mention when relevant but focus on JSON for modern workloads Hybrid scenarios mix rowstore and columnstore on the same table for hot and cold data Demo Suggestion: Create a filtered index excluding inactive records; show how optimizer can eliminate the index if filter doesn’t match. Build a columnstore index on a wide fact table and run an aggregation query–show execution plan with batch mode operations and compression statistics. Demonstrate JSON index usage with a document column containing nested structures; compare performance with and without the index. Common Student Questions: Q: What’s the difference between a filtered index and a WHERE clause? A: A filtered index only stores rows matching the filter, reducing size and maintenance. A WHERE clause doesn’t restrict storage but optimizes the query plan. Use filtered indexes for data that naturally splits (e.g., active vs. archived). Q: Should I use columnstore for my OLTP database? A: Not typically. Columnstore is optimized for large-volume reads and aggregations, not frequent small updates. Use it for analytics, warehouses, or specific large tables in a mixed workload. Q: Do I need JSON indexes if I’m storing JSON? A: JSON indexes improve performance for queries accessing specific JSON properties. If you rarely query the JSON or only extract it wholesale, the index overhead may not justify the benefit.

                                                  65317A - Querying and Analyzing SQL Server 2025

9-16 Module 9: Indexing Strategies for Modern Workloads

Lesson 5: Index Maintenance and Fragmentation Management

      Estimated Time: 40 minutes

Understanding Index Fragmentation

As data changes through INSERT, UPDATE, and DELETE operations, indexes become fragmented. Fragmentation occurs in two forms: Logical fragmentation happens when the logical order of index pages doesn’t match their physical order on disk. This forces SQL Server to perform more I/O operations during index scans. Internal fragmentation (or “page density”) occurs when index pages are partially full. SQL Server reserves space on each page (typically 10-20%) to accommodate future inserts without immediately splitting pages. However, uneven data distribution can leave pages much less than full. Fragmentation degrades query performance by:

Increasing read operations during index scans Reducing buffer pool efficiency Wasting storage space on partially filled pages Monitoring Fragmentation Levels Use the sys.dm_db_index_physical_stats DMV to assess fragmentation:

SELECT OBJECT_NAME(ips.object_id) AS TableName, i.name AS IndexName, ips.avg_fragmentation_in_percent, ips.avg_page_space_used_in_percent, ips.page_count

FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, ‘SAMPLED’) ips JOIN sys.indexes i ON ips.object_id = i.object_id

     AND ips.index_id = i.index_id

WHERE ips.page_count \> 100 ORDER BY ips.avg_fragmentation_in_percent DESC;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-17

Maintenance Strategies Apply these guidelines:

0-10% fragmentation: No action needed 10-30% fragmentation: REORGANIZE the index (online operation) \>30% fragmentation: REBUILD the index

– Reorganize moderately fragmented index ALTER INDEX IX_Orders_CustomerID ON Orders REORGANIZE; – Rebuild heavily fragmented index (offline) ALTER INDEX IX_Orders_CustomerID ON Orders REBUILD; – Rebuild with online option (Enterprise Edition) ALTER INDEX IX_Orders_CustomerID ON Orders REBUILD WITH (ONLINE = ON);

Reorganize operations are always online and use minimal system resources. Rebuild operations are more thorough but can be resource-intensive. SQL Server 2025 Enterprise Edition supports online index rebuilds that allow concurrent access during maintenance.

Before and after illustration showing a fragmented, disorganized workspace being reorganized into a clean, efficient system

                                                        65317A - Querying and Analyzing SQL Server 2025

9-18 Module 9: Indexing Strategies for Modern Workloads

    Key Takeaways
          Fragmentation occurs naturally as data changes and degrades query performance over time
          Monitor fragmentation using sys.dm_db_index_physical_stats DMV
          Reorganize indexes with 10-30% fragmentation; rebuild indexes above 30%
          Schedule regular maintenance during off-peak hours to maintain optimal performance

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-19

Instructor Notes Talking Points:

Fragmentation is the enemy–external fragmentation spreads a logical range across physical pages, increasing I/O Reorganize (DBCC DBREINDEX or ALTER INDEX REORGANIZE) for light fragmentation (10-30%); use for online maintenance Rebuild (ALTER INDEX REBUILD) for heavy fragmentation (\>30%); requires more resources but completely defragments Monitor fragmentation with sys.dm_db_index_physical_stats; avoid rebuilding all indexes indiscriminately Maintenance windows matter–large rebuilds can lock tables and consume log space FILLFACTOR impacts fragmentation rate; lower values leave room for growth but waste space initially Partition switching and incremental statistics can improve maintenance efficiency on large tables Demo Suggestion: Query sys.dm_db_index_physical_stats to show fragmentation metrics. Create an index, perform many updates, requery to show fragmentation increase. Demonstrate ALTER INDEX REORGANIZE and REBUILD, showing page allocation changes. Monitor transaction log growth during rebuild. Show how to automate maintenance with SQL Server Agent jobs. Common Student Questions: Q: Should I rebuild all indexes every night? A: No–measure fragmentation first. Rebuild only indexes with \>30% fragmentation; reorganize 10-30%. Unnecessary rebuilds waste resources and can cause contention. Q: Can I rebuild indexes while users are connected? A: ALTER INDEX REBUILD ONLINE allows readers and writers (with limitations). REORGANIZE is always online. DBCC DBREINDEX requires exclusive lock. Enterprise Edition has better online options. Q: What fragmentation level should trigger maintenance? A: Common guidance: reorganize at 10-30%, rebuild above 30%. But actual thresholds depend on query patterns–monitor impact before and after maintenance on your workload.

                                                  65317A - Querying and Analyzing SQL Server 2025

9-20 Module 9: Indexing Strategies for Modern Workloads

Lesson 6: Index Usage Analysis and Design Optimization

      Estimated Time: 50 minutes

Monitoring Index Usage

SQL Server 2025 provides Dynamic Management Views (DMVs) that track index usage patterns and identify optimization opportunities. The two most valuable DMVs for index analysis are sys.dm_db_index_usage_stats and the missing index DMVs. sys.dm_db_index_usage_stats This DMV tracks every index’s usage since SQL Server started:

SELECT OBJECT_NAME(ius.object_id) AS TableName, i.name AS IndexName, ius.user_seeks, ius.user_scans, ius.user_lookups, ius.user_updates, ius.last_user_seek, ius.last_user_scan

FROM sys.dm_db_index_usage_stats ius JOIN sys.indexes i ON ius.object_id = i.object_id

     AND ius.index_id = i.index_id

WHERE database_id = DB_ID() ORDER BY ius.user_seeks + ius.user_scans DESC;

This query reveals: Heavily used indexes: High seek/scan counts justify their maintenance cost Unused indexes: Zero reads but high updates indicate candidates for removal Update-heavy indexes: High update counts relative to reads suggest reconsideration

Missing Index DMVs SQL Server’s query optimizer automatically identifies potential index opportunities:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-21

SELECT mid.statement AS TableName, migs.avg_user_impact AS AvgQueryImprovement, migs.user_seeks + migs.user_scans AS TotalUse, mid.equality_columns, mid.inequality_columns, mid.included_columns

FROM sys.dm_db_missing_index_details mid JOIN sys.dm_db_missing_index_groups mig ON mid.index_handle = mig.index_handle JOIN sys.dm_db_missing_index_group_stats migs ON mig.index_group_handle = migs.group_handle WHERE mid.database_id = DB_ID() ORDER BY migs.avg_user_impact \* (migs.user_seeks + migs.user_scans) DESC;

The avg_user_impact estimates percentage improvement if the index existed. Focus on recommendations with:

High impact (\>50% improvement) High usage (frequent seeks/scans) Reasonable column counts (avoid overly wide indexes) Index Design Best Practices 1. Start with usage patterns: Analyze actual queries before creating indexes 2. Avoid over-indexing: Each index has maintenance cost; quality over quantity 3. Consider composite indexes: Multi-column indexes can satisfy multiple query patterns 4. Review regularly: Usage patterns change; audit indexes quarterly 5. Test before deploying: Validate index impact in non-production environments 6. Document decisions: Maintain rationale for each index to guide future reviews

                                                        65317A - Querying and Analyzing SQL Server 2025

9-22 Module 9: Indexing Strategies for Modern Workloads

Illustration of a dashboard or control center showing performance metrics, usage patterns, and optimization opportunities being analyzed

    Key Takeaways
          sys.dm_db_index_usage_stats tracks reads and writes for every index
          Missing index DMVs provide recommendations with estimated query improvement
          Remove unused indexes that consume resources without providing value
          Regular index reviews ensure alignment with evolving workload patterns

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-23

Instructor Notes Talking Points:

sys.dm_db_index_usage_stats is your window into actual index utilization–use it to justify design decisions Unused indexes are pure cost; remove them ruthlessly after confirming they’re not hiding application issues Missing index recommendations in execution plans and DMVs point to performance opportunities, but validate before creating Query performance analysis often reveals index problems before fragmentation becomes visible Baseline establishment matters–compare before/after changes; A/B testing on production needs careful planning Index design is iterative; start with obvious needs, measure, then optimize further Different workload times may need different indexes; consider time-of-day patterns and seasonal variations Demo Suggestion: Query sys.dm_db_index_usage_stats to identify unused indexes and candidates for removal. Show missing index recommendations in SQL Server Management Studio execution plans; create the suggested index and rerun the query to verify improvement. Use Query Store to compare before/after performance metrics. Build a dashboard querying DMVs to report on index health. Common Student Questions: Q: If an index isn’t in sys.dm_db_index_usage_stats, can I delete it? A: Carefully. The DMV is cleared at startup, and rarely-used indexes might not appear. Script all index definitions, disable the index for a week, monitor for errors, then delete if safe. Q: Should I always create indexes recommended by missing index DMVs? A: No. Validate that the recommendation makes sense for your overall strategy. Missing index suggestions are based on recent queries, not historical patterns or maintenance cost. Prioritize high-impact queries. Q: How do I know if my indexing strategy is working? A: Track key metrics: average query execution time, I/O reads per query, index fragmentation, and maintenance window duration. Set baselines, make changes, then measure improvement.

                                                  65317A - Querying and Analyzing SQL Server 2025

9-24 Module 9: Indexing Strategies for Modern Workloads

Lab: Implementing and Optimizing Index Strategies

Objective: Design, create, and evaluate multiple index types including clustered, nonclustered, covering, filtered, and JSON indexes to optimize query performance for a retail analytics workload Estimated Time: 45 minutes Platform: Azure Portal with Windows Server 2025 VM running SQL Server 2025 (version 17) and SSMS 22 Prerequisites:

Access to Azure Portal with provisioned Windows Server 2025 VM SQL Server 2025 (version 17) installed and running SQL Server Management Studio (SSMS) 22 installed SQL Server Agent service running Permissions to create databases and indexes Basic understanding of T-SQL SELECT statements

      Lab Facilitation
     Setup: Pre-lab setup: Ensure each student has a SQL Server instance (2019 or later
     recommended) with write access to create/modify indexes. Provide a sample database with
     realistic data volumes--at minimum 100K+ rows in key tables to observe meaningful
     fragmentation and execution plan differences. Pre-create tables if students are new to indexing.
     Provide template scripts for common operations (rebuild, reorganize, DMV queries). Verify Query
     Store is enabled on the database for performance tracking. Have execution plan examples ready
     to share. Consider providing a 'before' backup so students can reset if needed.
     Pacing: Structure the lab into 3-4 phases: (1) Design phase--have students sketch clustered and
     nonclustered indexes on paper before creating them; (2) Implementation phase--create indexes
     and verify with execution plans; (3) Analysis phase--query DMVs and identify unused/missing
     indexes; (4) Optimization phase--rebuild, reorganize, and remeasure. Allocate 20-30 minutes per
     phase. Pair struggling students with stronger peers for collaborative troubleshooting. Use a
     shared screen to demonstrate DMV queries halfway through so students can self-correct.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-25

Procedures

Step 1: Connect to your SQL Server 2025 instance using SSMS 22 and create the lab database

1.  Open SQL Server Management Studio 22

2.  In the Connect to Server dialog:

         Server type: Database Engine
         Server name: localhost (or your VM's hostname)
         Authentication: Windows Authentication
         Click Connect

3.  In the toolbar, click New Query

4.  Copy and execute the following T-SQL script:

                                                         65317A - Querying and Analyzing SQL Server 2025

    9-26 Module 9: Indexing Strategies for Modern Workloads

– Create the lab database CREATE DATABASE RetailAnalytics; GO

USE RetailAnalytics; GO

– Create the base tables without indexes CREATE TABLE Customers (

     CustomerID INT NOT NULL,
      FirstName NVARCHAR(50) NOT NULL,
      LastName NVARCHAR(50) NOT NULL,
      Email NVARCHAR(100),
      City NVARCHAR(50),
      State NVARCHAR(2),
      CreatedDate DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
      IsActive BIT NOT NULL DEFAULT 1,
      Preferences NVARCHAR(MAX)

);

CREATE TABLE Orders ( OrderID INT NOT NULL, CustomerID INT NOT NULL, OrderDate DATETIME2 NOT NULL, TotalAmount DECIMAL(10,2) NOT NULL, Status NVARCHAR(20) NOT NULL, ShippingCity NVARCHAR(50), OrderMetadata NVARCHAR(MAX)

);

CREATE TABLE OrderDetails ( OrderDetailID INT NOT NULL, OrderID INT NOT NULL, ProductID INT NOT NULL, Quantity INT NOT NULL, UnitPrice DECIMAL(10,2) NOT NULL, LineTotal AS (Quantity \* UnitPrice) PERSISTED

);

PRINT ‘Database and tables created successfully.’;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-27

    Expected Output:
     Messages tab shows:

        Commands completed successfully.
        Database and tables created successfully.
     Object Explorer shows RetailAnalytics database with three tables: Customers, Orders, and
     OrderDetails under the Tables folder.

Verification: In Object Explorer, expand **Databases** \> **RetailAnalytics** \> **Tables**. Verify all three tables (dbo.Customers, dbo.Orders, dbo.OrderDetails) are visible.

Step 2: Populate the tables with sample data for testing index performance

Execute the following script to insert test data:

                                                        65317A - Querying and Analyzing SQL Server 2025

9-28 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO

– Insert sample customers INSERT INTO Customers (CustomerID, FirstName, LastName, Email, City, State, IsActive, Preferences) VALUES (1, ‘John’, ‘Smith’, ‘john.smith@email.com’, ‘Seattle’, ‘WA’, 1, ‘{“newsletter”: true, “sms”: false}’), (2, ‘Sarah’, ‘Johnson’, ‘sarah.j@email.com’, ‘Portland’, ‘OR’, 1, ‘{“newsletter”: false, “sms”: true}’), (3, ‘Michael’, ‘Williams’, ‘mwilliams@email.com’, ‘Seattle’, ‘WA’, 1, ‘{“newsletter”: true, “sms”: true}’), (4, ‘Emily’, ‘Brown’, ‘ebrown@email.com’, ‘Spokane’, ‘WA’, 0, ‘{“newsletter”: false, “sms”: false}’), (5, ‘David’, ‘Jones’, ‘djones@email.com’, ‘Tacoma’, ‘WA’, 1, ‘{“newsletter”: true, “sms”: true}’), (6, ‘Jennifer’, ‘Davis’, ‘jdavis@email.com’, ‘Portland’, ‘OR’, 1, ‘{“newsletter”: true, “sms”: false}’), (7, ‘Robert’, ‘Miller’, ‘rmiller@email.com’, ‘Eugene’, ‘OR’, 0, ‘{“newsletter”: false, “sms”: true}’), (8, ‘Lisa’, ‘Wilson’, ‘lwilson@email.com’, ‘Seattle’, ‘WA’, 1, ‘{“newsletter”: true, “sms”: true}’);

– Insert sample orders INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status, ShippingCity, OrderMetadata) VALUES (1001, 1, ‘2024-01-15’, 250.00, ‘Completed’, ‘Seattle’, ‘{“priority”: “standard”, “gift”: false}’), (1002, 2, ‘2024-01-16’, 175.50, ‘Completed’, ‘Portland’, ‘{“priority”: “express”, “gift”: true}’), (1003, 1, ‘2024-01-18’, 420.00, ‘Completed’, ‘Seattle’, ‘{“priority”: “standard”, “gift”: false}’), (1004, 3, ‘2024-01-20’, 89.99, ‘Processing’, ‘Seattle’, ‘{“priority”: “standard”, “gift”: false}’), (1005, 5, ‘2024-01-22’, 310.00, ‘Completed’, ‘Tacoma’, ‘{“priority”: “express”, “gift”: false}’), (1006, 2, ‘2024-01-25’, 125.00, ‘Shipped’, ‘Portland’, ‘{“priority”: “standard”, “gift”: true}’), (1007, 6, ‘2024-01-28’, 275.00, ‘Completed’, ‘Portland’, ‘{“priority”: “express”, “gift”: false}’), (1008, 8, ‘2024-02-01’, 198.50, ‘Processing’, ‘Seattle’, ‘{“priority”: “standard”, “gift”: false}’), (1009, 1, ‘2024-02-03’, 450.00, ‘Completed’, ‘Seattle’, ‘{“priority”: “express”, “gift”: true}’), (1010, 3, ‘2024-02-05’, 320.00, ‘Shipped’, ‘Seattle’, ‘{“priority”: “standard”, “gift”: false}’);

– Insert order details INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice) VALUES (1, 1001, 101, 2, 75.00), (2, 1001, 102, 1, 100.00), (3, 1002, 103, 3, 58.50), (4, 1003, 101, 4, 75.00), (5, 1003, 104, 1, 120.00), (6, 1004, 105, 1, 89.99), (7, 1005, 102, 2, 100.00), (8, 1005, 106, 1, 110.00), (9, 1006, 103, 2, 62.50), (10, 1007, 104, 2, 125.00), (11, 1007, 101, 1, 25.00), (12, 1008, 105, 2, 99.25), (13, 1009, 102, 3, 100.00),

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-29

(14, 1009, 104, 1, 150.00), (15, 1010, 106, 2, 110.00), (16, 1010, 103, 1, 100.00); PRINT ‘Sample data inserted successfully.’; PRINT CONCAT(‘Customers:’, (SELECT COUNT(*) FROM Customers)); PRINT CONCAT(‘Orders:’, (SELECT COUNT(*) FROM Orders)); PRINT CONCAT(‘OrderDetails:’, (SELECT COUNT(\*) FROM OrderDetails));

    Expected Output:
     Messages tab shows:

        (8 rows affected)
        (10 rows affected)
        (16 rows affected)
        Sample data inserted successfully.
        Customers: 8
        Orders: 10
        OrderDetails: 16

Verification: Execute `SELECT COUNT(*) FROM Customers; SELECT COUNT(*) FROM Orders; SELECT COUNT(*) FROM OrderDetails;` and verify the counts match: 8, 10, and 16 respectively.

Step 3: Create clustered indexes on the primary key columns for optimal data organization

Execute the following script to create clustered indexes:

                                                        65317A - Querying and Analyzing SQL Server 2025

9-30 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO – Create clustered index on Customers CREATE CLUSTERED INDEX CIX_Customers_CustomerID

     ON Customers(CustomerID);

– Create clustered index on Orders CREATE CLUSTERED INDEX CIX_Orders_OrderID

     ON Orders(OrderID);

– Create clustered index on OrderDetails CREATE CLUSTERED INDEX CIX_OrderDetails_OrderDetailID

     ON OrderDetails(OrderDetailID);

PRINT ‘Clustered indexes created successfully.’; GO – View the created indexes SELECT

     OBJECT_NAME(i.object_id) AS TableName,
      i.name AS IndexName,
      i.type_desc AS IndexType,
      i.is_unique,
      i.is_primary_key

FROM sys.indexes i WHERE i.type_desc = ‘CLUSTERED’ AND OBJECT_SCHEMA_NAME(i.object_id) = ‘dbo’ ORDER BY TableName;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-31

Expected Output: Messages tab shows:

Clustered indexes created successfully.

Results tab shows:

TableName IndexName IndexType is_unique is_primary_key

Customers CIX_Customers_CustomerID CLUSTERED 0 0

OrderDetails CIX_OrderDetails_OrderDetailID CLUSTERED 0 0

Orders CIX_Orders_OrderID CLUSTERED 0 0

Verification: In Object Explorer, expand **RetailAnalytics** \> **Tables** \> **dbo.Customers** \> **Indexes**. Verify CIX_Customers_CustomerID exists with a different icon than nonclustered indexes (there is only one clustered index per table).

Step 4: Create nonclustered indexes on foreign key columns to optimize join operations

Execute the following script to create nonclustered indexes:

                    65317A - Querying and Analyzing SQL Server 2025

9-32 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO – Create nonclustered index on Orders.CustomerID for customer lookups CREATE NONCLUSTERED INDEX IX_Orders_CustomerID

     ON Orders(CustomerID);

– Create nonclustered index on OrderDetails.OrderID for order detail lookups CREATE NONCLUSTERED INDEX IX_OrderDetails_OrderID

     ON OrderDetails(OrderID);

– Create nonclustered index on OrderDetails.ProductID for product analysis CREATE NONCLUSTERED INDEX IX_OrderDetails_ProductID

     ON OrderDetails(ProductID);

PRINT ‘Nonclustered indexes created successfully.’; GO – Test a query that benefits from the foreign key index SET STATISTICS IO ON; GO SELECT

     c.CustomerID,
      c.FirstName,
      c.LastName,
      COUNT(o.OrderID) AS OrderCount,
      SUM(o.TotalAmount) AS TotalSpent

FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.FirstName, c.LastName ORDER BY TotalSpent DESC; GO SET STATISTICS IO OFF;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-33

Expected Output: Messages tab shows:

Nonclustered indexes created successfully.

Results tab shows customer order summaries:

CustomerID FirstName LastName OrderCount TotalSpent

1 John Smith 3 1120.00

3 Michael Williams 2 409.99

…

Messages tab also shows IO statistics similar to:

Table ‘Customers’. Scan count 1, logical reads 2 Table ‘Orders’. Scan count 1, logical reads 2

Verification: Execute: `SELECT name, type_desc FROM sys.indexes WHERE object_id = OBJECT_ID('Orders') AND name = 'IX_Orders_CustomerID';` Verify the result shows the index name and type_desc as ‘NONCLUSTERED’.

Step 5: Create a covering index with INCLUDE columns to eliminate key lookups

A covering index includes all columns needed by a query, eliminating the need for key lookups to the clustered index. Execute this script:

                    65317A - Querying and Analyzing SQL Server 2025

9-34 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO – First, examine a query that requires key lookups SET STATISTICS IO ON; SET STATISTICS TIME ON; GO – Query that retrieves order information by date range SELECT OrderID, CustomerID, OrderDate, TotalAmount, Status FROM Orders WHERE OrderDate \>= ‘2024-01-20’ AND OrderDate \< ‘2024-02-01’; GO – Create covering index with INCLUDE columns CREATE NONCLUSTERED INDEX IX_Orders_OrderDate_INCLUDE

     ON Orders(OrderDate)
      INCLUDE (CustomerID, TotalAmount, Status);

PRINT ‘Covering index created successfully.’; GO – Re-run the same query to see performance improvement SELECT OrderID, CustomerID, OrderDate, TotalAmount, Status FROM Orders WHERE OrderDate \>= ‘2024-01-20’ AND OrderDate \< ‘2024-02-01’; GO SET STATISTICS IO OFF; SET STATISTICS TIME OFF;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-35

Expected Output: After creating the covering index, the second query execution shows:

Results tab:

OrderID CustomerID OrderDate TotalAmount Status 89.99 Processing 1004 3 2024-01-20 00:00:00.000 310.00 Completed 125.00 Shipped 1005 5 2024-01-22 00:00:00.000 275.00 Completed

1006 2 2024-01-25 00:00:00.000

1007 6 2024-01-28 00:00:00.000

Messages tab shows reduced logical reads:

Table ‘Orders’. Scan count 1, logical reads 2 SQL Server Execution Times:

CPU time = 0 ms, elapsed time = 1 ms.

Verification: Execute: `SELECT i.name, i.type_desc, c.name AS IncludedColumn FROM sys.indexes i INNER JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id INNER JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id WHERE i.name = 'IX_Orders_OrderDate_INCLUDE' AND ic.is_included_column = 1;` Verify CustomerID, TotalAmount, and Status appear as included columns.

Step 6: Create a filtered index to optimize queries on active customers only

Filtered indexes are smaller and more efficient for queries that consistently filter on the same predicate.

Execute this script:

       65317A - Querying and Analyzing SQL Server 2025

9-36 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO – Create filtered index for active customers only CREATE NONCLUSTERED INDEX IX_Customers_State_Active_Filtered

     ON Customers(State, City)
      INCLUDE (FirstName, LastName, Email)
      WHERE IsActive = 1;

PRINT ‘Filtered index created successfully.’; GO – Test query that benefits from filtered index SET STATISTICS IO ON; GO SELECT CustomerID, FirstName, LastName, Email, City, State FROM Customers WHERE State = ‘WA’ AND IsActive = 1 ORDER BY City, LastName; GO SET STATISTICS IO OFF; GO – View filtered index details SELECT i.name AS IndexName, i.type_desc, i.filter_definition, i.has_filter FROM sys.indexes i WHERE i.name = ‘IX_Customers_State_Active_Filtered’;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-37

Expected Output: Results from SELECT query:

CustomerID FirstName LastName Email City State

1 John Smith john.smith@email.com Seattle WA

3 Michael Williams mwilliams@email.com Seattle WA

8 Lisa Wilson lwilson@email.com Seattle WA

5 David Jones djones@email.com Tacoma WA

Index details query shows:

IndexName type_desc filter_definition has_filter

IX_Customers_State_Active_Filtered NONCLUSTERED (\[IsActive\]=(1)) 1

Messages tab shows efficient IO:

Table ‘Customers’. Scan count 1, logical reads 2

Verification: Execute: `SELECT has_filter, filter_definition FROM sys.indexes WHERE name = 'IX_Customers_State_Active_Filtered';` Verify has_filter = 1 and filter_definition shows ‘(\[IsActive\]=(1))’.

Step 7: Create a JSON index to optimize queries on JSON data in SQL Server 2025

SQL Server 2025 (version 17) supports optimized JSON indexes for queries using JSON_VALUE and JSON_QUERY functions. Execute this script:

                           65317A - Querying and Analyzing SQL Server 2025

9-38 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO

– First, query JSON data without an index SET STATISTICS IO ON; GO

SELECT CustomerID, FirstName, LastName, JSON_VALUE(Preferences, ‘$`.newsletter') AS NewsletterOptIn,
      JSON_VALUE(Preferences, '`$.sms’) AS SMSOptIn

FROM Customers WHERE JSON_VALUE(Preferences, ‘\$.newsletter’) = ‘true’; GO

– Create computed columns for JSON properties (required for indexing in SQL Server 2025) ALTER TABLE Customers

     ADD NewsletterPref AS CAST(JSON_VALUE(Preferences, '$.newsletter') AS BIT) PERSISTED;

ALTER TABLE Customers ADD SMSPref AS CAST(JSON_VALUE(Preferences, ‘\$.sms’) AS BIT) PERSISTED;

GO

– Create index on the computed column CREATE NONCLUSTERED INDEX IX_Customers_NewsletterPref

     ON Customers(NewsletterPref)
      WHERE NewsletterPref = 1;

PRINT ‘JSON-based index created successfully.’; GO

– Re-run query using computed column SELECT

     CustomerID,
      FirstName,
      LastName,
      NewsletterPref,
      SMSPref

FROM Customers WHERE NewsletterPref = 1; GO

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-39

SET STATISTICS IO OFF;

Expected Output: Results show customers who opted in for newsletter:

CustomerID FirstName LastName NewsletterPref SMSPref

1 John Smith 1 0

3 Michael Williams 1 1

5 David Jones 1 1

6 Jennifer Davis 1 0

8 Lisa Wilson 1 1

Messages tab shows:

JSON-based index created successfully. Table ‘Customers’. Scan count 1, logical reads 2

Verification: Execute: `SELECT name, type_desc FROM sys.indexes WHERE object_id = OBJECT_ID('Customers') AND name = 'IX_Customers_NewsletterPref';` Verify the index exists. Then execute: `SELECT name FROM sys.computed_columns WHERE object_id = OBJECT_ID('Customers');` Verify NewsletterPref and SMSPref are listed.

Step 8: Query the index usage statistics to evaluate which indexes are being utilized

SQL Server tracks index usage through the sys.dm_db_index_usage_stats DMV (Dynamic Management View).

Execute this script:

                       65317A - Querying and Analyzing SQL Server 2025

9-40 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO

– View index usage statistics for all tables in the database SELECT

OBJECT_NAME(s.object_id) AS TableName, i.name AS IndexName, i.type_desc AS IndexType, s.user_seeks AS UserSeeks, s.user_scans AS UserScans, s.user_lookups AS UserLookups, s.user_updates AS UserUpdates, s.last_user_seek AS LastUserSeek, s.last_user_scan AS LastUserScan FROM sys.dm_db_index_usage_stats s INNER JOIN sys.indexes i ON s.object_id = i.object_id AND s.index_id = i.index_id WHERE s.database_id = DB_ID(‘RetailAnalytics’) AND OBJECTPROPERTY(s.object_id, ‘IsUserTable’) = 1 ORDER BY TableName, IndexName;

Expected Output: Results show index usage patterns:

TableName IndexName IndexType UserSeeks UserScans UserLookups UserUpdates

Customers CIX_Customers_CustomerID CLUSTERED 0 2 0 0 NULL

Customers IX_Customers_NewsletterPref NONCLUSTERED 0 1 0 0 NULL

Customers IX_Customers_State_Active_Filtered NONCLUSTERED 1 0 0 0 2024-…

Orders CIX_Orders_OrderID CLUSTERED 0 1 3 0 NULL 20

Orders IX_Orders_CustomerID NONCLUSTERED 1 0 0 0 2024-…

Orders IX_Orders_OrderDate_INCLUDE NONCLUSTERED 0 2 0 0 NULL

…

Note: Exact values depend on which queries were executed in previous steps.

Verification: Verify the result set contains indexes from all three tables (Customers, Orders, OrderDetails). UserSeeks and UserScans should have non-zero values for indexes used in previous queries.

                    65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-41

Step 9: Use the missing index DMVs to identify index recommendations

SQL Server automatically tracks queries that could benefit from additional indexes. Execute this script:

                                                        65317A - Querying and Analyzing SQL Server 2025

9-42 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO

– First, run a query that would benefit from a missing index SELECT

     o.OrderID,
      o.OrderDate,
      o.TotalAmount,
      o.Status

FROM Orders o WHERE o.Status = ‘Completed’ AND o.TotalAmount \> 200 ORDER BY o.OrderDate DESC; GO

– Query the missing index DMVs SELECT

     d.statement AS TableName,
      d.equality_columns AS EqualityColumns,
      d.inequality_columns AS InequalityColumns,
      d.included_columns AS IncludedColumns,
      s.avg_user_impact AS AvgUserImpact,
      s.user_seeks AS UserSeeks,
      s.user_scans AS UserScans,
      'CREATE NONCLUSTERED INDEX IX_' +

         OBJECT_NAME(d.object_id) + '_' +
         REPLACE(REPLACE(REPLACE(ISNULL(d.equality_columns, ''), ', ', '_'), '[', ''), ']', '') +
         CASE WHEN d.inequality_columns IS NOT NULL

             THEN '_' + REPLACE(REPLACE(REPLACE(d.inequality_columns, ', ', '_'), '[', ''), ']', '')
             ELSE '' END +
         ' ON ' + d.statement +
         ' (' + ISNULL(d.equality_columns, '') +
         CASE WHEN d.inequality_columns IS NOT NULL
             THEN CASE WHEN d.equality_columns IS NOT NULL THEN ', ' ELSE '' END + d.inequality_columns
             ELSE '' END + ')' +
         CASE WHEN d.included_columns IS NOT NULL
             THEN ' INCLUDE (' + d.included_columns + ')'
             ELSE '' END + ';' AS CreateIndexStatement

FROM sys.dm_db_missing_index_details d INNER JOIN sys.dm_db_missing_index_groups g ON d.index_handle = g.index_handle INNER JOIN sys.dm_db_missing_index_group_stats s ON g.index_group_handle = s.group_handle WHERE d.database_id = DB_ID(‘RetailAnalytics’) ORDER BY s.avg_user_impact DESC;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-43

Expected Output: Results show missing index recommendations:

TableName EqualityColumns InequalityColumns IncludedColumns AvgUserImpact U

\[RetailAnalytics\].\[dbo\].\[Orders\] \[Status\] \[TotalAmount\] \[OrderID\],\[OrderDate\] 65.5 1

Note: Results depend on query execution history since SQL Server service started. If no results appear, the DMV cache may have been cleared.

Verification: The avg_user_impact column shows the estimated percentage improvement. Values above 50 indicate high-impact missing indexes. If no results appear, execute the SELECT query from the script again, then re-run the missing index query.

Step 10: Check index fragmentation and understand maintenance requirements

Index fragmentation occurs over time with data modifications and affects query performance. Execute this script:

          65317A - Querying and Analyzing SQL Server 2025

9-44 Module 9: Indexing Strategies for Modern Workloads

USE RetailAnalytics; GO

– Check fragmentation for all indexes in the database SELECT

OBJECT_NAME(ips.object_id) AS TableName, i.name AS IndexName, i.type_desc AS IndexType, ips.index_type_desc, ips.avg_fragmentation_in_percent, ips.page_count, ips.record_count, CASE

     WHEN ips.avg_fragmentation_in_percent > 30 THEN 'REBUILD recommended'
      WHEN ips.avg_fragmentation_in_percent > 10 THEN 'REORGANIZE recommended'
      ELSE 'No action needed'

END AS Recommendation FROM sys.dm_db_index_physical_stats( DB_ID(‘RetailAnalytics’), NULL, NULL, NULL, ‘LIMITED’) AS ips INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id WHERE OBJECTPROPERTY(ips.object_id, ‘IsUserTable’) = 1 AND ips.index_id \> 0 – Exclude heaps ORDER BY ips.avg_fragmentation_in_percent DESC;

Expected Output: Results show fragmentation status:

TableName IndexName IndexType index_type_desc avg_fragmentation_in_perce

OrderDetails IX_OrderDetails_ProductID NONCLUSTERED NONCLUSTERED INDEX 0.00

Orders IX_Orders_OrderDate_INCLUDE NONCLUSTERED NONCLUSTERED INDEX 0.00

Customers CIX_Customers_CustomerID CLUSTERED CLUSTERED INDEX 0.00

…

Note: With small sample data, fragmentation will be minimal (0-5%). In production databases with significant data modifications, fragmentation percentages will be higher.

                    65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-45

Verification: All indexes should show low fragmentation (\< 10%) because the database is new. Execute: `SELECT COUNT(*) FROM sys.dm_db_index_physical_stats(DB_ID('RetailAnalytics'), NULL, NULL, NULL, 'LIMITED') WHERE index_id > 0;` Verify the count matches the number of indexes created (should be 9 total indexes across all tables).

Step 11: Analyze query execution plans to verify index usage

Execution plans show exactly which indexes SQL Server uses to satisfy queries.

1.  In SSMS, click Query menu \> Include Actual Execution Plan (or press Ctrl+M)
2.  Execute the following script:

USE RetailAnalytics; GO

– Query 1: Should use covering index SELECT OrderID, CustomerID, OrderDate, TotalAmount, Status FROM Orders WHERE OrderDate \>= ‘2024-01-25’ ORDER BY OrderDate; GO

– Query 2: Should use filtered index SELECT CustomerID, FirstName, LastName, City, State FROM Customers WHERE State = ‘WA’ AND IsActive = 1; GO

– Query 3: Should use join with nonclustered index SELECT

     c.FirstName,
      c.LastName,
      o.OrderID,
      o.OrderDate,
      o.TotalAmount

FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID WHERE c.State = ‘OR’; GO

3.  Click the Execution plan tab below the results

4.  Hover over the Index Seek or Index Scan operators to see tooltip details

                                                         65317A - Querying and Analyzing SQL Server 2025

    9-46 Module 9: Indexing Strategies for Modern Workloads

    Expected Output: Results tab shows query results for each query. Execution Plan tab displays graphical plans showing:

          Query 1: Index Scan on IX_Orders_OrderDate_INCLUDE (covering index used)
          Query 2: Index Seek on IX_Customers_State_Active_Filtered (filtered index used)
          Query 3: Nested Loops join with Index Seek on IX_Orders_CustomerID and Clustered Index
          Seek on CIX_Customers_CustomerID

    Tooltips show: Object: The index name being used Seek Predicates or Scan Predicates: The WHERE clause conditions Output List: Columns being retrieved Estimated Row Count and Actual Row Count

Verification: In each execution plan, verify that the operators show specific index names (not “Table Scan” or “Clustered Index Scan” where filtered indexes should apply). Index Seeks are generally more efficient than Index Scans. Right-click the execution plan and select **Show Execution Plan XML** to see detailed index usage information.

Step 12: Create an index maintenance script using ALTER INDEX REBUILD

Execute this script to create a maintenance procedure:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-47

USE RetailAnalytics; GO

– Create stored procedure for index maintenance CREATE OR ALTER PROCEDURE dbo.RebuildFragmentedIndexes

@FragmentationThreshold FLOAT = 30.0 AS BEGIN

SET NOCOUNT ON;

DECLARE @SQL NVARCHAR(MAX); DECLARE @TableName NVARCHAR(128); DECLARE @IndexName NVARCHAR(128); DECLARE @Fragmentation FLOAT;

– Create temporary table to store fragmented indexes CREATE TABLE \#FragmentedIndexes (

     TableName NVARCHAR(128),
      IndexName NVARCHAR(128),
      Fragmentation FLOAT

);

– Find fragmented indexes INSERT INTO \#FragmentedIndexes SELECT

     OBJECT_NAME(ips.object_id) AS TableName,
      i.name AS IndexName,
      ips.avg_fragmentation_in_percent

FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, ‘LIMITED’) AS ips INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id WHERE ips.avg_fragmentation_in_percent \> @FragmentationThreshold AND ips.page_count \> 100 – Only rebuild indexes with significant pages AND i.name IS NOT NULL;

– Rebuild each fragmented index DECLARE index_cursor CURSOR FOR

     SELECT TableName, IndexName, Fragmentation FROM #FragmentedIndexes;

OPEN index_cursor; FETCH NEXT FROM index_cursor INTO @TableName, @IndexName, @Fragmentation;

WHILE @@FETCH_STATUS = 0 BEGIN

     SET @SQL = 'ALTER INDEX ' + QUOTENAME(@IndexName) +
              ' ON dbo.' + QUOTENAME(@TableName) + ' REBUILD;';

                                                     65317A - Querying and Analyzing SQL Server 2025

9-48 Module 9: Indexing Strategies for Modern Workloads

        PRINT 'Rebuilding index: ' + @IndexName + ' on table: ' + @TableName +
              ' (Fragmentation: ' + CAST(@Fragmentation AS VARCHAR(10)) + '%)';

         EXEC sp_executesql @SQL;
         FETCH NEXT FROM index_cursor INTO @TableName, @IndexName, @Fragmentation;
      END;
      CLOSE index_cursor;
      DEALLOCATE index_cursor;
      DROP TABLE #FragmentedIndexes;
      PRINT 'Index maintenance completed.';

END; GO – Test the procedure EXEC dbo.RebuildFragmentedIndexes @FragmentationThreshold = 5.0;

    Expected Output:
     Messages tab shows:

         Index maintenance completed.

     Since the database is new with minimal fragmentation, no indexes will be rebuilt. In a production
     scenario with fragmented indexes, output would show:

         Rebuilding index: IX_Orders_CustomerID on table: Orders (Fragmentation: 35.2%)
         Rebuilding index: CIX_Customers_CustomerID on table: Customers (Fragmentation: 42.1%)
         Index maintenance completed.

Verification: Execute: `SELECT name FROM sys.procedures WHERE name = 'RebuildFragmentedIndexes';` Verify the stored procedure exists. Then execute: `SELECT OBJECT_DEFINITION(OBJECT_ID('dbo.RebuildFragmentedIndexes'));` to view the procedure code.

Step 13: Document index strategy recommendations for the development team

Create a summary view of all indexes and recommendations:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-49

USE RetailAnalytics; GO – Create comprehensive index documentation view CREATE OR ALTER VIEW dbo.vw_IndexStrategy AS SELECT

OBJECT_SCHEMA_NAME(i.object_id) AS SchemaName, OBJECT_NAME(i.object_id) AS TableName, i.name AS IndexName, i.type_desc AS IndexType, i.is_unique AS IsUnique, i.is_primary_key AS IsPrimaryKey, i.has_filter AS IsFiltered, i.filter_definition AS FilterDefinition, STUFF((

     SELECT ', ' + c.name + CASE WHEN ic.is_descending_key = 1 THEN ' DESC' ELSE '' END

                                                     65317A - Querying and Analyzing SQL Server 2025

9-50 Module 9: Indexing Strategies for Modern Workloads

      Common Student Errors
     Students create too many nonclustered indexes without analyzing actual queries, leading
     to maintenance overhead that negates performance gains.
     Have them run sys.dm_db_index_usage_stats early and identify which indexes are actually used.
     Reinforce the cost/benefit equation verbally and with data.
     Students misunderstand the clustered index as optional or secondary to nonclustered
     indexes; they build nonclustered indexes first.
     Require them to design the clustered index strategy first, justifying their choice based on query
     patterns. Show how changing the clustered index affects all nonclustered index keys.
     Students ignore INCLUDE columns and add every column to the index key, creating wide
     indexes with poor seek performance.
     Explain the distinction: key columns define the index structure and support seeking/sorting;
     INCLUDE columns satisfy covering but don't increase index width in the B-tree. Show execution
     plans before and after moving columns to INCLUDE.
     Students rebuild all indexes indiscriminately, consuming log space and blocking users,
     without checking fragmentation first.
     Require them to query sys.dm_db_index_physical_stats before any maintenance operation. Show
     the cost of large rebuilds in the transaction log.
     Students create filtered indexes with logic that doesn't align with their queries, rendering
     them unused.
     Have them write the WHERE clause in their filtered index query first, then verify it matches their
     actual query filters.
     Students misinterpret missing index recommendations and create redundant indexes
     similar to existing ones.
     Guide them to compare recommended indexes to existing indexes and consolidate where
     possible. Show how missing index DMVs can suggest overlapping coverage.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 9: Indexing Strategies for Modern Workloads 9-51

Answer Key

1.  What is the primary characteristic that distinguishes a clustered index from a nonclustered index?

    1)  A clustered index stores data in a separate structure while nonclustered indexes store data with the table
    2)  A clustered index determines the physical order of table data while nonclustered indexes create separate structures
    3)  A clustered index can include multiple columns while nonclustered indexes support only single columns
    4)  A clustered index requires less storage space than a nonclustered index

    Answer: B A clustered index determines the physical order of data in the table–the clustered index IS the table. Nonclustered indexes create separate structures with pointers to the data. Each table can have only one clustered index because data can be physically sorted in only one way.

2.  Which characteristics make an ideal clustered index key?

    1)  Wide, frequently updated, and randomly distributed values
    2)  Unique, narrow, static, and ever-increasing values
    3)  Multiple columns, nullable, and character-based values
    4)  Composite keys with GUIDs and timestamps

    Answer: B The ideal clustered index key is unique (ensures distinct positions), narrow (reduces index size), static (avoids row relocations), and ever-increasing (minimizes page splits and fragmentation). Identity columns and sequential timestamps are common examples.

3.  What is the purpose of the INCLUDE clause when creating a nonclustered index?

    1)  To add columns to the B-tree structure for faster searching

    2)  To add non-key columns at the leaf level to create covering indexes

    3)  To specify columns that should be filtered from the index

                                                          65317A - Querying and Analyzing SQL Server 2025

        9-52 Module 9: Indexing Strategies for Modern Workloads

    4)  To define columns for the clustered index key

    Answer: B The INCLUDE clause adds non-key columns at the leaf level of a nonclustered index. These columns don’t participate in the B-tree structure but are available to queries, creating covering indexes that eliminate expensive key lookups without increasing the index’s navigational overhead.

4.  When should you use a filtered index?

    1)  When you need to index all rows in a large table
    2)  When queries consistently filter on specific values or data subsets
    3)  When the table has no WHERE clause queries
    4)  When you want to replace the clustered index

    Answer: B Filtered indexes are ideal when queries consistently filter on specific values or subsets of data. They include only rows matching a WHERE predicate, reducing storage and maintenance costs while improving query performance for matching queries. Common use cases include sparse columns, specific status values, or recent date ranges.

5.  What type of workload benefits most from columnstore indexes?

    1)  Transactional workloads with frequent single-row lookups
    2)  Analytical workloads with aggregations across millions of rows
    3)  Workloads with primarily UPDATE and DELETE operations
    4)  Workloads requiring real-time row-by-row processing

    Answer: B Columnstore indexes excel at analytical workloads that aggregate (SUM, AVG, COUNT) across millions of rows. They store data by column rather than by row, delivering exceptional compression (10x or better) and query performance (10-100x improvement) for analytical queries. Traditional row-based indexes are better for transactional OLTP workloads.

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 9: Indexing Strategies for Modern Workloads 9-53

6.  According to best practices, what action should you take when an index shows 25% fragmentation?

    1)  No action is needed
    2)  Reorganize the index
    3)  Rebuild the index
    4)  Drop and recreate the index

    Answer: B For indexes with 10-30% fragmentation, reorganize the index using ALTER INDEX…REORGANIZE. This is an online operation that uses minimal resources. Rebuild is recommended for fragmentation above 30%. No action is needed for fragmentation below 10%.

7.  Which DMV tracks read and write operations for each index since SQL Server started?

    1)  sys.dm_db_index_physical_stats
    2)  sys.dm_db_missing_index_details
    3)  sys.dm_db_index_usage_stats
    4)  sys.dm_exec_query_stats Answer: C sys.dm_db_index_usage_stats tracks user_seeks, user_scans, user_lookups, and user_updates for each index since SQL Server started. This information helps identify heavily used indexes, unused indexes, and update-heavy indexes that may need reconsideration.

8.  What does the avg_user_impact column in the missing index DMVs represent?

    1)  The number of users affected by the missing index

    2)  The estimated percentage improvement if the index were created

    3)  The average time saved per query in milliseconds

    4)  The number of queries that would use the index

                                                          65317A - Querying and Analyzing SQL Server 2025

        9-54 Module 9: Indexing Strategies for Modern Workloads

    Answer: B The avg_user_impact column estimates the percentage improvement in query performance if the recommended index were created. Focus on recommendations with high impact (\>50%), high usage (frequent seeks/scans), and reasonable column counts when prioritizing missing index recommendations.

9.  What is a key lookup in the context of nonclustered indexes?

    1)  The initial search operation in the index B-tree structure
    2)  The operation of following row locators from the index to the base table to retrieve additional columns
    3)  The process of finding the clustered index key value
    4)  The maintenance operation that reorganizes fragmented indexes

    Answer: B A key lookup (also called bookmark lookup) occurs when SQL Server uses a nonclustered index to find matching rows but must then follow row locators to the base table to retrieve columns not included in the index. Covering indexes with INCLUDE columns eliminate key lookups by including all needed columns in the index structure.

10. Which SQL Server 2025 (version 17) feature enables indexing of semi-structured data stored in JSON format?

    1)  XML indexes
    2)  Full-text indexes
    3)  JSON indexes on JSON paths
    4)  Spatial indexes

    Answer: C SQL Server 2025 (version 17) introduces native JSON indexing capabilities, allowing you to create indexes on JSON paths to accelerate queries against semi-structured data. This feature improves performance for applications storing configuration data, user preferences, or flexible schemas in JSON columns.

                                                         65317A - Querying and Analyzing SQL Server 2025

     Module 9: Indexing Strategies for Modern Workloads 9-55

Module Summary

Module 9 explored comprehensive indexing strategies for SQL Server 2025 (version 17). You learned how clustered indexes define physical data organization and how nonclustered indexes with covering strategies eliminate expensive lookups. The module covered specialized indexes including filtered indexes for data subsets, columnstore indexes for analytical workloads, and JSON indexes for semi-structured data. You discovered how to monitor index fragmentation, maintain optimal performance through reorganization and rebuilding, and use DMVs to analyze usage patterns and identify missing index opportunities. These skills enable you to design efficient index strategies that balance query performance against storage and maintenance costs.

                                                        65317A - Querying and Analyzing SQL Server 2025

INSTRUCTOR GUIDE

Querying and Analyzing SQL Server 2025

        Module 10: Intelligent Query Processing (IQP) 2025

                                                           65317A
                                   3-day course ? 10 modules ? beginner level

Contents

Module 10: Intelligent Query Processing (IQP) 2025

Lesson 1: Introduction to Intelligent Query Processing Lesson 2: Database Compatibility Level Requirements Lesson 3: Optimized Locking in SQL Server 2025 Lesson 4: Parameter Sensitive Plan Optimization Lesson 5: Cardinality Estimation and Memory Grant Feedback Lesson 6: Adaptive Joins and Batch Mode Processing Lesson 7: Monitoring IQP with Query Store Lesson 8: IQP-Related DMVs and System Views Lesson 9: IQP Best Practices Lesson 10: Troubleshooting IQP Issues Lab: Implementing and Monitoring Intelligent Query Processing Features Answer Key Module Summary

Day 3 Capstone Lab: Performance Remediation Project: Global Logistics Platform Database  Module 10: Intelligent Query Processing (IQP) 2025 10-1

Learning Objectives

After completing this module, you will be able to: Enable and configure Intelligent Query Processing features in SQL Server 2025 (version 17) Leverage Optimized Locking to reduce blocking and improve concurrency Apply parameter sensitivity plan optimization for variable workloads Monitor IQP feature activation using Query Store and system views

Instructor Note This guide contains additional teaching notes, facilitation tips, answer keys, and time estimates marked with the icon. These sections are not included in the student edition.

                                                  65317A - Querying and Analyzing SQL Server 2025

10-2 Module 10: Intelligent Query Processing (IQP) 2025

      Module Overview
     This module covers SQL Server 2025's Intelligent Query Processing (IQP) features designed to
     improve query performance automatically with minimal configuration. Students will learn to
     enable IQP features, optimize for variable workloads, and monitor effectiveness using Query
     Store and DMVs. Estimated delivery time: 3.5-4 hours including lab.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-3

Lesson 1: Introduction to Intelligent Query Processing

      Estimated Time: 20 minutes

What is Intelligent Query Processing?

Intelligent Query Processing (IQP) represents a collection of adaptive, self-tuning features in SQL Server that automatically improve query performance without requiring application code changes. SQL Server 2025 (version 17) introduces significant enhancements to the IQP family, building on capabilities introduced in earlier versions. The Evolution of IQP IQP features have evolved across multiple SQL Server releases:

SQL Server 2017: Introduced batch mode adaptive joins and memory grant feedback SQL Server 2019: Added table variable deferred compilation, scalar UDF inlining, and batch mode on rowstore SQL Server 2022: Introduced Parameter Sensitive Plan (PSP) optimization, cardinality estimation feedback, and degree of parallelism feedback SQL Server 2025: Adds Optimized Locking and enhanced memory grant feedback persistence How IQP Works IQP features operate at the query optimizer and execution engine levels. They learn from actual query execution patterns and automatically adjust execution strategies. The Query Store serves as the foundation for many IQP features, storing historical execution statistics and plan information that enables intelligent adaptations. Key Benefits Automatic performance improvements without code changes Adaptive behavior that responds to changing data patterns Reduced tuning overhead for database administrators Backward compatibility through database compatibility levels

                                                        65317A - Querying and Analyzing SQL Server 2025

10-4 Module 10: Intelligent Query Processing (IQP) 2025

                Evolution timeline showing IQP features introduced across SQL Server versions from 2017 to 2025

     Key Takeaways
          IQP is a family of self-tuning features that automatically optimize query performance
          SQL Server 2025 adds Optimized Locking and enhanced memory grant feedback
          Query Store provides the foundation for IQP learning and adaptation
          IQP features activate based on database compatibility level settings

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-5

Instructor Notes Talking Points:

IQP as an automatic performance enhancement framework introduced in SQL Server 2017 and expanded in 2025 Distinction between IQP features that are automatic vs. those requiring explicit enablement How IQP reduces need for manual query tuning and plan guides Version 17 (2025) enhancements over previous IQP implementations Compatibility level 160 minimum requirement for full IQP feature set Demo Suggestion: Show SQL Server 2025 Books Online page for IQP; demonstrate a simple query with/without IQP enabled to illustrate the conceptual difference in execution Common Student Questions: Q: Is IQP enabled by default in SQL Server 2025? A: IQP is enabled by default at the database level starting with compatibility level 160, but individual features can be toggled via database-scoped configuration options Q: Will enabling IQP impact my existing queries negatively? A: IQP features are designed to improve performance; however, test in non-production environments first to ensure compatibility with your specific workloads Q: Can IQP be used with older compatibility levels? A: Most IQP features require compatibility level 140 or higher; SQL Server 2025 (version 17) benefits are optimal at level 160

                                                  65317A - Querying and Analyzing SQL Server 2025

10-6 Module 10: Intelligent Query Processing (IQP) 2025

Lesson 2: Database Compatibility Level Requirements

      Estimated Time: 15 minutes

Enabling IQP Through Compatibility Levels

Database compatibility level is the primary control mechanism for activating IQP features. This design allows you to upgrade your SQL Server instance while maintaining legacy application behavior, then selectively enable new features by adjusting compatibility levels. Compatibility Level Hierarchy SQL Server 2025 supports compatibility levels from 100 (SQL Server 2008) through 170 (SQL Server 2025). Each level unlocks specific IQP features:

Level 140 (SQL Server 2017): Adaptive joins, memory grant feedback (batch mode) Level 150 (SQL Server 2019): Table variable deferred compilation, batch mode on rowstore, scalar UDF inlining Level 160 (SQL Server 2022): Parameter Sensitive Plan optimization, cardinality estimation feedback, memory grant feedback (row mode) Level 170 (SQL Server 2025): Optimized Locking, enhanced memory grant feedback persistence Checking Current Compatibility Level

SELECT name, compatibility_level FROM sys.databases WHERE name = ‘YourDatabaseName’;

Changing Compatibility Level

ALTER DATABASE YourDatabaseName SET COMPATIBILITY_LEVEL = 170;

Best Practices Always test compatibility level changes in non-production environments first. While IQP features generally improve performance, some workloads may experience plan changes. Use Query Store to

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-7

monitor before and after performance metrics.

Layered pyramid showing compatibility levels 140, 150, 160, and 170 with associated IQP features at each tier

Key Takeaways Compatibility level controls which IQP features are available to a database SQL Server 2025 uses compatibility level 170 to enable all latest IQP features Upgrading compatibility level is separate from upgrading the SQL Server instance Query Store helps monitor performance impact of compatibility level changes

65317A - Querying and Analyzing SQL Server 2025 10-8 Module 10: Intelligent Query Processing (IQP) 2025

      Instructor Notes
     Talking Points:

          Compatibility level 160 as the baseline for SQL Server 2025 IQP features
          Breaking changes and cardinality estimation model differences between compatibility levels
          How to check and upgrade database compatibility levels safely
          Implications of running mixed compatibility levels in the same instance
          Testing strategy before upgrading compatibility levels in production
     Demo Suggestion: Show ALTER DATABASE syntax to change compatibility level; demonstrate
     sys.databases query to verify current compatibility levels across user databases; show trace flag
     9481 usage for IQP feature toggling
     Common Student Questions:
     Q: What is the safest way to upgrade database compatibility level?
     A: Test in development/staging first, use query store baselines, perform upgrade during
     maintenance window, and have rollback plan ready
     Q: Can I enable individual IQP features independently?
     A: Yes, use database-scoped configuration options like QUERY_OPTIMIZER_HOTFIXES and feature-
     specific trace flags to enable/disable specific IQP capabilities

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-9

Lesson 3: Optimized Locking in SQL Server 2025

      Estimated Time: 25 minutes

Revolutionary Concurrency Improvements

Optimized Locking is the flagship IQP feature in SQL Server 2025 (version 17), fundamentally changing how the database engine handles concurrent access to data. This feature reduces blocking and improves throughput for OLTP workloads. Traditional Locking Challenges In traditional locking mechanisms, transactions acquire locks on data pages or rows, which can create blocking chains when multiple sessions need access to the same resources. Long-running transactions or high-concurrency scenarios often result in lock waits that degrade application performance. How Optimized Locking Works Optimized Locking uses a hybrid approach that combines elements of traditional locking with row versioning. For qualifying operations, the engine maintains optimistic concurrency semantics while ensuring transactional consistency. This reduces the duration and scope of exclusive locks, allowing greater parallelism. Key Characteristics

Automatic activation for eligible tables and queries Transparent operation requiring no application changes Reduced lock escalation through intelligent lock management Lower memory overhead compared to full row versioning (READ_COMMITTED_SNAPSHOT) Enabling Optimized Locking

                                                        65317A - Querying and Analyzing SQL Server 2025

10-10 Module 10: Intelligent Query Processing (IQP) 2025

– Enable at database level (requires compatibility level 170) ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZED_LOCKING = ON; – Enable for specific table ALTER TABLE dbo.Orders SET (OPTIMIZED_LOCKING = ON);

Monitoring Optimized Locking Use the sys.dm_db_optimized_locking_stats DMV to observe Optimized Locking activity and measure concurrency improvements.

Before and after comparison showing reduced blocking with Optimized Locking–left side shows queued transactions waiting, right side shows concurrent access

    Key Takeaways
          Optimized Locking reduces blocking by using hybrid locking and versioning techniques
          Available only in SQL Server 2025 at compatibility level 170
          Can be enabled database-wide or for individual tables
          Provides concurrency benefits with lower overhead than full snapshot isolation

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-11

Instructor Notes Talking Points:

Optimized locking overview: reducing lock waits and blocking without sacrificing consistency How optimized locking integrates with row versioning and snapshot isolation Lock escalation behavior changes under optimized locking Interaction between optimized locking and Accelerated Database Recovery (ADR) Monitoring optimized locking effectiveness through wait statistics Demo Suggestion: Create two sessions simulating blocking scenario; show sp_whoisactive or sys.dm_exec_requests output before/after enabling optimized locking; demonstrate DBCC TRACESTATUS output for relevant trace flags Common Student Questions: Q: Does optimized locking require any schema changes? A: No, optimized locking is a storage engine enhancement that works transparently with existing schemas and applications Q: What workloads benefit most from optimized locking? A: OLTP systems with high concurrency, frequent updates to hot tables, and read-heavy workloads that experience blocking on shared locks Q: Is there a performance cost to enabling optimized locking? A: Optimized locking is designed to be a pure performance gain; no typical production workload should see degradation

                                                  65317A - Querying and Analyzing SQL Server 2025

10-12 Module 10: Intelligent Query Processing (IQP) 2025

Lesson 4: Parameter Sensitive Plan Optimization

      Estimated Time: 30 minutes

Solving the Parameter Sniffing Problem

Parameter Sensitive Plan (PSP) optimization addresses one of the most challenging query performance issues: parameter sniffing problems in stored procedures and parameterized queries. Introduced in SQL Server 2022 and enhanced in 2025, PSP automatically creates multiple execution plans for a single query based on parameter value characteristics. The Parameter Sniffing Challenge When SQL Server compiles a stored procedure, it examines (“sniffs”) the first set of parameter values to estimate row counts and choose an execution plan. This plan is cached and reused for subsequent executions. Problems arise when:

Initial parameters are atypical of the general workload Parameter values have significantly different data distributions A single plan cannot efficiently serve all parameter ranges How PSP Works PSP automatically detects when a query would benefit from multiple plans. The optimizer identifies “dispatching predicates”–WHERE clause conditions whose parameter values significantly affect optimal plan choice. SQL Server then creates and caches multiple plan variants, each optimized for different parameter value ranges. Example Scenario

CREATE PROCEDURE GetOrdersByStatus @Status VARCHAR(20)

AS BEGIN

     SELECT OrderID, CustomerID, OrderDate
      FROM Orders
      WHERE Status = @Status;

END;

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-13

If 95% of orders have Status = ‘Pending’ but only 2% are ‘Shipped’, PSP creates separate plans: one using an index scan for ‘Pending’, another using an index seek for ‘Shipped’. Monitoring PSP Query Store records PSP plan variants with the is_parameter_sensitive flag. Review sys.query_store_plan to identify queries benefiting from PSP optimization.

Illustration showing a single parameterized query branching into multiple optimized execution paths based on different parameter values

    Key Takeaways
         PSP optimization creates multiple cached plans for parameterized queries based on
         parameter characteristics
         Automatically solves parameter sniffing problems without code changes
         Requires compatibility level 160 or higher
         Query Store tracks PSP plan variants for monitoring and analysis

                                                         65317A - Querying and Analyzing SQL Server 2025

10-14 Module 10: Intelligent Query Processing (IQP) 2025

      Instructor Notes
     Talking Points:

          Problem definition: parameter sniffing and plan caching inefficiency with variable input values
          Parameter Sensitive Plan (PSP) optimization as automatic solution vs. manual
          hints/sp_recompile
          How PSP detection identifies sensitivity and creates multiple plan variants
          Query Store role in PSP implementation and plan selection
          Performance implications of PSP: memory overhead vs. query optimization benefits
          Scenarios where PSP may not be beneficial (e.g., already well-tuned queries)
     Demo Suggestion: Create parameterized query with skewed data distribution (e.g., product ID
     with high selectivity variance); execute with different parameters and show execution plans;
     enable PSP and re-execute to show plan variance; query sys.dm_exec_query_plan_stats to
     visualize multiple plans
     Common Student Questions:
     Q: How does SQL Server decide when to use PSP optimization?
     A: Query Optimizer analyzes parameter distributions and execution statistics; if sensitivity is
     detected, SQL Server creates conditional logic to choose optimal plans
     Q: Can PSP cause query compilation overhead?
     A: Initially yes, but once compiled and cached, PSP reduces recompilation; Query Store manages
     plan metadata efficiently
     Q: How do I know if my query benefits from PSP?
     A: Check Query Store for queries with multiple plan variants; monitor query execution time
     variability; look for estimated vs. actual row count mismatches

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-15

Lesson 5: Cardinality Estimation and Memory Grant Feedback

      Estimated Time: 25 minutes

Adaptive Learning for Better Resource Allocation

SQL Server 2025 includes two powerful feedback mechanisms that learn from actual query execution: Cardinality Estimation (CE) feedback and Memory Grant feedback. These features continuously refine query execution based on real-world performance data. Cardinality Estimation Feedback Cardinality estimation predicts how many rows a query operation will process. Accurate estimates lead to optimal join strategies, appropriate index usage, and efficient resource allocation. CE feedback works by: 1. Detecting estimation errors: Comparing estimated vs. actual row counts during execution 2. Creating feedback loops: Storing correction information in Query Store 3. Adjusting future executions: Applying learned adjustments to subsequent compilations CE feedback particularly helps with:

Queries involving multiple joins where traditional estimation multiplies errors Correlated predicates that violate independence assumptions Ascending key problems in rapidly growing tables Memory Grant Feedback Memory grants allocate workspace memory for operations like sorts, hashes, and bitmap filters. Memory Grant feedback addresses two problems: Excessive grants: Wasting memory and limiting concurrency Insufficient grants: Causing spills to tempdb and degraded performance The feedback mechanism observes actual memory usage and adjusts grants for future executions. SQL Server 2025 adds persistence to memory grant feedback–corrections survive server restarts

                                                        65317A - Querying and Analyzing SQL Server 2025

10-16 Module 10: Intelligent Query Processing (IQP) 2025

by storing them in Query Store. Monitoring Feedback Mechanisms

SELECT query_id, plan_id, last_execution_time, avg_grant_kb, avg_used_grant_kb

FROM sys.query_store_runtime_stats WHERE avg_grant_kb \> avg_used_grant_kb \* 2;

    Circular feedback loop diagram showing query execution, performance observation, learning, and adjustment cycle

     Key Takeaways
          Cardinality Estimation feedback corrects row count estimation errors over time
          Memory Grant feedback adjusts memory allocations based on actual usage patterns
          SQL Server 2025 persists memory grant corrections across restarts
          Both mechanisms use Query Store to store and apply learned optimizations

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-17

Instructor Notes Talking Points:

Cardinality estimation as foundation for query optimizer decisions Cardinality estimation model (CE) versions and differences (140, 150, 160) Memory Grant Feedback mechanism: how SQL Server adapts memory allocations across executions Persistent Memory Grant Feedback (persisted in Query Store) Integration with adaptive joins for dynamic memory allocation Monitoring CE accuracy and memory grant effectiveness Demo Suggestion: Execute query with large hash join; show estimated vs. actual memory grant in execution plan XML; enable memory grant feedback feedback and re-execute to show adaptation; query sys.dm_exec_query_plan_stats and sys.dm_query_memory_feedback for feedback history Common Student Questions: Q: Should I always use the latest cardinality estimation model? A: Generally yes for SQL Server 2025; however, test thoroughly as CE changes can affect plan choices for existing queries Q: What causes memory grant underestimation? A: Outdated statistics, complex predicates with poor estimation accuracy, or workload changes that shift data distribution Q: How long does memory grant feedback take to show impact? A: Feedback accumulates over multiple executions; measurable improvements typically visible within 3-5 query executions

                                                  65317A - Querying and Analyzing SQL Server 2025

10-18 Module 10: Intelligent Query Processing (IQP) 2025

Lesson 6: Adaptive Joins and Batch Mode Processing

      Estimated Time: 25 minutes

Dynamic Execution Strategies

Adaptive joins and batch mode processing represent foundational IQP features that dynamically adjust execution strategies based on actual data encountered during query processing. Adaptive Joins Explained Adaptive joins allow the query processor to defer the choice between hash join and nested loops join until after scanning the first (outer) input. This addresses a common problem: join strategy selection depends on accurate row count estimates, but actual row counts often differ from estimates. The process works as follows: 1. Query execution begins with an adaptive join operator 2. Rows from the outer input pass through a threshold check 3. If row count exceeds threshold: switch to hash join 4. If row count stays below threshold: use nested loops join Batch Mode on Rowstore Traditionally, batch mode processing (processing 900 rows at once instead of one-at-a-time) was limited to columnstore indexes. SQL Server 2019 extended batch mode to rowstore tables for qualifying queries, significantly improving performance for analytical workloads on traditional tables. Benefits include:

Reduced CPU consumption through vectorized processing Improved cache utilization by processing data in batches Better parallelism for aggregate and join operations Qualification Criteria Not all queries benefit from batch mode on rowstore. The optimizer considers:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-19

Query complexity (typically analytical queries with aggregates and joins) Table size (generally requires tables with at least 130,000 rows) Database compatibility level (150 or higher) Observing Adaptive Behavior Execution plans show adaptive join operators with multiple sub-plans. Actual execution plans reveal which path was chosen at runtime based on actual row counts encountered.

      Fork-in-the-road illustration showing adaptive join choosing between two execution paths based on data volume

     Key Takeaways
         Adaptive joins defer join strategy selection until runtime based on actual row counts
         Batch mode on rowstore extends vectorized processing benefits to traditional tables
         These features work transparently without requiring query modifications
         Execution plans reveal adaptive decisions and batch mode activation

                                                         65317A - Querying and Analyzing SQL Server 2025

10-20 Module 10: Intelligent Query Processing (IQP) 2025

      Instructor Notes
     Talking Points:

          Adaptive joins overview: choosing between hash and loop joins dynamically
          Cost threshold for adaptive join triggering (default 100 MB estimated memory)
          Batch Mode on Row Store (BmorRS) for improved operator efficiency
          Integration with columnstore indexes for batch mode benefits
          Adaptive join plan structure and deferred join decisions
          Performance implications for different join distributions
     Demo Suggestion: Create three-way join scenario with variable cardinality; show adaptive join
     operator in execution plan (deferred join with both algorithms prepared); execute with different
     filter conditions to demonstrate join method switching; compare batch mode operator
     performance against row mode
     Common Student Questions:
     Q: When would adaptive join choose hash vs. nested loop?
     A: Hash join if cardinality is high (uses more memory); nested loop if cardinality is low (faster for
     small inner sets)
     Q: Can batch mode process all operators?
     A: Most operators support batch mode in SQL Server 2025, but some user-defined functions and
     specific operators still require row mode
     Q: What is the overhead of preparing multiple join algorithms?
     A: Minimal; preparation is lightweight and the benefit of choosing optimal algorithm typically
     outweighs small compilation cost

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-21

Lesson 7: Monitoring IQP with Query Store

      Estimated Time: 20 minutes

The Foundation of IQP Observability

Query Store is essential for monitoring, understanding, and troubleshooting Intelligent Query Processing features. It captures query execution statistics, plan history, and IQP-specific metadata that enables comprehensive performance analysis. Enabling Query Store Query Store must be enabled for most IQP features to function. Many IQP capabilities require historical execution data that only Query Store provides.

ALTER DATABASE YourDatabase SET QUERY_STORE = ON (

     OPERATION_MODE = READ_WRITE,
      DATA_FLUSH_INTERVAL_SECONDS = 900,
      INTERVAL_LENGTH_MINUTES = 60,
      MAX_STORAGE_SIZE_MB = 1000

);

Key Query Store Views for IQP sys.query_store_plan: Contains execution plan details including IQP feature flags

     is_parameter_sensitive : Indicates PSP optimization
      has_compile_replay_script : Shows feedback-influenced plans

sys.query_store_runtime_stats: Captures execution metrics avg_grant_kb and avg_used_grant_kb : Monitor memory grant feedback avg_rowcount : Compare with estimated rows for CE feedback insights sys.query_store_plan_feedback: Tracks active feedback mechanisms Shows which queries have CE feedback or memory grant feedback applied

                                                        65317A - Querying and Analyzing SQL Server 2025

10-22 Module 10: Intelligent Query Processing (IQP) 2025

Includes feedback state (validation, applied, reverted) Practical Monitoring Queries

– Identify queries using PSP SELECT q.query_id, qt.query_sql_text,

        COUNT(DISTINCT p.plan_id) AS plan_count

FROM sys.query_store_query q JOIN sys.query_store_plan p ON q.query_id = p.query_id JOIN sys.query_store_query_text qt ON q.query_text_id = qt.query_text_id WHERE p.is_parameter_sensitive = 1 GROUP BY q.query_id, qt.query_sql_text;

Dashboard-style view showing Query Store as central hub connected to various IQP features with monitoring metrics

    Key Takeaways
          Query Store must be enabled for most IQP features to operate
          sys.query_store_plan contains IQP-specific metadata like PSP indicators
          sys.query_store_runtime_stats provides execution metrics for feedback analysis
          Query Store persists IQP learning across server restarts in SQL Server 2025

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-23

Instructor Notes Talking Points:

Query Store as central repository for IQP plan metadata and feedback Viewing plan variants and IQP feature activation status in Query Store Query Store retention and cleanup policies for IQP data Relationship between Query Store hints and IQP feature compatibility Troubleshooting with Query Store reports and custom DMV queries Demo Suggestion: Enable Query Store (if not already); execute parameterized query; open Query Store Top Queries report filtered by IQP features; show plan detail view with multiple plans; query sys.query_store_plan and sys.query_store_query_variant to identify PSP plans Common Student Questions: Q: Does Query Store capture all IQP activity? A: Yes, Query Store captures plan variants, memory feedback history, and adaptive join decisions; enable Query Store in read-write mode for full IQP tracking Q: What is the Query Store storage overhead for IQP? A: Modest; typically 5-10% increase in Query Store size due to plan metadata storage; tune retention policy to manage growth Q: Can I export IQP data from Query Store for analysis? A: Yes, use sys.query_store\_\* DMVs with custom queries; export to Excel or PowerBI for trending and historical analysis

                                                  65317A - Querying and Analyzing SQL Server 2025

10-24 Module 10: Intelligent Query Processing (IQP) 2025

Lesson 8: IQP-Related DMVs and System Views

      Estimated Time: 20 minutes

Real-Time IQP Insights

Beyond Query Store’s historical data, SQL Server 2025 provides dynamic management views (DMVs) that expose real-time IQP activity and current state information. These views are essential for troubleshooting active performance issues and understanding IQP behavior. sys.dm_exec_query_plan_stats Provides actual execution plan statistics including runtime information that reveals IQP decisions:

SELECT qs.query_hash, qps.query_plan, qs.execution_count, qs.total_elapsed_time / 1000000.0 AS total_elapsed_sec

FROM sys.dm_exec_query_stats qs CROSS APPLY sys.dm_exec_query_plan_stats(qs.plan_handle) qps WHERE qs.execution_count \> 10;

sys.dm_db_optimized_locking_stats SQL Server 2025 introduces this DMV specifically for monitoring Optimized Locking:

Lock optimization events Concurrency improvements Tables benefiting from the feature sys.dm_exec_query_optimizer_info Reveals optimizer statistics including IQP feature activations: Adaptive join selections Batch mode transitions Memory grant adjustments sys.dm_exec_query_memory_grants

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-25

Shows active memory grants with columns indicating: requested_memory_kb : Originally estimated grant granted_memory_kb : Actually granted memory used_memory_kb : Memory actually consumed (visible after execution)

Best Practices for DMV Monitoring 1. Combine DMVs with Query Store: DMVs show current activity; Query Store provides historical

trends 2. Regular baseline captures: Snapshot DMV data before and after enabling IQP features 3. Focus on high-impact queries: Filter for queries with high execution counts or long durations 4. Monitor during peak load: IQP benefits are most visible under concurrent workload conditions

                  Real-time monitoring display showing live metrics streaming from SQL Server to analysis tools

     Key Takeaways
         DMVs provide real-time visibility into IQP feature activation and performance
         sys.dm_db_optimized_locking_stats specifically monitors Optimized Locking in SQL Server
         2025
         sys.dm_exec_query_plan_stats reveals actual execution plan details including adaptive
         decisions
         Combine DMV snapshots with Query Store historical data for comprehensive analysis

                                                         65317A - Querying and Analyzing SQL Server 2025

10-26 Module 10: Intelligent Query Processing (IQP) 2025

      Instructor Notes
     Talking Points:

          Key DMVs for IQP monitoring: sys.dm_exec_query_plan_stats,
          sys.dm_query_memory_feedback
          sys.query_store_* views for plan variant and feedback history tracking
          sys.dm_exec_requests and sys.dm_exec_sessions for active IQP feature detection
          Wait statistics (sys.dm_os_wait_stats) for locking/contention impact
          Performance counters related to adaptive operators and batch mode
     Demo Suggestion: Create script that queries 4-5 key DMVs to show IQP status for active queries;
     show memory feedback history using sys.dm_query_memory_feedback filtered by specific
     query_hash; demonstrate sys.dm_exec_query_plan_stats XML parsing for runtime metrics
     Common Student Questions:
     Q: Which DMV shows if PSP optimization was used?
     A: sys.query_store_plan_feedback and sys.dm_exec_query_plan_stats show plan variant
     information; query_variant_id indicates parameter-sensitive plans
     Q: How often is memory feedback data updated in DMVs?
     A: Memory feedback is captured during query execution and persisted to Query Store after
     execution completes
     Q: Can I correlate wait statistics to IQP locking improvements?
     A: Yes, compare sys.dm_os_wait_stats before/after enabling optimized locking; look for LCK_*
     wait types reduction

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-27

Lesson 9: IQP Best Practices

      Estimated Time: 20 minutes

Maximizing IQP Benefits

Successfully leveraging Intelligent Query Processing requires understanding when and how to enable features, what to monitor, and how to troubleshoot unexpected behavior. Deployment Strategy Staged Rollout Approach: 1. Enable Query Store in production (if not already enabled) 2. Establish performance baselines with current compatibility level 3. Upgrade to compatibility level 170 in non-production first 4. Monitor Query Store for plan changes and performance variations 5. Identify and address any regressions before production deployment 6. Enable Optimized Locking incrementally (start with high-contention tables) Configuration Recommendations Query Store Settings:

Set OPERATION_MODE = READ_WRITE Configure adequate MAX_STORAGE_SIZE_MB (minimum 1000 MB for active databases) Use QUERY_CAPTURE_MODE = AUTO to focus on significant queries Set SIZE_BASED_CLEANUP_MODE = AUTO to prevent storage issues Optimized Locking: Enable database-wide only after testing on representative workload Consider table-level enablement for targeted concurrency improvements Monitor sys.dm_db_optimized_locking_stats for effectiveness Performance Monitoring

                                                        65317A - Querying and Analyzing SQL Server 2025

10-28 Module 10: Intelligent Query Processing (IQP) 2025

Key Metrics to Track: Query duration changes (compare before/after compatibility level upgrade) Plan stability (frequency of recompiles and plan changes) Memory grant accuracy (grants vs. actual usage) Blocking and wait statistics (especially after enabling Optimized Locking)

Troubleshooting Plan Regressions If specific queries perform worse after IQP enablement: 1. Use Query Store to compare old vs. new plans 2. Force previous plan as temporary mitigation: sp_query_store_force_plan 3. Analyze root cause (statistics, parameter values, indexes) 4. Consider query hints as selective overrides if necessary

            Step-by-step deployment path showing progression from baseline through testing to production rollout

     Key Takeaways
          Deploy IQP features using staged rollout with comprehensive baseline monitoring
          Configure Query Store with adequate storage and appropriate capture settings
          Enable Optimized Locking incrementally, starting with high-contention tables
          Monitor key metrics and use Query Store plan forcing for regression mitigation

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-29

Instructor Notes Talking Points:

Baseline query performance before enabling IQP features Incremental IQP enablement: enable features one at a time to isolate impact Query Store configuration recommendations for optimal IQP operation Statistics maintenance importance for IQP effectiveness Compatibility level planning and testing strategy Monitoring cadence and alerting for IQP feature degradation Demo Suggestion: Show checklist-style script for IQP readiness assessment; demonstrate Query Store configuration recommendations; show baseline capture technique using query store hints Common Student Questions: Q: Should I enable all IQP features at once? A: No, enable incrementally and test each feature independently to isolate performance impact and troubleshoot issues effectively Q: How often should I update statistics if IQP is enabled? A: Maintain same statistics update cadence as before; IQP effectiveness depends on accurate statistics, so regular updates are critical Q: What Query Store size is recommended for IQP? A: Default 100 MB may be insufficient for active IQP workloads; increase to 500 MB-1 GB depending on workload and retention needs

                                                  65317A - Querying and Analyzing SQL Server 2025

10-30 Module 10: Intelligent Query Processing (IQP) 2025

Lesson 10: Troubleshooting IQP Issues

      Estimated Time: 25 minutes

Diagnosing and Resolving IQP Problems

While IQP features generally improve performance, understanding how to diagnose and resolve issues when they occur is essential for database administrators. Common IQP Challenges 1. Plan Instability Symptom: Frequent plan changes causing inconsistent performance. Diagnosis:

SELECT q.query_id, COUNT(DISTINCT p.plan_id) AS plan_count, MAX(rs.last_execution_time) AS last_exec

FROM sys.query_store_query q JOIN sys.query_store_plan p ON q.query_id = p.query_id JOIN sys.query_store_runtime_stats rs ON p.plan_id = rs.plan_id GROUP BY q.query_id HAVING COUNT(DISTINCT p.plan_id) \> 5;

Resolution: Review statistics quality, consider plan guides for specific cases, or selectively disable PSP if creating excessive plan variants. 2. Memory Grant Feedback Not Converging Symptom: Memory grants continue adjusting without stabilizing. Diagnosis: Check sys.query_store_plan_feedback for feedback state and validation failures. Resolution: Investigate query for highly variable data distributions. Update statistics or consider query refactoring if feedback cannot find optimal grant. 3. Optimized Locking Compatibility Symptom: Application errors or unexpected behavior after enabling Optimized Locking.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-31

Diagnosis: Review application transaction patterns and isolation level requirements. Resolution: Optimized Locking requires careful compatibility verification. Disable for specific tables if necessary:

ALTER TABLE dbo.ProblematicTable SET (OPTIMIZED_LOCKING = OFF);

Disabling IQP Features Selectively You can disable specific features using database-scoped configurations:

– Disable PSP ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SENSITIVE_PLAN_OPTIMIZATION = OFF; – Disable CE feedback ALTER DATABASE SCOPED CONFIGURATION SET CE_FEEDBACK = OFF;

Escalation Path For persistent issues: capture actual execution plans, Query Store data, and relevant DMV snapshots before engaging Microsoft support.

                 Troubleshooting workflow showing problem identification, diagnosis steps, and resolution paths

                                                         65317A - Querying and Analyzing SQL Server 2025

10-32 Module 10: Intelligent Query Processing (IQP) 2025

    Key Takeaways
          Plan instability can result from excessive PSP plan variants or statistics issues
          Memory grant feedback may not converge for queries with highly variable data patterns
          Optimized Locking requires application compatibility verification
          IQP features can be selectively disabled at database or query level if needed

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-33

Instructor Notes Talking Points:

Common IQP problems: unexpected query degradation, excessive compilation, memory overhead Disabling specific IQP features for problem isolation using trace flags and database-scoped configuration Query plan regression detection and Query Store forcing/hints Memory pressure scenarios with IQP features and tuning strategies Compatibility and version-specific IQP issues Log and event analysis for IQP-related problems Demo Suggestion: Simulate query degradation scenario; show diagnostic query to identify problematic plans; demonstrate using DBCC TRACESTATUS to verify IQP feature state; show forced plan creation in Query Store to override problematic IQP decisions Common Student Questions: Q: How do I disable IQP for a specific query? A: Use Query Store hint with DISABLE_ALL_INTELLIGENT_QUERY_OPTIMIZATION; or use OPTION (RECOMPILE) to bypass cached IQP plans Q: What trace flags control IQP features? A: TF 9481 disables IQP; TF 11054 disables batch mode; specific features have dedicated flags documented in SQL Server Books Online Q: Can IQP cause elevated CPU during compilation? A: Yes, if compilation happens frequently; monitor compilation rates with sys.dm_exec_query_optimizer_info and adjust Query Store settings to reduce recompilation Q: How do I revert an IQP change if it causes problems? A: Disable the feature at database level or use Query Store forcing to revert to specific plan, then investigate root cause

                                                  65317A - Querying and Analyzing SQL Server 2025

10-34 Module 10: Intelligent Query Processing (IQP) 2025

Lab: Implementing and Monitoring Intelligent Query Processing Features

Objective: Configure and test Intelligent Query Processing features in SQL Server 2025, including Optimized Locking and Parameter Sensitive Plan optimization, then monitor their impact using Query Store and system views. Estimated Time: 45 minutes Platform: Azure Portal with Windows Server 2025 VM running SQL Server 2025 (version 17) and SSMS 22 Prerequisites:

Access to Azure Portal VM with SQL Server 2025 (version 17) installed SQL Server Management Studio 22 Sysadmin permissions on SQL Server instance Basic knowledge of T-SQL queries

      Lab Facilitation
     Setup: Pre-lab requirements: SQL Server 2025 (version 17) instance with at least 8 GB RAM;
     sample database (WideWorldImporters or custom test database recommended); Query Store
     must be enabled in read-write mode; students need permissions to create tables, execute
     queries, and alter database configuration. Provide lab environment checklist: verify compatibility
     level 160, confirm Query Store is operational, create sample data with appropriate statistical
     skew for parameter sensitivity demonstration. Consider pre-loading Query Store with

Procedures

Step 1: Connect to the SQL Server 2025 instance using SSMS 22 and create a new test database with the appropriate compatibility level

Open SQL Server Management Studio 22. In the Connect to Server dialog:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-35

1.  Server type: Database Engine
2.  Server name: localhost (or your VM hostname)
3.  Authentication: Windows Authentication
4.  Click Connect In a new query window, execute the following script to create a test database:

– Create test database for IQP features CREATE DATABASE IQPLab2025; GO – Set compatibility level to 170 (SQL Server 2025) ALTER DATABASE IQPLab2025 SET COMPATIBILITY_LEVEL = 170; GO USE IQPLab2025; GO – Verify compatibility level SELECT name, compatibility_level FROM sys.databases WHERE name = ‘IQPLab2025’; GO

    Expected Output:
     Query completes successfully. The verification query returns:
     name compatibility_level IQPLab2025 170

Verification: Confirm that the compatibility_level value is 170, which is required for SQL Server 2025 IQP features.

Step 2: Enable Query Store to monitor IQP feature activation and query performance

Query Store is essential for monitoring IQP features. Execute the following commands to enable and configure Query Store:

                                                        65317A - Querying and Analyzing SQL Server 2025

10-36 Module 10: Intelligent Query Processing (IQP) 2025

USE IQPLab2025; GO

– Enable Query Store with recommended settings ALTER DATABASE IQPLab2025 SET QUERY_STORE = ON (

     OPERATION_MODE = READ_WRITE,
      CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30),
      DATA_FLUSH_INTERVAL_SECONDS = 900,
      INTERVAL_LENGTH_MINUTES = 60,
      MAX_STORAGE_SIZE_MB = 1000,
      QUERY_CAPTURE_MODE = AUTO,
      SIZE_BASED_CLEANUP_MODE = AUTO

); GO

– Verify Query Store is enabled SELECT

     desired_state_desc,
      actual_state_desc,
      readonly_reason,
      current_storage_size_mb,
      max_storage_size_mb

FROM sys.database_query_store_options; GO

    Expected Output:
     Commands execute successfully. The verification query shows:
     desired_state_desc actual_state_desc readonly_reason current_storage_size_mb
     max_storage_size_mb READ_WRITE READ_WRITE 0 0 1000

Verification: Confirm that actual_state_desc shows READ_WRITE and Query Store is operational.

Step 3: Create sample tables and populate them with test data to demonstrate IQP features

Create tables that will be used to test Optimized Locking and Parameter Sensitive Plans:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-37

USE IQPLab2025; GO

– Create Orders table for testing CREATE TABLE Orders (

OrderID INT PRIMARY KEY IDENTITY(1,1), CustomerID INT NOT NULL, OrderDate DATETIME2 NOT NULL, OrderAmount DECIMAL(10,2) NOT NULL, OrderStatus VARCHAR(20) NOT NULL, ShipCountry VARCHAR(50) NOT NULL ); GO

– Create index for testing CREATE NONCLUSTERED INDEX IX_Orders_CustomerID ON Orders(CustomerID) INCLUDE (OrderAmount, OrderStatus); GO

– Populate with sample data (skewed distribution for PSP testing) INSERT INTO Orders (CustomerID, OrderDate, OrderAmount, OrderStatus, ShipCountry) SELECT

CASE WHEN n \<= 90000 THEN 1 – 90% of orders from customer 1 ELSE (n % 1000) + 2 – Remaining 10% distributed

END AS CustomerID, DATEADD(DAY, -(n % 365), GETDATE()) AS OrderDate, (n % 5000) + 10.00 AS OrderAmount, CASE (n % 4)

     WHEN 0 THEN 'Pending'
      WHEN 1 THEN 'Shipped'
      WHEN 2 THEN 'Delivered'
      ELSE 'Cancelled'

END AS OrderStatus, ‘USA’ AS ShipCountry FROM (SELECT TOP 100000 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n FROM sys.all_objects a CROSS JOIN sys.all_objects b) AS Numbers; GO

– Update statistics UPDATE STATISTICS Orders WITH FULLSCAN; GO

– Verify data distribution

                                                    65317A - Querying and Analyzing SQL Server 2025

10-38 Module 10: Intelligent Query Processing (IQP) 2025

SELECT CustomerID, COUNT(\*) AS OrderCount

FROM Orders GROUP BY CustomerID ORDER BY OrderCount DESC; GO

    Expected Output:
     All commands execute successfully. The data distribution query shows CustomerID 1 with
     approximately 90,000 orders and other customers with significantly fewer orders, demonstrating
     skewed distribution.

Verification: Verify that CustomerID 1 has approximately 90,000 rows while other CustomerIDs have much fewer rows.

Step 4: Check the current status of IQP features in the database

Verify which IQP features are enabled by default at compatibility level 170:

USE IQPLab2025; GO

– Check database scoped configurations SELECT

     configuration_id,
      name,
      value,
      value_for_secondary

FROM sys.database_scoped_configurations WHERE name IN ( ‘PARAMETER_SENSITIVE_PLAN_OPTIMIZATION’, ‘CE_FEEDBACK’, ‘MEMORY_GRANT_FEEDBACK_PERSISTENCE’, ‘BATCH_MODE_ON_ROWSTORE’, ‘DEFERRED_COMPILATION_TV’, ‘OPTIMIZED_PLAN_FORCING’ ) ORDER BY name; GO

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-39

    Expected Output:
     Query returns IQP-related configurations:
     name value value_for_secondary BATCH_MODE_ON_ROWSTORE 1 1 CE_FEEDBACK 1 1
     DEFERRED_COMPILATION_TV 1 1 MEMORY_GRANT_FEEDBACK_PERSISTENCE 1 1
     OPTIMIZED_PLAN_FORCING 1 1 PARAMETER_SENSITIVE_PLAN_OPTIMIZATION 1 1

Verification: Confirm that all IQP features show value = 1, indicating they are enabled by default at compatibility level 170.

Step 5: Create a stored procedure to test Parameter Sensitive Plan optimization

Create a procedure that will benefit from PSP optimization due to the skewed data distribution:

USE IQPLab2025; GO

– Create procedure for PSP testing CREATE OR ALTER PROCEDURE GetCustomerOrders

     @CustomerID INT

AS BEGIN

     SET NOCOUNT ON;

      SELECT
         OrderID,
         CustomerID,
         OrderDate,
         OrderAmount,
         OrderStatus

      FROM Orders
      WHERE CustomerID = @CustomerID
      ORDER BY OrderDate DESC;

END; GO

    Expected Output:
     Message: Commands completed successfully.

                                                         65317A - Querying and Analyzing SQL Server 2025

10-40 Module 10: Intelligent Query Processing (IQP) 2025

Verification: Verify the procedure is created by checking Object Explorer in SSMS under Programmability \> Stored Procedures.

Step 6: Execute the stored procedure with different parameters and observe Parameter Sensitive Plan optimization

Run the procedure multiple times with different parameters to trigger PSP optimization:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-41

USE IQPLab2025; GO

– Clear Query Store to start fresh ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE; GO

– Execute with high-cardinality parameter (customer with many orders) EXEC GetCustomerOrders @CustomerID = 1; GO

– Execute with low-cardinality parameter (customer with few orders) EXEC GetCustomerOrders @CustomerID = 500; GO

– Execute again with different low-cardinality value EXEC GetCustomerOrders @CustomerID = 750; GO

– Wait for Query Store to capture the executions WAITFOR DELAY ‘00:00:05’; GO

– Check for PSP optimization in Query Store SELECT

qsp.query_id, qsp.plan_id, qsp.query_plan_hash, qsq.query_hash, CAST(qsp.query_plan AS XML) AS QueryPlan, qsp.count_compiles, qsrs.count_executions, qsp.is_online_index_plan, TRY_CAST(qsp.query_plan AS XML).value(

     '(//RelOp/@EstimateRows)[1]', 'float') AS EstimatedRows

FROM sys.query_store_plan qsp INNER JOIN sys.query_store_query qsq ON qsp.query_id = qsq.query_id INNER JOIN sys.query_store_runtime_stats qsrs ON qsp.plan_id = qsrs.plan_id WHERE qsq.object_id = OBJECT_ID(‘GetCustomerOrders’) ORDER BY qsp.plan_id; GO

                                                    65317A - Querying and Analyzing SQL Server 2025

10-42 Module 10: Intelligent Query Processing (IQP) 2025

    Expected Output:
     The procedure returns different result set sizes based on the CustomerID. The final query shows
     multiple plan_id values for the same query_id, indicating that PSP optimization has created
     different plans for different parameter values. You should see at least 2 different
     query_plan_hash values.

Verification: Verify that multiple plans exist for the same query_id with different EstimatedRows values, indicating PSP optimization is active.

Step 7: Examine the query plan to confirm PSP optimization indicators

Open the actual query plan to see PSP optimization markers:

USE IQPLab2025; GO – Enable actual execution plan SET STATISTICS XML ON; GO – Execute with parameter to view plan EXEC GetCustomerOrders @CustomerID = 1; GO SET STATISTICS XML OFF; GO

In SSMS, click on the Execution plan tab at the bottom of the results pane. Right-click on the SELECT operator and choose Properties. Look for:

ParameterCompiledValue: Shows the parameter value used for this compilation QueryPlanHash: Different values for different parameter ranges Look for a statement in the plan XML containing ParameterSensitivePlanOptimization

    Expected Output:
     The execution plan displays in the Execution plan tab. The plan properties show parameter
     information and PSP optimization indicators in the XML.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-43

Verification: In the plan properties, confirm you see parameter-specific compilation information indicating PSP optimization was used.

Step 8: Test Optimized Locking by creating a transaction scenario with concurrent sessions

Open a second query window in SSMS (File \> New \> Query with Current Connection) to simulate concurrent transactions. In the first query window, execute:

USE IQPLab2025; GO

– Session 1: Begin transaction and update BEGIN TRANSACTION;

UPDATE Orders SET OrderStatus = ‘Processing’ WHERE OrderID = 1000;

SELECT resource_type, resource_description, request_mode, request_status

FROM sys.dm_tran_locks WHERE request_session_id = @@SPID

     AND resource_type IN ('KEY', 'PAGE', 'OBJECT')

ORDER BY resource_type;

– DO NOT COMMIT YET - leave this transaction open

Keep this transaction open and proceed to the next step immediately.

    Expected Output:
     The UPDATE completes. The query returns lock information showing locks acquired by the
     transaction, including KEY and PAGE locks with request_mode like 'X' (exclusive) and
     request_status = 'GRANT'.

Verification: Verify that locks are held and the transaction is still open (no COMMIT executed).

                                                        65317A - Querying and Analyzing SQL Server 2025

10-44 Module 10: Intelligent Query Processing (IQP) 2025

Step 9: In the second query window, attempt to read the locked row with Optimized Locking

In the second query window, execute this SELECT statement:

USE IQPLab2025; GO

– Session 2: Read operation that may benefit from Optimized Locking SET STATISTICS TIME ON; SET STATISTICS IO ON; GO

SELECT OrderID, CustomerID, OrderStatus, OrderAmount

FROM Orders WHERE OrderID BETWEEN 990 AND 1010; GO

SET STATISTICS TIME OFF; SET STATISTICS IO OFF; GO

With Optimized Locking in SQL Server 2025, this read operation should complete without waiting for the exclusive lock from Session 1, depending on the isolation level and query pattern.

    Expected Output:
     The SELECT query completes and returns rows including OrderID 1000. The execution time
     should be minimal. The Statistics IO and Time messages appear in the Messages tab showing the
     operation completed quickly.

Verification: Verify the query completes without blocking. If using default READ COMMITTED isolation level, Optimized Locking may allow the read to proceed with reduced blocking.

Step 10: Monitor lock activity using DMVs and commit the transaction

Open a third query window and execute:

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-45

USE IQPLab2025; GO – Session 3: Monitor blocking and lock statistics SELECT

     session_id,
      blocking_session_id,
      wait_type,
      wait_time,
      wait_resource,
      command,
      status

FROM sys.dm_exec_requests WHERE database_id = DB_ID(‘IQPLab2025’) AND blocking_session_id \> 0; GO

Then return to the first query window and commit the transaction:

– Session 1: Commit the transaction COMMIT TRANSACTION; GO

    Expected Output:
     The monitoring query in Session 3 shows minimal or no blocking sessions. When you commit in
     Session 1, the message 'Commands completed successfully' appears.

Verification: Verify that the commit completes successfully and any blocking observed was minimal due to Optimized Locking improvements.

Step 11: Query the Query Store to analyze IQP feature usage and runtime statistics

Examine Query Store data to see which IQP features were activated:

                                                        65317A - Querying and Analyzing SQL Server 2025

10-46 Module 10: Intelligent Query Processing (IQP) 2025

USE IQPLab2025; GO

– Get detailed runtime stats with IQP indicators SELECT

     qsq.query_id,
      OBJECT_NAME(qsq.object_id) AS ObjectName,
      qsp.plan_id,
      qsp.count_compiles,
      qsrs.count_executions,
      qsrs.avg_duration / 1000.0 AS avg_duration_ms,
      qsrs.avg_logical_io_reads,
      qsrs.avg_rowcount,
      qsp.query_plan_hash,
      CAST(qsp.query_plan AS XML) AS QueryPlanXML

FROM sys.query_store_query qsq INNER JOIN sys.query_store_plan qsp ON qsq.query_id = qsp.query_id INNER JOIN sys.query_store_runtime_stats qsrs ON qsp.plan_id = qsrs.plan_id WHERE qsq.object_id = OBJECT_ID(‘GetCustomerOrders’) ORDER BY qsq.query_id, qsp.plan_id; GO

– Check for memory grant feedback SELECT

     qsq.query_id,
      qsp.plan_id,
      qsrs.avg_query_max_used_memory * 8 AS avg_used_memory_kb,
      qsrs.last_query_max_used_memory * 8 AS last_used_memory_kb,
      qsrs.min_query_max_used_memory * 8 AS min_used_memory_kb,
      qsrs.max_query_max_used_memory * 8 AS max_used_memory_kb

FROM sys.query_store_query qsq INNER JOIN sys.query_store_plan qsp ON qsq.query_id = qsp.query_id INNER JOIN sys.query_store_runtime_stats qsrs ON qsp.plan_id = qsrs.plan_id WHERE qsq.object_id = OBJECT_ID(‘GetCustomerOrders’) AND qsrs.avg_query_max_used_memory \> 0; GO

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-47

    Expected Output:
     The first query returns multiple rows showing different plans for the stored procedure with
     varying avg_duration_ms, avg_logical_io_reads, and avg_rowcount values based on parameter
     values. The second query shows memory grant statistics if memory grants were required.

Verification: Verify that you see multiple plan_id values for the same query_id, confirming PSP optimization created parameter-specific plans.

Step 12: Test disabling and re-enabling a specific IQP feature

Demonstrate how to control individual IQP features at the database level:

                                                        65317A - Querying and Analyzing SQL Server 2025

10-48 Module 10: Intelligent Query Processing (IQP) 2025

USE IQPLab2025; GO

– Disable Parameter Sensitive Plan optimization ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SENSITIVE_PLAN_OPTIMIZATION = OFF; GO

– Verify it’s disabled SELECT name, value, value_for_secondary FROM sys.database_scoped_configurations WHERE name = ‘PARAMETER_SENSITIVE_PLAN_OPTIMIZATION’; GO

– Clear procedure cache to force recompilation ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE; GO

– Execute procedure again EXEC GetCustomerOrders @CustomerID = 1; EXEC GetCustomerOrders @CustomerID = 500; GO

– Re-enable PSP optimization ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SENSITIVE_PLAN_OPTIMIZATION = ON; GO

– Verify it’s enabled SELECT name, value, value_for_secondary FROM sys.database_scoped_configurations WHERE name = ‘PARAMETER_SENSITIVE_PLAN_OPTIMIZATION’; GO

    Expected Output:
     Each query returns the current state of the setting:
     When disabled: name value value_for_secondary PARAMETER_SENSITIVE_PLAN_OPTIMIZATION 0
     0
     When re-enabled: name value value_for_secondary PARAMETER_SENSITIVE_PLAN_OPTIMIZATION
     1 1

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-49

Verification: Confirm that the value changes from 0 to 1 when you re-enable the feature, and procedure executions after disabling will use a single cached plan.

Step 13: Create a comprehensive IQP monitoring query for ongoing analysis

Create a reusable monitoring query to track IQP feature impact:

                                                        65317A - Querying and Analyzing SQL Server 2025

10-50 Module 10: Intelligent Query Processing (IQP) 2025

USE IQPLab2025; GO

– Comprehensive IQP monitoring query WITH IQPStats AS (

     SELECT
         qsq.query_id,
         OBJECT_NAME(qsq.object_id) AS ObjectName,
         qsq.query_hash,
         qsp.plan_id,
         qsp.query_plan_hash,
         qsp.count_compiles,
         qsrs.count_executions,
         qsrs.avg_duration / 1000.0 AS avg_duration_ms,
         qsrs.avg_logical_io_reads,
         qsrs.avg_physical_io_reads,
         qsrs.avg_rowcount,
         qsrs.avg_query_max_used_memory * 8 AS avg_memory_kb,
         CAST(qsp.query_plan AS XML) AS plan_xml

      FROM sys.query_store_query qsq
      INNER JOIN sys.query_store_plan qsp

         ON qsq.query_id = qsp.query_id
      INNER JOIN sys.query_store_runtime_stats qsrs

         ON qsp.plan_id = qsrs.plan_id
      WHERE qsq.object_id = OBJECT_ID('GetCustomerOrders')

) SELECT query_id, ObjectName, plan_id, count_compiles, count_executions, avg_duration_ms, avg_logical_io_reads, avg_rowcount, avg_memory_kb, CASE

        WHEN COUNT(*) OVER (PARTITION BY query_id) > 1
         THEN 'PSP Optimization Active'
         ELSE 'Single Plan'
      END AS PSP_Status

FROM IQPStats ORDER BY query_id, plan_id; GO

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-51

    Expected Output:
     A result set showing each plan for the stored procedure with performance metrics and
     PSP_Status indicating whether Parameter Sensitive Plan optimization is creating multiple plans:
     query_id ObjectName plan_id count_compiles count_executions avg_duration_ms PSP_Status 1
     GetCustomerOrders 1 1 1 15.2 PSP Optimization Active 1 GetCustomerOrders 2 1 2 2.1 PSP
     Optimization Active

Verification: Verify that PSP_Status shows ‘PSP Optimization Active’ when multiple plans exist for the same query_id.

Step 14: Document IQP feature usage and export Query Store data for reporting

Generate a summary report of IQP features and their impact:

                                                        65317A - Querying and Analyzing SQL Server 2025

10-52 Module 10: Intelligent Query Processing (IQP) 2025

USE IQPLab2025; GO

– Generate IQP summary report SELECT

     'Database Configuration' AS ReportSection,
      name AS FeatureName,
      CASE value

         WHEN 1 THEN 'Enabled'
         ELSE 'Disabled'
      END AS Status,
      NULL AS Details

FROM sys.database_scoped_configurations WHERE name IN ( ‘PARAMETER_SENSITIVE_PLAN_OPTIMIZATION’, ‘CE_FEEDBACK’, ‘MEMORY_GRANT_FEEDBACK_PERSISTENCE’, ‘BATCH_MODE_ON_ROWSTORE’, ‘OPTIMIZED_PLAN_FORCING’ )

UNION ALL

SELECT ‘Query Store Status’ AS ReportSection, ‘Query Store’ AS FeatureName, actual_state_desc AS Status, CAST(current_storage_size_mb AS VARCHAR(20)) + ’ MB used of ’ + CAST(max_storage_size_mb AS VARCHAR(20)) + ’ MB’ AS Details

FROM sys.database_query_store_options

UNION ALL

SELECT ‘Performance Summary’ AS ReportSection, ‘Total Queries Captured’ AS FeatureName, CAST(COUNT(DISTINCT query_id) AS VARCHAR(20)) AS Status, ‘Across’ + CAST(COUNT(DISTINCT plan_id) AS VARCHAR(20)) + ’ plans’ AS Details

FROM sys.query_store_query

ORDER BY ReportSection, FeatureName; GO

– Save current date/time for documentation SELECT

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-53

     'Lab completed on: ' + CONVERT(VARCHAR(30), GETDATE(), 120) AS Summary;

GO

    Expected Output:
     A comprehensive report showing:
     ReportSection FeatureName Status Details Database Configuration
     BATCH_MODE_ON_ROWSTORE Enabled NULL Database Configuration CE_FEEDBACK Enabled
     NULL Database Configuration MEMORY_GRANT_FEEDBACK_PERSISTENCE Enabled NULL
     Database Configuration OPTIMIZED_PLAN_FORCING Enabled NULL Database Configuration
     PARAMETER_SENSITIVE_PLAN_OPTIMIZATION Enabled NULL Performance Summary Total
     Queries Captured [number] Across [number] plans Query Store Status Query Store READ_WRITE
     [X] MB used of 1000 MB
     Followed by the completion timestamp.

Verification: Verify all IQP features show ‘Enabled’ status and Query Store shows ‘READ_WRITE’ status.

Troubleshooting

    Problem: Query Store shows actual_state_desc as 'READ_ONLY' instead of 'READ_WRITE'
     Solution: This typically means Query Store has reached its size limit. Check
     current_storage_size_mb versus max_storage_size_mb in sys.database_query_store_options.
     Either increase MAX_STORAGE_SIZE_MB using ALTER DATABASE SET QUERY_STORE
     (MAX_STORAGE_SIZE_MB = 2000), or enable SIZE_BASED_CLEANUP_MODE = AUTO to allow
     automatic cleanup of old data.

                                                         65317A - Querying and Analyzing SQL Server 2025

10-54 Module 10: Intelligent Query Processing (IQP) 2025

    Problem: Parameter Sensitive Plan optimization is not creating multiple plans despite executing
     with different parameters
     Solution: Ensure compatibility level is set to 170 using ALTER DATABASE IQPLab2025 SET
     COMPATIBILITY_LEVEL = 170. Verify PARAMETER_SENSITIVE_PLAN_OPTIMIZATION is enabled by
     querying sys.database_scoped_configurations. Clear the procedure cache using DBCC
     FREEPROCCACHE or ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE,
     then execute the procedure again with significantly different parameter values (high-cardinality
     vs low-cardinality). PSP optimization requires sufficient executions and cardinality difference to
     trigger.

     Problem: Cannot see query plans in Query Store views
     Solution: Query Store captures data at intervals. Execute WAITFOR DELAY '00:00:10' to allow time
     for data capture. Verify QUERY_CAPTURE_MODE is set to AUTO or ALL in
     sys.database_query_store_options. If set to NONE, change it using ALTER DATABASE IQPLab2025
     SET QUERY_STORE (QUERY_CAPTURE_MODE = AUTO). Ensure queries are actually completing
     successfully (check for errors in the Messages tab).

     Problem: Blocking still occurs in step 9 despite Optimized Locking
     Solution: Optimized Locking reduces blocking but doesn't eliminate it entirely. The degree of
     improvement depends on isolation level, query pattern, and data access patterns. If using
     SERIALIZABLE or REPEATABLE READ isolation level, change to READ COMMITTED using SET
     TRANSACTION ISOLATION LEVEL READ COMMITTED. For explicit locking hints like UPDLOCK or
     HOLDLOCK in queries, remove them to allow Optimized Locking to work optimally. Verify you're
     using SQL Server 2025 (SELECT @@VERSION should show version 17.x).

     Problem: Error 'ALTER DATABASE statement not allowed within multi-statement transaction'
     when configuring database options
     Solution: ALTER DATABASE commands must run outside of explicit transactions. If you have an
     open BEGIN TRANSACTION, either COMMIT or ROLLBACK that transaction first. Check for
     uncommitted transactions using SELECT @@TRANCOUNT (should return 0). Close and reopen
     your query window to ensure you're starting with a clean session state. Execute the ALTER
     DATABASE command in its own batch with GO statements before and after.

                                                         65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-55

Challenge Exercise

Advanced IQP Analysis and Optimization

Now that you have implemented and monitored basic IQP features, extend your knowledge with this advanced challenge: Scenario: Create a more complex workload that demonstrates the interaction between multiple IQP features simultaneously. Your tasks: 1. Create a second table called OrderDetails with a one-to-many relationship to the Orders table.

Include columns for OrderDetailID, OrderID, ProductID, Quantity, and UnitPrice. Populate it with at least 500,000 rows with realistic data distribution. 2. Design and implement a stored procedure that performs a JOIN between Orders and OrderDetails with multiple parameters (@CustomerID, @MinOrderAmount, @OrderDateStart, @OrderDateEnd). Structure the query so it could benefit from adaptive joins, memory grant feedback, and PSP optimization simultaneously. 3. Create a workload script that executes your procedure with varying parameter combinations representing different query patterns: some returning few rows (selective queries) and others returning many rows (scan queries). 4. Monitor and document which IQP features activate for different parameter combinations. Use Query Store and DMVs to capture evidence of adaptive join decisions, memory grant adjustments, and parameter-specific plan creation. 5. Write a T-SQL report query that compares performance metrics (duration, logical reads, memory grants) across the different parameter-specific plans. Identify which parameter ranges benefit most from IQP optimizations. 6. Deliberately create a scenario where you need to disable one IQP feature (your choice) due to a specific performance issue. Document why you disabled it, what alternative approach you used, and how you verified the improvement. Deliverable: A documented SQL script file containing all objects, test workloads, monitoring queries, and comments explaining your observations about how different IQP features interacted with your workload. Include before-and-after performance comparisons and recommendations for this type of workload pattern.

                                                        65317A - Querying and Analyzing SQL Server 2025

10-56 Module 10: Intelligent Query Processing (IQP) 2025

Answer Key

1.  Which database compatibility level is required to enable Optimized Locking in SQL Server 2025?

    1)  160 (SQL Server 2022)
    2)  170 (SQL Server 2025)
    3)  150 (SQL Server 2019)
    4)  140 (SQL Server 2017) Answer: B Optimized Locking is a new feature in SQL Server 2025 (version 17) and requires compatibility level

    <!-- -->

    170. Earlier compatibility levels do not support this feature.

2.  What is the primary purpose of Parameter Sensitive Plan (PSP) optimization?

    1)  To reduce memory consumption by cached plans
    2)  To create multiple execution plans based on parameter value characteristics
    3)  To eliminate the need for stored procedures
    4)  To automatically update statistics more frequently Answer: B PSP optimization addresses parameter sniffing problems by creating and caching multiple plan variants for a single query, each optimized for different parameter value ranges. This allows SQL Server to choose the most appropriate plan based on actual parameter values.

3.  Which component is essential for most IQP features to function properly?

    1)  SQL Server Agent

    2)  Full-text search

    3)  Query Store

    4)  Resource Governor

                                                          65317A - Querying and Analyzing SQL Server 2025

         Module 10: Intelligent Query Processing (IQP) 2025 10-57

    Answer: C Query Store is the foundation for most IQP features. It stores historical execution statistics, plan information, and feedback data that enable IQP’s learning and adaptation capabilities. Features like memory grant feedback and cardinality estimation feedback require Query Store to persist their learned optimizations.

4.  What problem does Memory Grant Feedback primarily address?

    1)  Slow disk I/O operations
    2)  Incorrect cardinality estimates for joins
    3)  Excessive or insufficient memory allocations for query operations
    4)  Network latency between client and server

    Answer: C Memory Grant Feedback addresses the problem of inaccurate memory allocations (grants) for query operations. It learns from actual memory usage patterns and adjusts grants for future executions, preventing both memory waste (excessive grants) and performance degradation from tempdb spills (insufficient grants).

5.  When does an adaptive join operator make its decision about which join strategy to use?

    1)  During query compilation, based on statistics
    2)  At runtime, after scanning the outer input
    3)  After completing both inputs
    4)  Based on the previous execution’s performance

    Answer: B Adaptive joins defer the choice between hash join and nested loops join until runtime, after scanning the first (outer) input. This allows the decision to be based on actual row counts rather than estimates, leading to better join strategy selection when cardinality estimates are inaccurate.

6.  Which DMV is specifically introduced in SQL Server 2025 for monitoring Optimized Locking?

    1)  sys.dm_exec_query_stats

                                                          65317A - Querying and Analyzing SQL Server 2025

        10-58 Module 10: Intelligent Query Processing (IQP) 2025

    2)  sys.dm_db_optimized_locking_stats

    3)  sys.dm_tran_locks

    4)  sys.dm_exec_requests

    Answer: B sys.dm_db_optimized_locking_stats is a new DMV introduced in SQL Server 2025 specifically for monitoring Optimized Locking feature activity, concurrency improvements, and which tables are benefiting from the feature.

7.  What is the minimum recommended MAX_STORAGE_SIZE_MB setting for Query Store in active databases using IQP features?

    1)  100 MB
    2)  500 MB
    3)  1000 MB
    4)  5000 MB

    Answer: C For active databases using IQP features, a minimum of 1000 MB is recommended for MAX_STORAGE_SIZE_MB to ensure adequate storage for plan history, runtime statistics, and feedback metadata that IQP features require.

8.  How does Cardinality Estimation (CE) feedback improve query performance?

    1)  By automatically creating missing indexes
    2)  By comparing estimated vs. actual row counts and storing corrections for future compilations
    3)  By forcing parallel execution for all queries
    4)  By disabling statistics updates

    Answer: B CE feedback detects estimation errors by comparing estimated row counts to actual row counts during execution. It stores correction information in Query Store and applies these learned adjustments to subsequent compilations, leading to better execution plans over time.

                                                          65317A - Querying and Analyzing SQL Server 2025

     Module 10: Intelligent Query Processing (IQP) 2025 10-59

9.  If a query performs worse after upgrading database compatibility level to enable IQP, what is the recommended first mitigation step?

    1)  Disable Query Store entirely
    2)  Use Query Store to force the previous plan while investigating
    3)  Immediately downgrade compatibility level
    4)  Rebuild all indexes Answer: B The recommended first step for query regressions after IQP enablement is to use Query Store to force the previous, well-performing plan (using sp_query_store_force_plan) as a temporary mitigation while investigating the root cause of the regression.

10. Which IQP feature uses a hybrid approach combining elements of traditional locking with row versioning?

    1)  Parameter Sensitive Plan optimization

    2)  Memory Grant Feedback

    3)  Optimized Locking

    4)  Adaptive Joins Answer: C Optimized Locking uses a hybrid approach that combines elements of traditional locking with row versioning to reduce blocking and improve concurrency. This provides concurrency benefits with lower overhead compared to full snapshot isolation.

                                                          65317A - Querying and Analyzing SQL Server 2025

        10-60 Module 10: Intelligent Query Processing (IQP) 2025

Module Summary

Module 10 explored Intelligent Query Processing (IQP) features in SQL Server 2025, focusing on the revolutionary Optimized Locking capability and Parameter Sensitive Plan optimization. You learned how IQP features automatically improve query performance through adaptive mechanisms like cardinality estimation feedback, memory grant feedback, and adaptive joins. The module covered essential monitoring techniques using Query Store and DMVs, best practices for staged IQP deployment, and troubleshooting strategies for common issues. These self-tuning capabilities enable SQL Server 2025 to deliver superior performance with minimal administrative overhead.

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-61

Day 3 Capstone Lab: Performance Remediation Project: Global Logistics Platform Database

Estimated Time: 240 minutes Platform: azure_portal

     Reference: If you need step-by-step detail on any individual skill, refer to the lab guides from
     this morning's modules.

Skills Integration

Generate and interpret graphical execution plans in SSMS 22 Analyze query performance metrics using SET STATISTICS IO and TIME Use AI-powered tools to interpret execution plan bottlenecks and recommendations Identify expensive operators and resource consumption patterns Design and create clustered indexes for optimal data retrieval Implement nonclustered and covering indexes to improve query performance Create specialized indexes for JSON data and modern workload patterns Evaluate index usage statistics and identify missing indexes Enable and configure Intelligent Query Processing features in SQL Server 2025 Leverage Optimized Locking to reduce blocking and improve concurrency Apply parameter sensitivity plan optimization for variable workloads Monitor IQP feature activation using system views and Query Store

Scenario Briefing

Scenario Briefing

From: Director of Platform Engineering, GlobalFreight Solutions To: Database Performance Specialist Subject: Production Database Performance Remediation - FleetOps Database

                                                        65317A - Querying and Analyzing SQL Server 2025

10-62 Module 10: Intelligent Query Processing (IQP) 2025

Our logistics coordination platform has experienced significant performance degradation over the past two quarters. The FleetOps production database supports critical shipment tracking, fleet management, and customs documentation workflows for 47 international distribution centers. User complaints have escalated regarding dashboard load times, shipment search delays, and transaction timeouts during peak processing windows. Database telemetry shows the system is running SQL Server 2025 (compatibility level 160) but many modern performance features remain disabled. The application team has identified six high-impact stored procedures and queries that power our most critical user interfaces. These queries exhibit inconsistent performance patterns, with execution times ranging from 200ms to 45 seconds for the same procedure depending on input parameters. Your mandate: conduct a comprehensive performance analysis of the identified workload, implement index optimizations, enable and configure appropriate Intelligent Query Processing features, and document measurable improvements. The production change window is scheduled for this weekend. All recommendations must be validated in our isolated performance testing environment before production deployment approval.

Desired End State

Desired End State

By the end of this engagement, you will have delivered:

Performance Analysis Artifacts

Comprehensive execution plan analysis for all six identified critical queries showing current bottlenecks, expensive operators, and resource consumption patterns Documented baseline performance metrics (execution time, logical reads, CPU time) using SET STATISTICS for each query under multiple parameter scenarios AI-assisted interpretation reports identifying specific optimization opportunities for each problematic query

Indexing Strategy Implementation

A fully documented indexing strategy for the FleetOps database including: Redesigned clustered index strategy for at least two core tables based on access patterns Implementation of nonclustered and covering indexes targeting identified query bottlenecks

                                                        65317A - Querying and Analyzing SQL Server 2025

Module 10: Intelligent Query Processing (IQP) 2025 10-63

        Specialized index implementation for the ShipmentDocuments table supporting efficient JSON
         property queries
         Missing index recommendations evaluated and selectively implemented where appropriate
    Index usage validation showing measurable improvement in query performance metrics

Intelligent Query Processing Configuration

Query Store enabled and configured for the FleetOps database with appropriate retention and capture settings Database compatibility level verified at 160 with relevant IQP features enabled Optimized Locking configured and validated for high-concurrency shipment update procedures Parameter Sensitive Plan optimization enabled for procedures exhibiting parameter variance issues System view queries demonstrating IQP feature activation and runtime impact for the remediated workload

Performance Validation Report

Side-by-side comparison of before/after metrics for all six critical queries Documentation of which specific optimizations resolved which bottlenecks Concurrency and locking improvement metrics for transaction-heavy procedures Production deployment recommendation with risk assessment and rollback plan

Constraints

All work must be performed in the isolated performance testing environment (FleetOps_PerfTest database) - no direct production changes Index implementations must not exceed 15% total database size increase Any schema changes requiring table rebuilds must include documented downtime estimates Intelligent Query Processing features must be individually validated before combined activation All performance assertions must be supported by captured execution plans and statistics output JSON index implementations must support the existing application query patterns without code changes Parameter Sensitive Plan optimization must be validated with at least three distinct parameter value scenarios per affected procedure

                                                        65317A - Querying and Analyzing SQL Server 2025

10-64 Module 10: Intelligent Query Processing (IQP) 2025

      Capstone Lab -- Instructor Notes
     Scenario Rationale: This capstone presents a realistic database performance crisis requiring
     students to independently diagnose problems using execution plans and statistics, design a
     multi-faceted solution combining indexing strategies with modern IQP features, and validate
     results. The logistics domain and FleetOps database provide completely different context from
     morning labs while requiring integration of all Day 3 skills.
     Skill Integration:

          Execution plan analysis and AI tools: Students must generate plans for six distinct queries,
          identify bottlenecks (scans, lookups, sorts, spills), and use AI-powered recommendations to
          inform strategy
          SET STATISTICS IO/TIME: Required to establish baseline metrics and validate post-optimization
          improvements across multiple parameter scenarios
          Index design and implementation: Students design clustered index strategy, create covering
          indexes for specific queries, implement JSON indexes, and evaluate missing index DMV
          recommendations
          Intelligent Query Processing: Students must enable Query Store, configure database
          compatibility, activate Optimized Locking for concurrency issues, apply PSP optimization for
          parameter-sensitive procedures, and monitor activation via system views
          Integration challenge: Students must determine which optimization technique addresses
          which bottleneck - some queries need indexes, others need IQP features, some need both
     Afternoon Session Facilitation: Begin the afternoon session with a 5-minute Q&A addressing
     any execution plan interpretation questions from Module 8, index design principles from Module
     9, or IQP configuration from Module 10. Emphasize that this scenario requires them to diagnose
     first, then prescribe solutions - not all six queries will have the same root cause. Suggest they
     tackle one query end-to-end first to establish their workflow, then apply the pattern to remaining
     queries. Circulate during the session to verify students are capturing baseline metrics before
     implementing changes - a common mistake is optimizing without establishing the before state.
     For the final hour, students should focus on the validation report comparing before/after metrics.
     If students finish early, challenge them to identify which optimization provided the greatest ROI
     and explain why certain queries benefited more from IQP features versus indexing.

                                                         65317A - Querying and Analyzing SQL Server 2025


