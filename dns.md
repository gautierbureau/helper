nslookup nom_machine ip_du_dns

dig @ip_du_dns nom_machine

nmap ip_du_dns

DNS on port 53

/etc/resol.conf
/etc/nsswitch.conf

/etc/hosts : pour faire une correspondance entre nom et ip d'une machine pas accessible, car pas dans le DNS

ping peut ne pas marcher malgré nslookup qui marche... Je ne sais pas trop encore pourquoi
