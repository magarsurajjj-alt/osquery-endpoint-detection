# DET-003 — External Network Connection Investigation

## Overview

This detection uses osquery to identify active external network
connections and correlate them with the processes responsible for
the connections.

## Objective

Identify processes communicating with external IP addresses and
investigate whether the connections appear expected or suspicious.

## Data Source

- Tool: osquery
- Table: `process_open_sockets`
- Operating System: Windows 11

## Detection Query

```sql
SELECT pid, local_address, local_port,
       remote_address, remote_port, state
FROM process_open_sockets
WHERE state = 'ESTABLISHED'
AND remote_address NOT LIKE '127.%'
AND remote_address NOT LIKE '0.0.0.0';