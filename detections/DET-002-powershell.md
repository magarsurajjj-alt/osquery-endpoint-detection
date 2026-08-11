Detection ID: DET-002

Name:
PowerShell Process Investigation

Data Source:
osquery - processes table

Purpose:
Identify PowerShell processes and investigate their
executable path and command line.

Detection Query:

SELECT pid, name, path, cmdline
FROM processes
WHERE name = 'powershell.exe';

Investigation:

1. Identify the PowerShell PID.
2. Check the executable path.
3. Check the command line.
4. Determine whether the activity is expected.
5. Investigate unusual arguments or paths.

Expected Path:

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

Current Result:

Three PowerShell processes were observed.

All three were running from the expected Windows
PowerShell directory.

The command lines contained no additional suspicious
arguments.

Classification:

Benign / Expected

Severity:

Low

Analyst Conclusion:

PowerShell execution was observed, but no suspicious
behavior was identified from the available process
path and command-line information.