All info copy of https://support.kerioconnect.gfi.com/hc/en-us/articles/360015200119-Adding-Trusted-Root-Certificates-to-the-Server
Thx Author: Luis Fernandes

Overview
A trusted root certificate must be added manually if you want to send or receive messages signed by root authorities where these authorities are not installed on the server.

Step-By-Step Guide
Mac OS X
To add, use the command:
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ~/new-root-certificate.crt

To remove, use the command:
sudo security delete-certificate -c "<name of existing certificate>"
Windows
To add, use the command:
certutil -addstore -f "ROOT" new-root-certificate.crt

To remove, use the command:
certutil -delstore "ROOT" serial-number-hex
Linux (Ubuntu, Debian)
To add:
Copy your CA to dir /usr/local/share/ca-certificates/
Use command: sudo cp foo.crt /usr/local/share/ca-certificates/foo.crt
Update the CA store: sudo update-ca-certificates
To remove:
Remove your CA.
Update the CA store: sudo update-ca-certificates --fresh
Note: Restart Kerio Connect to reload the certificates in the 32-bit versions or Debian 7.

Linux (CentOs 6)
To add:

Install the ca-certificates package: yum install ca-certificates
Enable the dynamic CA configuration feature: update-ca-trust force-enable
Add it as a new file to /etc/pki/ca-trust/source/anchors/: cp foo.crt /etc/pki/ca-trust/source/anchors/
Use command: update-ca-trust extract
Note: Restart Kerio Connect to reload the certificates in the 32-bit version.

Linux (CentOs 5)
To add, use the command:

Append your trusted certificate to file /etc/pki/tls/certs/ca-bundle.crt

cat foo.crt >>/etc/pki/tls/certs/ca-bundle.crt

Note: Restart Kerio Connect to reload the certificates in the 32-bit version