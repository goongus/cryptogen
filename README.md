# 1. Cryptogen

Crypto coin generator

<h1>목차</h1>

- [1. Cryptogen](#1-cryptogen)
  - [1.1. Setup](#11-setup)
    - [1.1.1. DB](#111-db)
  - [1.2. Run](#12-run)

## 1.1. Setup

### 1.1.1. DB

처음 docker-compose 구동하기 전에 아래 config 파일을 생성한다.

```
mkdir -p ~/docker/mariadb/config
touch ~/docker/mariadb/config/mariadb.conf
```

`mariadb.conf` 파일에 아래 내용 첨부하여 DB 한글 인코딩을 설정한다.

```
# MariaDB-specific config file.
# Read by /etc/mysql/my.cnf

[client]
# Default is Latin1, if you need UTF-8 set this (also in server section)
#default-character-set = utf8
default-character-set = utf8mb4

[mysql]
default-character-set = utf8mb4

[mysqld]
#
# * Character sets
#
# Default is Latin1, if you need UTF-8 set all this (also in client section)
#
#character-set-server  = utf8
#collation-server      = utf8_general_ci
#character_set_server   = utf8
#collation_server       = utf8_general_ci
# Import all .cnf files from configuration directory
character-set-client-handshake = FALSE
character-set-server = utf8mb4
collation-server = utf8mb4_unicode_ci

!includedir /etc/mysql/mariadb.conf.d/
```



## 1.2. Run

```
docker-compose up -d --build
```
