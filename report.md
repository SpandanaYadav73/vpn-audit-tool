# VPN AUDIT REPORT

Target : scanme.nmap.org

Open Ports:
1) 22 (SSH)
2) 80 (HTTP)
3) 443 (HTTPS)
Findings:

1) Slowloris DoS (CVE-2007-6750)
2) Possible CSRF
3) Active network services identified using Nmap
4) SSH, HTTP, and HTTPS services detected on open ports

## Methodology
- Performed servuce detection using Nmap (-sV)
- Identified open ports and running services
- Executed vulnerability scan using NSE scripts
- Analyzed output manually
- Stored scan results for reporting and analysis

## Limitations
- Scan limited to selected ports (22,80,443)
- No deep penetration testing performed

## Future Improvements
- Automate report generation
- Expand scanning scope

## Conclusion: The project successfully performed automated network scanning and vulnerability assessment using Bash scripting and Nmap.

## Ethical Disclaimer
This tool is intended for educational purpose only and should only be used on authorized systems. Do not perform scans on any websites which you have no legal rights on. Unauthorized scanning may violate laws and organizational polices.
