# Windows Endpoint Detection & Investigation with osquery

## 📌 Overview

This project demonstrates how **osquery** can be used for Windows endpoint
visibility, process investigation, and network activity analysis.

The project focuses on a small set of practical SOC-style detections using
osquery SQL queries.

The goal is not simply to detect activity, but to:

- Collect endpoint telemetry
- Identify potentially interesting activity
- Investigate the associated process
- Compare activity against expected behavior
- Reduce false positives
- Document the investigation and final classification

---

## 🎯 Project Objectives

- Learn how to query Windows endpoint telemetry using osquery
- Investigate running processes
- Analyze executable paths
- Investigate PowerShell execution
- Correlate processes with network connections
- Understand normal vs suspicious endpoint behavior
- Practice basic detection engineering
- Document SOC investigation findings

---

## 🖥️ Environment

| Component | Details |
|---|---|
| Operating System | Windows 11 |
| Endpoint Visibility | osquery |
| Query Language | SQL |
| Environment | Local Windows Endpoint |
| Investigation Type | Endpoint Threat Hunting |

---

## 🏗️ Project Architecture

```text
                    Windows 11 Endpoint
                            |
                            v
                         osquery
                            |
              +-------------+-------------+
              |             |             |
              v             v             v
          processes     process_open_  services
                         sockets
              |             |
              +-------------+
                            |
                            v
                       Detection
                            |
                            v
                      Investigation
                            |
                            v
                    Analyst Assessment
                            |
                  +---------+---------+
                  |                   |
                  v                   v
               Benign              Suspicious