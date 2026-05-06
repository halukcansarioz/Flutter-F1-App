# 🏎️ Formula 1 Application
### (Flutter Tabanlı F1 Bilgi ve Takip Sistemi)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat&logo=flutter&logoColor=white)](#)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](#)
[![Material Design](https://img.shields.io/badge/Material--Design-757575?style=flat&logo=material-design&logoColor=white)](#)

Bu proje, Formula 1 tutkunları için geliştirilmiş; yarış takvimini, sürücü/takım sıralamalarını ve güncel sonuçları takip etmeyi sağlayan modern bir Flutter mobil uygulamasıdır.

## 📚 İçindekiler
- [Proje Hakkında](#proje-hakkında)
- [Özellikler](#özellikler)
- [Kullanılan Teknolojiler](#kullanılan-teknolojiler)
- [Kurulum ve Kullanım](#kurulum-ve-kullanım)
- [Proje Yapısı](#proje-yapısı)
- [Geliştirme Süreci](#geliştirme-süreci)
- [Katkıda Bulunma](#katkıda-bulunma)
- [İletişim](#iletişim)
- [Lisans](#lisans)

---

## Proje Hakkında
Bu uygulama, web servisleri (API) aracılığıyla güncel Formula 1 verilerini çeker ve kullanıcıya temiz bir arayüzle sunar. Yarış sonuçlarına, puan durumlarına ve sürücü biyografilerine hızlı erişim imkanı sağlar.

* **Geliştirici:** Haluk Can SARIÖZ
* **Platform:** Android & iOS (Cross-platform)
* **Veri Kaynağı:** OpenF1 / Ergast API

---

## Özellikler
* **Canlı Sonuçlar:** Yarış hafta sonlarındaki seans sonuçlarının anlık takibi.
* **Sıralama Tabloları:** Güncel Sürücüler (Drivers) ve Markalar (Constructors) şampiyonası puan durumu.
* **Yarış Takvimi:** Sezonun tüm yarış tarihlerini ve pist bilgilerini içeren kapsamlı takvim.
* **Detaylı İstatistikler:** Sürücü profilleri ve geçmiş başarılar.
* **Karanlık Mod Desteği:** Kullanıcı tercihlerine göre uyarlanabilir görsel tema.

---

## Kullanılan Teknolojiler
* **Flutter:** UI framework.
* **Dart:** Programlama dili.
* **HTTP/Dio:** API entegrasyonu ve veri çekme işlemleri.
* **Provider/Bloc:** State management (durum yönetimi) çözümleri.
* **Google Fonts:** Tipografi ve görsel tasarım.

---

## Kurulum ve Kullanım

### 1. Depoyu Klonlayın
```bash
git clone [https://github.com/halukcansarioz/Flutter-F1-App.git](https://github.com/halukcansarioz/Flutter-F1-App.git)
```

### 2. Proje Dizinine Gidin
```bash
cd Flutter-F1-App
```

### 3. Bağımlılıkları Yükleyin
```bash
flutter pub get
```

### 4. Uygulamayı Başlatın
```bash
flutter run
```

---

## Proje Yapısı
```text
Flutter-F1-App/
├── assets/             # Görseller ve fontlar
├── lib/
│   ├── models/         # Veri modelleri
│   ├── screens/        # UI ekranları
│   ├── services/       # API servisleri
│   ├── widgets/        # Tekrar kullanılabilir bileşenler
│   └── main.dart       # Uygulama giriş noktası
├── pubspec.yaml        # Paket yönetimi
└── README.md           # Proje dökümantasyonu
```

---

## Geliştirme Süreci

### 1. Forklama
Projeyi kendi hesabınıza fork'layarak geliştirmeye başlayabilirsiniz.

### 2. Yeni Dal (Branch) Oluşturma
```bash
git checkout -b ozellik/yeni-ozellik-adi
```

### 3. Kodları Gönderme (Push)
```bash
git push origin ozellik/yeni-ozellik-adi
```

---

## Katkıda Bulunma
1. Bu depoyu **Fork**'layın.
2. Bir **Branch** oluşturun (`git checkout -b feature/YeniOzellik`).
3. Değişikliklerinizi yapın ve **Commit** edin (`git commit -m 'Ekleme: Yeni özellik'`).
4. Kodlarınızı **Push**'layın (`git push origin feature/YeniOzellik`).
5. Bir **Pull Request** açın.

---

## İletişim
**Haluk Can Sarıöz** - [GitHub Profilim](https://github.com/halukcansarioz)  
**Proje Linki:** [https://github.com/halukcansarioz/Flutter-F1-App](https://github.com/halukcansarioz/Flutter-F1-App)

---

## Lisans
Bu proje [MIT Lisansı](LICENSE) ile lisanslanmıştır.
```
