SELECT name, pid, path FROM processes WHERE name = 'powershell.exe' AND path NOT LIKE 'C:\Windows\System32\WindowsPowerShell\%';
