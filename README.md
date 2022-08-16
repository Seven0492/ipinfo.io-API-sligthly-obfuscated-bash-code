# ipinfo.io-API-sligthly-obfuscated-bash-code

By Seven#2672 on Discord

Sligthly obfuscated bash code to send ipinfo.io querries simply by executing and putting an argument or not.

# How to use

Before using this, you have to register (It's free) at https://ipinfo.io.

Retrieve your token and encrypt it to base64.

I made a little script to encrypt without using the browser or a command manually:

 ./base64_encrypt.sh [TOKEN]

Now, edit and replace [INSERT_BASE64_ENCRYPTED_TOKEN] in the first lines of ipinfo.sh with your encrypted token.

Now you can use it in multiple ways:

 ./ipinfo.sh; # (Gives back information about your public ip address)
 
 ./ipinfo.sh [INSERT_IP_ADDRESS]; # (Will return information about the ip address specified)
 
 ./ipinfo.sh [INSERT_OPTIONAL_IP_ADDRESS] debug; # (Will return the final querry link for you to inspect for 60 seconds, it will send the querry after)
