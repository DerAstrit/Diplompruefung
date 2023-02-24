#!/bin/bash
#!Wichtig!


YourName="Astrit Selimi"
YourEmail="astrit.selimi20@hotmail.com"
YourTel="076 582 78 23"

CustomerName="Ralph Maurer"
CustomerEmail="ralph.maurer@gibb.ch"
CustomerTel="076 456 45 45"

TargetIpAddress="192.168.110.0/24"
Ordnername="/home/vmadmin/Desktop/Diplompruefung/Dokumentation_Astrit-Selimi"
HostIpAddress="192.168.120.51"
HostIpGateway="192.168.120.1"

#########################################################################################

mkdir -p "$Ordnername"/Scoping "$Ordnername"/Information_Gathering/Portscan/TCP "$Ordnername"/Information_Gathering/Portscan/UDP "$Ordnername"/Information_Gathering/Target_Review/ICMP "$Ordnername"/Vurnability_Research/Webserver_vulnerability "$Ordnername"/Vurnability_Research/Wordpress_vulnerability "$Ordnername"/Exploitation "$Ordnername"/Reporting && 

touch "$Ordnername"/Exploitation/Exploitation.txt "$Ordnername"/Reporting/Reporting.txt "$Ordnername"/Reporting/Information_Gathering.txt "$Ordnername"/Reporting/Vurnability_Research.txt "$Ordnername"/Reporting/Exploitation.txt

cat << EOF > "$Ordnername"/Scoping/Contract.txt
Contract

Customer / Emergency contact
"$CustomerName", "$CustomerEmail", "$CustomerTel"

Contractor
"$YourName", "$YourEmail", "$YourTel"
EOF


cat << EOF > "$Ordnername"/Scoping/Conditions.txt 
Statement of work
The contractor is here by authorized to perform a penetrationtest of the network "$TargetIpAddress" between the 5th of november until 25st of Februar 2022 and excepted from all liability
Analysis: identify and verify vulnerabilities in target network
Scope: All identifiable hosts in target network "$TargetIpAddress"
Attacker-IP: "$HostIpAddress"
Attack Vector: Attacker-IP à Gateway ("$HostIpGateway") à Target-Network
Testtype: Blind / BlackBox(https://thecyphere.com/blog/types-penetration-testing/)
EOF



cat << EOF > "$Ordnername"/Scoping/Limitations.txt
Limits / prohibited actions:
Denial of service attacks are prohibited
No sniffing or ARP-spoofing
Exploitation of vulnerabilities may not be attempted without explicit consent of customer
EOF



cat << EOF > "$Ordnername"/Scoping/Confidentiality_Agreement.txt

Geheimhaltungsvereinbarung

zwischen

gibb Berufsfachschule Bern
vertreten durch "$CustomerName"
im folgenden Auftraggeber genannt

und

"$YourName"
Im folgenden Dienstleister genannt.

1.	Gegenstand

Diese Vereinbarung regelt die Geheimhaltung von Datenkenntnissen, die der Dienstleister im Rahmen seiner Arbeiten für den Auftraggeber erarbeitet und/oder erfährt.

Der Auftraggeber hat ein gesetzlich verankertes Interesse daran, dass vertrauliche Informationen über das Geschäft oder diesbezügliche Sicherheitsvorkehrungen unberechtigten Dritten nicht offen gelegt werden und die Bestimmungen rund um den Datenschutz eingehalten werden.

Datenschutz ist Persönlichkeitsschutz. Geschützt werden somit nicht nur die Daten als solche, sondern auch die Person, welcher diese Daten zuzuordnen sind. 

2.	Wahrung der Vertraulichkeit

Der Dienstleister verpflichtet sich, über alle ihm offen gelegten Informationen, das fachliche Know-how sowie Geschäfts- und Betriebsgeheimnisse, die er im Rahmen von Arbeiten beim oder für den Auftraggeber erfährt, Stillschweigen zu bewahren und Dritten weder ganz noch auszugsweise zugänglich zu machen. Die Vertraulichkeit ist schon vor Beginn des Vertragsabschlusses zu wahren und bleibt auch nach Beendigung des Vertragsverhältnisses bestehen. Vorbehalten bleiben gesetzliche Aufklärungspflichten.

3.	Besondere Pflichten

3.1.	Der Dienstleister verpflichtet sich, die erhaltenen Kenntnisse nur zum vereinbarten Zweck zu nutzen und insbesondere alle Anordnungen einzuhalten, welche der Auftraggeber im Zusammenhang mit der Geheimhaltung und Sicherheit vorgibt. Der Zugriff auf Daten und Informationen erfolgt nur soweit, als dies zur ordnungsgemässen Aufgabenerfüllung unbedingt erforderlich ist.

3.2.	Anderslautende schriftliche Abmachungen vorbehalten, ist zur Nutzung nur der in dieser Vereinbarung bezeichnete Dienstleister berechtigt. Jede Verwendung und jedes Zugänglichmachen an unberechtigte Dritte ist dem Dienstleister untersagt. Der Dienstleister ist dafür verantwortlich, dass die Mittel zur Benutzeridentifikation und Zugriffsberechtigung anderen Personen nicht bekannt gegeben werden und Informationen darüber nicht zugänglich sind.

3.3.	Der Dienstleister verpflichtet sich, die einschlägigen Bestimmungen der kantonalen und eidgenössischen Datenschutzgesetzgebung, des Urheberrechtes sowie über das Amtsgeheimnis im Zusammenhang mit dem von ihm herbeigeführten Daten- und Informationsaustausch jederzeit einzuhalten. Insbesondere hat er erhaltene Daten nach Abschluss der Arbeiten unmittelbar zu löschen und dies dem Auftraggeber anzuzeigen.

3.4.	Der Dienstleister verpflichtet sich zu Erhaltung der Datenintegrität. Er darf die ihm zugänglich gemachten Daten ohne ausdrückliche Zustimmung des Auftraggebers weder umformatieren noch entfernen, versenden, vernichten, auf einem anderen System speichern oder sonst wie manipulieren.

3.5.	Diese Geheimhaltungsvereinbarung ist vom Dienstleister an alle von ihm bei einer Dienststelle des Auftraggeber eingesetzten Mitarbeitenden zu überbinden. Dazu hat er den Mitarbeitenden eine Kopie der Geheimhaltungsvereinbarung abzugeben, sich den Erhalt der Vereinbarung schriftlich bestätigen zu lassen und die Bestätigung unverzüglich dem Auftraggeber zu übergeben.

3.6.	Dem Dienstleister zur Kenntnis gelangende Mängel oder Fehlfunktionen von betroffenen Systemen oder Services sowie über die rechts- oder vertragswidrige Verwendung der Dienstleistung durch nicht autorisierte Dritte (z.B. Hacker) sind dem Auftraggeber umgehend anzuzeigen.

4.	Konventionalstrafe
Verletzt der Dienstleister die vorliegende Geheimhaltungspflicht, so schuldet er dem Auftraggeber eine Konventionalstrafe gem. Ziffer 9.5 der Allg. Geschäftsbedingungen für Informatikdienstleistungen der schweizerischen Informatikkonferenz. Vorbehalten bleiben strafrechtliche Schritte und haftpflichtrechtliche Konsequenzen bei der Missachtung des Datenschutzes.

5.	Änderungen
Änderungen dieser Vereinbarung sind nur gültig, wenn sie von den Parteien schriftlich festgelegt und unterzeichnet sind.
 
6.	Ausfertigung
Die vorliegende Vereinbarung wird im Doppel ausgefertigt, der Dienstleister erhält ein von beiden Parteien unterzeichnetes Exemplar. Alle für den Auftraggeber tätigen Mitarbeiterinnen und Mitarbeiter des Dienstleisters unterzeichnen jeweils eine Kopie der Vereinbarung.



Ort und Datum           Für den Dienstleister
25.02.2023              "$YourName"


Ort und Datum           Für den Auftraggeber
25.02.2023              "$CustomerName"
EOF




#ICMP Scan
echo "Starting Information Gathering";

echo "fping -r 0 -a -g $TargetIpAddress" > "$Ordnername"/Information_Gathering/Target_Review/ICMP/fping.txt && fping -r 0 -a -g "$TargetIpAddress"  >> "$Ordnername"/Information_Gathering/Target_Review/ICMP/fping.txt & 
echo "nmap -sP $TargetIpAddress"  > "$Ordnername"/Information_Gathering/Target_Review/ICMP/nmap_sP.txt && nmap -sP "$TargetIpAddress" >> "$Ordnername"/Information_Gathering/Target_Review/ICMP/nmap_sP.txt & 
echo "nmap -sn $TargetIpAddress" > "$Ordnername"/Information_Gathering/Target_Review/ICMP/nmap_sn.txt && nmap -sn "$TargetIpAddress" >> "$Ordnername"/Information_Gathering/Target_Review/ICMP/nmap_sn.txt &


#Target Discover#

echo "nmap -n -sV -O --version-light -T4 $TargetIpAddress" > "$Ordnername"/Information_Gathering/Target_Review/nmap-discover.txt && nmap -n -sV -O --version-light -T4 "$TargetIpAddress" >> "$Ordnername"/Information_Gathering/Target_Review/nmap-discover.txt &


#TCP Scan#

echo "nmap -sV -sC -F -O -T4 --open $TargetIpAddress" > "$Ordnername"/Information_Gathering/Portscan/TCP/FastTCP.txt && nmap -sV -sC -F -O -T4 --open "$TargetIpAddress" >> "$Ordnername"/Information_Gathering/Portscan/TCP/FastTCP.txt &


#UDP Scan#

echo "nmap -n -sU -F --min-rate=1000 --open $TargetIpAddress" > "$Ordnername"/Information_Gathering/Portscan/UDP/FastUDP.txt && nmap -n -sU -F --min-rate=1000 --open "$TargetIpAddress" >> "$Ordnername"/Information_Gathering/Portscan/UDP/FastUDP.txt &


#UDP and TCP Scan

echo "nmap -sU -sS -A -F --version-intensity 1 $TargetIpAddress" > "$Ordnername"/Vurnability_Research/UDP_TCP_Scan.txt && nmap -sU -sS -A -F --version-intensity 1 "$TargetIpAddress" >> "$Ordnername"/Vurnability_Research/UDP_TCP_Scan.txt &


#Port Vulnerability (nmap) Scan

echo "nmap -sV --script vuln $TargetIpAddress" > "$Ordnername"/Vurnability_Research/Port_vulnerability_nmap.txt && nmap -sV --script vuln "$TargetIpAddress" >> "$Ordnername"/Vurnability_Research/Port_vulnerability_nmap.txt &


###############################################################################################################################################################################################################################################################

#Webserver Vulnerability (nikto) Scan
echo "Finished Information Gathering";
echo "nmap -p 80 $TargetIpAddress" > "$Ordnername"/Vurnability_Research/Webserver_vulnerability/NmapIpScan.txt && nmap -p 80 "$TargetIpAddress" >> "$Ordnername"/Vurnability_Research/Webserver_vulnerability/NmapIpScan.txt;
cat "$Ordnername"/Vurnability_Research/Webserver_vulnerability/NmapIpScan.txt | awk '/Nmap scan report for/{ip=$NF; next} /open/{print ip}' | cat >>  "$Ordnername"/Vurnability_Research/Webserver_vulnerability/targetIP.txt;
echo "Starting Webscan";

#Wordpress Scan

#scan for WordPress version, XMLRPC, WordPress themes, WordPress plugins, Misc. basic information, User 
echo "while read ip; do wpscan --no-update --url "http://$ip" -e u >> "$Ordnername"/Vurnability_Research/Wordpress_vulnerability/wpscan_results.txt;done < ""$Ordnername""/Vurnability_Research/Webserver_vulnerability/targetIP.txt" > "$Ordnername"/Vurnability_Research/Wordpress_vulnerability/wpscan_results.txt && while read ip; do wpscan --no-update --url "http://$ip" -e u >> "$Ordnername"/Vurnability_Research/Wordpress_vulnerability/wpscan_results.txt;done < "$Ordnername""/Vurnability_Research/Webserver_vulnerability/targetIP.txt" &


#Webserver Vulnerability (nikto) Scan

echo "nikto -ask no -h "$Ordnername"/Vurnability_Research/Webserver_vulnerability/targetIP.txt" > "$Ordnername"/Vurnability_Research/Webserver_vulnerability/nikto_scan.txt && nikto -ask no -h "$Ordnername"/Vurnability_Research/Webserver_vulnerability/targetIP.txt >> "$Ordnername"/Vurnability_Research/Webserver_vulnerability/nikto_scan.txt;

chmod -R 555 "$Ordnername";

echo "Finished the Programm";
