# Sunucu

- Self Hosting yapılır
- Docker ile hosting ve development

### PHP
- Ver: 7.4
- php.ini içinde değişiklikler
- Bazı PHP eklentilerinin kurulumu (Örnek: Resim boyutlandırma GD kütüphanesi, php-gd)

### MariaDB (MySQL)
- Ver: 10.7
- my.ini içinde değişiklikler
- Volume tanımlama??
- /KRES/DB/  --->  /var/lib/mysql/kres/* 

### Apache
- Ver: 2.4.52
- apache.conf içinde değişiklikler
- Volume tanımlama??
- /KRES/SOURCE/   ---> /var/www/html

### Adminer
- Ayar Yok

### .sh Tanımlama
- Docker ayağa kalktığında çalıştırılacak .sh dosyası tanımlama

### Crontab
- Periyodik veritabanı SQL dump alma
- Periyodik dosya yedeği alma
- Boş alan, bellek, cpu vb takibi


