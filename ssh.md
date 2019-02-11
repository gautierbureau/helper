Create a key :
``` bash
$> ssh-keygen -t rsa -b 4096  -C "gautier.bureau@gmail.com"
```
Default location is fine, (Press enter when ask "Enter file in which to save the key")
Enter a solid passphrase.
-t : specifies the type of key, RSA here
-b : number of bits to create the key (default is 2048) 
-C : your email as a label

Sometimes you can have problems with ssh if you enter a passphrase, you can then create a dedicated ssh key for that.
When asked "Enter file in which to save the key", answer for example : ~/.ssh/id_rsa_no_passphrase

To see your public key:
``` bash
$> less .ssh/id_rsa.pub
```
You can then copy/paste this key in gitlab or github for example.

To avoid typing your passphrase to unlock your private key in a terminal session you can use : `ssh-agent`.
At the beginning of the session type ssh-agent or add in your bashrc: `eval `ssh-agent``
Then you need to add your private key in the agent with: `ssh-add` and you will be asked to type your passphrase.
You can see which profile is active in your agent (in a terminal session) with `ssh-add -l`

If you want to access machine in ssh without being connected in the corporate network and not using a VPN here is a solution.
First you need to ask the Helpdesk to add your SSH public key to a machine called bastion. 
This machine is the only corporate machine accessible from an outside network, it is a buffer to let you access other machines in the corporate network.
When your key is added you can connect to the machine with
``` bash
$> ssh gautier@corporate.fr
```

And after this if you want to connect to mymachine for example you will do:
``` bash
$> ssh gautier@mymachine.corporate.fr
```

Now this is a bit long, so you can create a config file to make it easier. Create a file `~/.ssh/config` and paste the following:

```
Host corporate-bastion
User gautier
HostName corporate.fr

Host mymachine
HostName corporate.fr 
User gautier
ProxyCommand ssh gautier@corporate-bastion /usr/bin/nc %h 22
```

After this you are now hable to connect to `mymachine` simply with
``` bash
$> ssh mymachine 
```

The ProxyCommand is just the first step you did before with ssh gautier@corporate.fr  but now it is transparent.