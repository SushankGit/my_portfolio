# Sushank Shrestha — Developer Portfolio & Admin Portal

A full-stack, responsive developer portfolio engineered for **Sushank Shrestha**, MIS Officer at Yeti Brewery Limited. Built with modern vanilla JavaScript (ES6+), semantic HTML5, CSS3 cyber-clean dark theme, PHP 8 backend, and MySQL database integration.

---

## 🚀 Localhost Server Access

The project is hosted in your XAMPP web directory (`F:\Xampp\htdocs\PROJECTS\Portfolio Website`).

### Option 1: XAMPP Apache Server (Currently Running)
Apache and MySQL are actively running in your XAMPP installation:
- **Portfolio Website:** [http://localhost/PROJECTS/Portfolio%20Website/](http://localhost/PROJECTS/Portfolio%20Website/)
- **Admin Portal:** [http://localhost/PROJECTS/Portfolio%20Website/admin/login.html](http://localhost/PROJECTS/Portfolio%20Website/admin/login.html)
- **Projects API:** [http://localhost/PROJECTS/Portfolio%20Website/Backend/projects.php](http://localhost/PROJECTS/Portfolio%20Website/Backend/projects.php)

### Option 2: PHP Built-in Development Server
You can also launch a dedicated development server with a single click:
1. Double click `start-server.bat` in the project root, **OR**
2. Run from terminal:
   ```powershell
   & "F:\Xampp\php\php.exe" -S localhost:8000
   ```
3. Open in browser: [http://localhost:8000/](http://localhost:8000/)

---

## 🔐 Administrator Portal

The administrative console allows managing portfolio projects, monitoring inbound contact inquiries, and viewing system telemetry.

- **URL:** `admin/login.html` (or `http://localhost/PROJECTS/Portfolio%20Website/admin/login.html`)
- **Default Username:** `sushank`
- **Default Password:** `admin123`

### Admin Features
- **Dashboard Overview:** KPI cards for Projects, Experiences, Certificates, and Messages with quick status badges.
- **Project Management:** Create, publish, view, edit, and delete projects with visual image presets.
- **Experience Management:** Add, edit, reorder, and delete professional work experiences.
- **Certificate Management:** Add, edit, and delete achievement certificates with badge image support and links.
- **Contact Details & Office Info:** Change location, current office/organization, inbound inquiry email, and connect description.
- **Resume Management:** Upload new/replacement PDF resumes, view current resume metadata, or remove/disable resume across all public pages with one click.
- **Message Center:** Inbound contact inquiries, mark as read, direct `mailto:` reply link, delete messages.

---

## 🗄️ Database Architecture

The application connects to MySQL via `Backend/db.php` (`localhost`, database `portfolio_db`).

- Database Schema file: `sql/schema.sql`
- **Tables:**
  - `admin`: Stores authorized administrator accounts (hashed passwords).
  - `projects`: Dynamic portfolio projects with categories, tech stacks, links, and visual paths.
  - `experiences`: Work experience entries (title, company, period, location, description, display order).
  - `certificates`: Achievement certificates (title, issuer, date, credential ID, URL, badge image path).
  - `profile_settings`: Contact card information (location, office, email, bio) and resume status/file path.
  - `messages`: Inbound contact messages submitted from visitors with status flags (`unread`/`read`) and timestamps.

To re-import or seed the database anytime:
```powershell
& "F:\Xampp\mysql\bin\mysql.exe" -u root < "sql\schema.sql"
```

---

## 📂 Project Directory Structure

```text
Portfolio Website/
├── assets/
│   ├── projects/          # High-resolution vector visuals for systems
│   │   ├── sales-mis.svg
│   │   ├── dashboard.svg
│   │   ├── stock-mis.svg
│   │   ├── secondary-sales.svg
│   │   ├── vba-automation.svg
│   │   └── admin-portal.svg
│   ├── certificates/      # Achievement certificate badge SVGs
│   │   ├── mysql-cert.svg
│   │   ├── vba-cert.svg
│   │   ├── web-cert.svg
│   │   ├── award.svg
│   │   └── default-cert.svg
│   ├── profile.svg        # Monogram developer avatar
│   ├── resume.html        # Clean HTML resume source
│   └── resume.pdf         # Printable A4 PDF resume download
├── admin/
│   ├── login.html         # Admin login card
│   ├── dashboard.php      # Analytics, management overview & messages
│   ├── add_project.php    # Project publishing form with visual presets
│   ├── edit_project.php   # Edit existing project details
│   ├── add_experience.php # Work experience entry form
│   ├── edit_experience.php# Edit work experience details
│   ├── add_certificate.php# Achievement certificate entry form with badge picker
│   ├── edit_certificate.php# Edit certificate details
│   ├── settings.php       # Contact details & Resume upload/removal manager
│   └── view_messages.php  # Filterable message inbox
├── Backend/
│   ├── db.php             # MySQLi connection & error handling
│   ├── auth.php           # Secure authentication with prepared statements
│   ├── projects.php       # RESTful API for projects (GET, POST, DELETE)
│   ├── project.php        # Backwards-compatible alias
│   ├── experiences.php    # RESTful API for experiences (GET, POST, DELETE)
│   ├── certificates.php   # RESTful API for certificates (GET, POST, DELETE)
│   ├── profile_settings.php# Contact information & resume status API
│   ├── contact.php        # Contact form handler (AJAX & form POST)
│   └── logout.php         # Secure session destruction
├── CSS/
│   ├── style.css          # Main modern cyber-clean dark theme stylesheet
│   └── admin.css          # Admin portal styling
├── JS/
│   └── script.js          # Typewriter, dynamic projects/experiences/certificates, filters, modal & AJAX
├── sql/
│   └── schema.sql         # Idempotent database schema & initial seed data
├── index.html             # Main single-page interactive portfolio
├── about.html             # Detailed professional biography, competencies & certificates
├── project.html           # Dedicated projects filter page
├── contact.html           # Dedicated contact page
├── start-server.bat       # 1-click batch launcher for localhost server
└── README.md              # Documentation
```

---

## ✨ Features & Technologies

- **Modern Cyber-Clean UI:** Dark glassmorphism, cyan and indigo accents, responsive grid layout.
- **Interactive Typewriter:** Animated cycling titles in the hero section.
- **Dynamic Projects Showcase:** Asynchronous REST API fetching with instant category filters (`Enterprise MIS`, `Dashboard & BI`, `Inventory & Stock`, `Automation & ETL`, `Web Apps`).
- **Interactive Project Modal:** Deep dive into each system's architecture and technology breakdown.
- **Work Experience Timeline:** DB-driven experience cards with fallback seed data.
- **Achievement Certificates Grid:** Visual certificate cards with badge icons, credential IDs and links.
- **Asynchronous Contact Form:** Real-time form validation and AJAX submission with user feedback toasts.
- **Curriculum Vitae Download:** Authentic pre-generated PDF resume at `assets/resume.pdf`.
- **Fault-Tolerant Fallbacks:** Built-in cached seed data guarantees the site displays gracefully even if database is offline.
