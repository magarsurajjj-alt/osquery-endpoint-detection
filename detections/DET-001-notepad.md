# DET-001 — Unexpected Notepad Path Detection

## 1. Overview

This detection identifies `Notepad.exe` processes that are running
from an unexpected file location.

The purpose of this detection is to demonstrate how osquery can be
used to investigate process execution and identify potential
masquerading or unauthorized executables.

---

## 2. Objective

Detect `Notepad.exe` when it is executed from a location other than
the expected Microsoft WindowsApps directory.

A legitimate Microsoft Store version of Notepad on this endpoint
runs from:

C:\Program Files\WindowsApps\Microsoft.WindowsNotepad_*\Notepad\Notepad.exe

---

## 3. Data Source

- Tool: osquery
- Table: `processes`
- Operating System: Windows 11

---

## 4. Detection Query

```sql
SELECT name, pid, path
FROM processes
WHERE name = 'Notepad.exe'
AND path NOT LIKE 'C:\Program Files\WindowsApps\Microsoft.WindowsNotepad_%';