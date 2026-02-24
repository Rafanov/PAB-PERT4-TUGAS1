# PAB Pertemuan 4 - Tugas 1

Aplikasi Shopping Cart Flutter

## Deskripsi

Project ini merupakan tugas mata kuliah **Pemrograman Aplikasi Bergerak** yang dibuat menggunakan **Flutter**.  
Aplikasi ini menampilkan daftar produk dan fitur keranjang belanja sederhana dengan manajemen state menggunakan **Provider**.

Pada versi terbaru aplikasi juga memiliki fitur **pencarian produk** dan **filter kategori** untuk mempermudah pengguna menemukan produk.

Aplikasi dibuat berdasarkan materi pertemuan 1 sampai pertemuan 4.

---

# Fitur Aplikasi

### 1. Daftar Produk

- Menampilkan beberapa produk
- Menampilkan gambar produk
- Menampilkan harga produk
- Menampilkan kategori produk
- Tombol tambah ke keranjang

### 2. Search Produk

- Mencari produk berdasarkan nama
- Hasil langsung muncul saat mengetik

### 3. Filter Kategori

- Filter produk berdasarkan kategori
- Kategori diambil langsung dari data produk
- Dapat kembali ke semua produk dengan pilihan **All**

### 4. Keranjang Belanja

- Melihat daftar item yang dimasukkan
- Menambah jumlah item
- Mengurangi jumlah item
- Menghapus item dari keranjang
- Menampilkan total harga
- Menampilkan total jumlah barang

### 5. Checkout

- Menampilkan ringkasan pesanan
- Menampilkan jumlah item yang dibeli
- Menampilkan total harga
- Konfirmasi order
- Mengosongkan keranjang setelah checkout

### 6. Navigasi Halaman

- Halaman daftar produk
- Halaman keranjang
- Halaman checkout

---

# State Management

Project ini menggunakan **Provider** untuk mengatur state aplikasi.

State yang dikelola:

- daftar item di keranjang
- jumlah item
- total harga
- perubahan quantity
- update UI secara otomatis

Provider akan memberi update otomatis ke UI ketika data berubah.

---

# Struktur Folder

```
lib
│
├── data
│   └── product_data.dart
│
├── models
│   ├── product.dart
│   ├── cart_item.dart
│   └── cart_model.dart
│
├── pages
│   ├── home_page.dart
│   ├── cart_page.dart
│   └── checkout_page.dart
│
├── widgets
│   └── product_card.dart
│
└── main.dart
```

---

# Penjelasan Komponen

## Product

Menyimpan data produk:

- id
- nama
- harga
- gambar
- kategori

## CartItem

Menyimpan item yang dimasukkan ke keranjang:

- produk
- quantity
- total harga

## CartModel

Mengatur seluruh logic keranjang:

- tambah item
- hapus item
- tambah quantity
- kurangi quantity
- clear cart
- hitung total harga

Class ini menggunakan **ChangeNotifier** agar UI dapat diperbarui otomatis.

---

# Teknologi yang Digunakan

- Flutter
- Dart
- Provider
- Material UI

---

# Cara Menjalankan Project

1. Install Flutter

2. Clone repository

```
git clone https://github.com/Rafanov/PAB-PERT4-TUGAS1.git
```

3. Masuk ke folder project

```
cd PAB-PERT4-TUGAS1
```

4. Install dependency

```
flutter pub get
```

5. Jalankan aplikasi

```
flutter run
```

---

# Tujuan Project

Project ini dibuat untuk mempelajari:

- Struktur project Flutter
- Widget dasar Flutter
- GridView dan ListView
- Navigasi halaman
- State management menggunakan Provider
- Manajemen data pada aplikasi Flutter
- Implementasi fitur search dan filter

---

# Foto Aplikasi

## Layar Utama
<img width="615" height="885" alt="localhost_15293_" src="https://github.com/user-attachments/assets/41fcc769-a858-4689-96f5-96735cff5f84" />

<img width="615" height="885" alt="localhost_15293_ (3)" src="https://github.com/user-attachments/assets/76c84ddb-13b7-43b5-b425-95131b1abb66" />

## Layar Kerjanjang

<img width="615" height="885" alt="localhost_15293_ (1)" src="https://github.com/user-attachments/assets/16f5b174-a4e7-402f-86ac-33deaa827792" />

## Layar Checkout

<img width="615" height="885" alt="localhost_15293_ (2)" src="https://github.com/user-attachments/assets/638ed9bb-c8dc-47e1-8d30-522d0ce787a7" />

---

# Author

Raihan Fariz N  
Sistem Informasi  
Universitas Mulawarman

---

# License

MIT License
