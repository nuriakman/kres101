# Ekran Tasarımları

```
=======================
ADMIN ## Admin Ekleme
=======================
	TC         : .........
	Adı Soyadı : .........
	Telefonu   : .........
  isadmin    : 1

=======================
ADMIN ## Kreş Ekleme
=======================
	KREŞ SAHİBİ
		TC         : .........
		Telefonu   : .........
		Adı Soyadı : .........

	KREŞ BİLGİLERİ
		KREŞ ADI   : .........

=======================
KREŞ SAHİBİ ## Kreşe Sınıf Ekleme
=======================
	Kreş Adı  : ......... COMBO
	Sınıf Adı : .........


=======================
KREŞ SAHİBİ ## Kreş Personeli Ekleme Ekranı
=======================
	Kreş Adı  : ......... COMBO
	TC        : .........
	Telefonu  : .........
	Adı Soyadı: .........


=======================
KREŞ SAHİBİ ## Öğrenci Ekleme Ekranı
=======================
	VELİ BİLGİLERİ
		TC         : .........
		Telefonu   : .........
		Adı Soyadı : .........

	ÖĞRENCİ BİLGİLERİ
		TC         : .........
		Adı Soyadı : .........
		Kreş Adı   : ......... COMBO
		Sınıf Adı  : ......... COMBO


=======================
VELİ ## Çocuğu Alacak Kişi Ekleme Ekranı
=======================
	İZİNLİ KİŞİ BİLGİLERİ
		TC         : .........
		Telefonu   : .........
		Adı Soyadı : .........

	ÖĞRENCİLER
	KREŞ 1  /  Öğrenci 1 :  (x) İZİNLİ    ( ) ASIL
	KREŞ 2  /  Öğrenci 1 :  (x) İZİNLİ    ( ) ASIL
	KREŞ 2  /  Öğrenci 2 :  (x) İZİNLİ    ( ) ASIL


=======================
VELİ / İZİNLİ VELİ ## Ben Geldim Ekranı
=======================
	ASIL ÖĞRENCİLERİ
		KREŞ 1 / Öğrenci 1 :  [x] GELDİM, ALACAĞIM
		KREŞ 2 / Öğrenci 2 :  [x] GELDİM, ALACAĞIM

	DİĞER ÖĞRENCİLER
		KREŞ 1 / Öğrenci 1 :  [ ] GELDİM, ALACAĞIM
		KREŞ 1 / Öğrenci 2 :  [ ] GELDİM, ALACAĞIM
		KREŞ 1 / Öğrenci 3 :  [x] GELDİM, ALACAĞIM
		KREŞ 2 / Öğrenci 1 :  [x] GELDİM, ALACAĞIM



=======================
KREŞ PERSONELİ ## Login Ekranı
=======================
	Login sonrasında:

	   (x) Kreş Adı 1
	   ( ) Kreş Adı 2
	   ( ) Kreş Adı 3
	   [Buradan Devam Et]


=======================
KREŞ PERSONELİ ## Yoklama Ekranı
=======================
	YOKLAMA TABLOSU

	KREŞ ADI  : BELLİ
	SINIF ADI : ....... COMBO
	[YOKLAMAYI GETİR]

	öğrenciler.adisoyadı
	öğrenciler.resim
	öğrenciler.kreşid  = X
	öğrenciler.sınıfid = Y



	Resim | Öğrenci Adı | Yoklama
	----------------------------------------
	      | Kemal Eymen | (x) VAR    ( ) YOK
	      | İsmail Akman| (x) VAR    ( ) YOK

	[YOKLAMA BİTTİ]




=======================
KREŞ PERSONELİ ## Teslim Ekranı
=======================

	kreşid  = BELLİ
	sinifid = COMBO  Hepsi / Sınıf1 / Sınıf2

	öğrenciler.*  tam liste alınır
	BEN GELDİM diyenler listede işaretlenir

	Liste Sırası
		Hazır Değil
		Hazır
		Var
		Teslim Edildi
		Yok/İzinli
	
	TESLİM BEKLEYENLER
	TESLİM BEKLEYENLER

	DURUM |SINIF  | Resim | Öğrenci Adı | Gelen COMBO  | İşlem
	-----------------------------------------------------------
	HDeğil| Lale  |       | İsmail Akman| [Nuri]       | [ Hazır ]  [ Teslim Edildi ]
	Hazır | Lale  |       | Ayşe Yılmaz | [Nuri]       | [ Hazır ]  [ Teslim Edildi ]
	Hazır | Lale  |       | Ayşe Yılmaz | [*ASIL Seçi] | [ Hazır ]  [ Teslim Edildi ]
	Var   | Lale  |       | Kadir Kurt  | [*ASIL Seçi] | [ Hazır ]  [ Teslim Edildi ]
	Var   | Zambak|       | Kadir Kurt  | [*ASIL Seçi] | [ Hazır ]  [ Teslim Edildi ]
	Var   | Zambak|       | Kadir Kurt  | [*ASIL Seçi] | [ Hazır ]  [ Teslim Edildi ]
	T.Edil| Lale  |       | Kemal Eymen | [Ahmet]      | [ Hazır ]  [ Teslim Edildi ]
	T.Edil| Lale  |       | İsmail Akman| [Nuri]       | [ Hazır ]  [ Teslim Edildi ]
	T.Edil| Lale  |       | Kemal Eymen | [Gökhan]     | [ Hazır ]  [ Teslim Edildi ]
	Yok   | Zambak|       | Kadir Kurt  | [ASIL Seçi]  | [ Hazır ]  [ Teslim Edildi ]


```





