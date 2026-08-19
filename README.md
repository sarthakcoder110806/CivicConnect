# CivicConnect

### Your Locality. Your Voice. Your Solution.

CivicConnect is a location-based civic issue reporting and tracking web application that allows citizens to discover, report, support, and track civic problems in their locality.

Instead of only submitting an individual complaint, citizens can see the civic problems already reported around them and collectively monitor their resolution.

---

## 📌 Problem Statement

Civic issues such as:

- Potholes
- Garbage accumulation
- Broken streetlights
- Drainage problems
- Water leakage
- Damaged roads

often affect entire localities.

Citizens may report these problems, but they may not know:

- What problems have already been reported nearby
- Whether someone else has reported the same issue
- What the current status of an issue is
- Whether the reported problem has actually been resolved

CivicConnect aims to close this gap through a locality-first civic issue platform.

---

## 💡 Our Solution

CivicConnect provides citizens with a shared view of civic problems in their locality.

### Core Flow

**📍 Location → 🗺️ Discover → ➕ Add → 🤝 Support → 🔄 Track → ✅ Verify**

Users can:

1. Detect their current locality.
2. View civic issues around them.
3. Add a new civic issue.
4. Upload a photo and description.
5. Automatically attach the issue location.
6. Support existing issues instead of creating duplicates.
7. Track the progress of reported issues.
8. Verify whether an issue has actually been resolved.

---

## ✨ Key Features

### 📍 Location-Based Issue Discovery
View civic problems reported around your current location.

### ➕ Report a New Issue
Citizens can report problems by providing:

- Issue category
- Description
- Photo
- Location

### 🗺️ Civic Issue Map
Display reported civic problems on a map according to their location.

### 🤝 Support Existing Issues
Citizens can support an already reported problem instead of submitting duplicate reports.

### 🔄 Issue Tracking
Track the complete issue lifecycle:

**Reported → Assigned → In Progress → Resolved**

### ✅ Citizen Verification
Citizens can confirm whether a reported issue has actually been resolved.

If the problem is still present, it can be marked as **Not Fixed** and reopened.

### 🔐 Verified Users
User authentication helps reduce fake and spam reports.

---

## 🛠️ Technology Stack

### Frontend

- HTML5
- CSS3
- JavaScript

### Backend & Cloud Services

- Firebase Authentication
- Cloud Firestore
- Firebase Storage

### Location & Maps

- Browser Geolocation API
- Google Maps API

### Future Technologies

- AI-based civic issue classification
- Image-based issue detection
- Duplicate issue detection
- Civic hotspot analysis

---

## 🏗️ System Architecture

```text
                    👤 CITIZEN
                        |
                        v
                🌐 WEB APPLICATION
                 HTML + CSS + JS
                        |
          +-------------+-------------+
          |             |             |
          v             v             v
       📍 GPS       🗺️ MAPS       🔐 AUTH
          |             |             |
          +-------------+-------------+
                        |
                        v
                   🔥 FIREBASE
              +---------+---------+
              |         |         |
              v         v         v
          Firestore  Storage   Auth
              |
              v
       🏛️ ADMIN / AUTHORITY
              |
              v
        🔄 STATUS UPDATE
              |
              v
       👤 CITIZEN TRACKING
              |
              v
       ✅ VERIFIED / REOPENED
