
# Kreş Veritabanı

## kişiler
- id
- tc
- adi soyadı
- telefonu
- şifre
- isAdmin (1/0)

### kreşler
- id
- kişi id
- kreş adı

### kreş personeli
- id
- kişi id
- kreş id

### kreş sınıfları
- id
- sınıf adı
- kreş id

### veliler
kişiler.kisi_id

### çocuklar
- id
- tc
- adı soyadı
- kreş id
- sınıf id
- kişi id (GERÇEK, SORUMLU VELİ. SMS Gönderilecek kişi)

### veli - çocuk eşleşmesi
- id
- çocuk id
- kişi id
- isASIL (1/0)
- isIZINLI (1/0)

### kayıt günlüğü
- id
- tarih
- kreş id
- sınıf id
- cocuk id
- kişi id (teslim alacak kişi)
- mevcut (1: Mevcut, 0: Yok)
- yoklama zamanı
- geldim zamanı
- hazır zamanı
- teslim zamanı



