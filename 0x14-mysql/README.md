## 0x14-mysql

### How to Install mysql 5.7.x
* method 1
- Download the MySQL repository by executing the following command:
```shell
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
```

- After the MySQL package has been successfully downloaded, install it
- Next, select Ubuntu Bionic.
- After that, select the MySQL Server & Cluster option. Then, select mysql-5.7 and finally select Ok.
- Next, update the APT repository
- Then execute the apt update again:
- To check whether MySQL 5.7 repository has been successfully installed, execute:

```shell
sudo apt-cache policy mysql-server
```

- Now that you have a MySQL 5.7 repository in your system, you can proceed to install it. For this, run the following command:

```shell
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
```
[for more guide about the installation](https://www.devart.com/dbforge/mysql/how-to-install-mysql-on-ubuntu/)

* method 2
- Copy the Signature Checking Key from [here](https://dev.mysql.com/doc/refman/5.7/en/checking-gpg-signature.html)
- Save it in a file on your machine i.e. signature.key and then

```shell
sudo apt-key add signature.key
```
- add the apt repo

```shell
sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
```

- update apt

```shell
sudo apt-get update
```

- now check your available versions:

```shell
vagrant@ubuntu-focal:/vagrant$ sudo apt-cache policy mysql-server
mysql-server:
  Installed: (none)
  Candidate: 8.0.27-0ubuntu0.20.04.1
  Version table:
     8.0.27-0ubuntu0.20.04.1 500
        500 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages
     8.0.19-0ubuntu5 500
        500 http://archive.ubuntu.com/ubuntu focal/main amd64 Packages
     5.7.37-1ubuntu18.04 500
        500 http://repo.mysql.com/apt/ubuntu bionic/mysql-5.7 amd64 Packages
```

- Now install mysql 5.7

```shell
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
```