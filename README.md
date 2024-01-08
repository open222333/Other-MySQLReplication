# Other-MySQLReplication

```
MySQL Master-Slave docker-compose.yml 練習
```

## 目錄

- [Other-MySQLReplication](#other-mysqlreplication)
	- [目錄](#目錄)
	- [參考資料](#參考資料)
- [用法](#用法)
	- [master](#master)
	- [slave](#slave)

## 參考資料

[MySQL 筆記 Replication(Master-Slave 主從)](https://github.com/open222333/Other-Note/blob/main/03_%E4%BC%BA%E6%9C%8D%E5%99%A8%E6%9C%8D%E5%8B%99/DatabaseServer(%E8%B3%87%E6%96%99%E5%BA%AB%E4%BC%BA%E6%9C%8D%E5%99%A8)/MySQL/MySQL%20%E7%AD%86%E8%A8%98%20Replication(Master-Slave%20%E4%B8%BB%E5%BE%9E).md)

# 用法

## master

```sql
CREATE USER 'replication'@'192.168%' IDENTIFIED BY '.wFb9A?$9*WN';
GRANT REPLICATION SLAVE ON *.* TO 'replication'@'192.168%';
```

```sql
SHOW MASTER STATUS;
```

## slave

```sql
CHANGE MASTER TO
MASTER_HOST='{$master ip}',
MASTER_PORT=3306,
MASTER_USER='replication',
MASTER_PASSWORD='.wFb9A?$9*WN',
MASTER_LOG_FILE='{$master bin_log filename}',
MASTER_LOG_POS={$log position};
```

```sql
START SLAVE;
```
