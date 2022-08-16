## ipinfo.io-API-sligthly-obfuscated-bash-code

By Seven#2672 on Discord

<em>Sligthly</em> obfuscated bash code to send ipinfo.io querries simply by executing and putting an argument or not.

# How to use

<em>Before</em> using this, you have to register (<strong>It's free!</strong>) at <a href="https://ipinfo.io">ipinfo.io</a>.

<strong>Retrieve</strong> your token and <strong>encrypt</strong> it to base64.

I made a little script to encrypt <em>without</em> using the browser or a command manually:

<ul>
  <li><code>./base64_encrypt.sh [TOKEN]</code></li>
</ul>

Now, edit and replace [INSERT_BASE64_ENCRYPTED_TOKEN] in the first lines of <strong>ipinfo.sh</strong> with your encrypted token.

Now you can use it in multiple ways:

<ul>
  <li><code>./ipinfo.sh; # (Gives back information about your public ip address)</code></li>
 
  <li><code>./ipinfo.sh [INSERT_IP_ADDRESS]; # (Will return information about the ip address specified)</code></li>
 
  <li><code>./ipinfo.sh [INSERT_OPTIONAL_IP_ADDRESS] debug;
  # (Will return the final querry link for you to inspect for 60 seconds,
  it will send the querry after. Press <strong>Control+C</strong> to terminate the process)</code></li>
</ul>
