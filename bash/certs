#Show site cert

openssl s_client -showcerts -connect localhost:433

#Show keystore/truststore
#For only see you no needed passwd
#Default passwds: changeme, changeit

keytool -v -list -keystore /path/to/keystore

#Create keystore from certs

#Step one: Convert the x.509 cert and key to a pkcs12 file
openssl pkcs12 -export -in server.crt -inkey server.key \
        -out server.p12 -name [some-alias] \
        -CAfile ca.crt -caname root

#Step two: Convert the pkcs12 file to a Java keystore
#If passwd generated and have some special symbols use "" or ''

keytool -importkeystore \
        -deststorepass [changeit] -destkeypass [changeit] -destkeystore server.keystore \
        -srckeystore server.p12 -srcstoretype PKCS12 -srcstorepass some-password \
        -alias [some-alias]

