# development-environment-vagrant
=============

## What's this?
my personal development environment using vagrant and virtualbox on windows 10.

## provisioned items
---------------------
    * Ubuntu 15.04-amd64 (provisioned by vagrantfile)
    * Git latest version (provisioned by git.sh script)
    * Redis server latest version (provisioned by redis.sh script)
    * Memcached latest version (provisioned by memcached.sh script)
    * Postgres 9.4 (provisioned by postgresql.sh script)
    * Node 5.7.1 (provisioned by nvm.sh script)
    * Ruby 2.3.0  (provisioned by rbenv.sh script)
    * Rails 4.2.5.2 (provisioned by rbenv.sh script)
	* Docker latest version (provisioned by docker.sh script)

## install
-----------
    1- Install the virtualbox latest version: [https://www.virtualbox.org/wiki/Downloads];

    2- Install the Vagrant latest version: [https://www.vagrantup.com/downloads.html];

    3- Paste the vagrantfile and the folder 'scripts' in your work folder e.g. C:\Projects or C:\Development;

    4- Set the provided items' versions at corresponding scripts; 

    5- Set the locale and timezone configurations at initial.sh script;

    6- Set the virtual machine settings in vagrantfile (memory, forward ports, synced folder, scripts to run...)

    7- Open the windows powershell command prompt, enter in your work folder and run:
        ``` vagrant
         $ vagrant plugin install vagrant-vbguest
         ```
    8- At the same folder, run:
        ``` vagrant
        $ vagrant up
        ```
    9- For enter in your vm in windows you need the PuTTY program:
        9.1- download putty.exe and puttygen.exe at: [here] (http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html);
        9.2- download the vagrant private ssh key file at:https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant and save it;
        9.3- run puttygen.exe, click "load" and choose the vagrant private ssh key file that you download, then click open. This will load the private key, click "ok";
        9.4- click "save private key", click "yes" to confirm, then save the file as "vagrant.ppk" at the same local at the file “insecure_private_key”. e.g. C:\Users\Felipe\.vagrant.d\vagrant.ppk
        9.5- run putty.exe, fill the host name field with vagrant@127.0.0.1, port: 2222. Select the connection type for "ssh". At left of the window, click "Connection > SSH > Auth”, click at the buttom “Browse” then select the file “vagrant.ppk” at the folder C:/Users/<your_user>/.vagrant.d/vagrant.ppk. Back to the "session" (first left menu item) enter a name in "saved sessions" field and click "save".
        9.6- Choose your saved session and click "open", click "yes" and That's it all! 
        Now you are inside your VM.
