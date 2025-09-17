# MySQL User Roles Setup

This project uses 3 roles for database access:

- **Admin User** – Full access, can create/revoke users and privileges.  
- **Editor User** – Can only read and edit (no user management).  
- **Viewer User** – Read-only access.

---

## User Management

### 1. Creating Users
Run these commands as the **admin/root** user:

CREATE USER 'editor_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'viewer_user'@'localhost' IDENTIFIED BY 'password';
