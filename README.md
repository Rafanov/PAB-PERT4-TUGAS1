# PAB Pertemuan 4 - Tugas 1

Aplikasi Shopping Cart Flutter

## Deskripsi

Project ini merupakan tugas mata kuliah **Pemrograman Aplikasi Bergerak** yang dibuat menggunakan **Flutter**.
Aplikasi ini menampilkan daftar produk dan fitur keranjang belanja sederhana dengan manajemen state menggunakan **Provider**.

Aplikasi dibuat berdasarkan materi pertemuan 1 sampai pertemuan 4.

---

# Fitur Aplikasi

### 1. Daftar Produk

* Menampilkan beberapa produk
* Menampilkan gambar produk
* Menampilkan harga produk
* Tombol tambah ke keranjang

### 2. Keranjang Belanja

* Melihat daftar item yang dimasukkan
* Menambah jumlah item
* Mengurangi jumlah item
* Menghapus item dari keranjang
* Menghapus semua isi keranjang
* Menampilkan total harga
* Menampilkan total jumlah barang

### 3. Navigasi Halaman

* Halaman daftar produk
* Halaman keranjang

---

# State Management

Project ini menggunakan **Provider** untuk mengatur state aplikasi.

State yang dikelola:

* daftar item di keranjang
* jumlah item
* total harga
* perubahan quantity

Provider akan memberi update otomatis ke UI ketika data berubah.

---

# Struktur Folder

```
lib
│
├── models
│   ├── product.dart
│   ├── cart_item.dart
│   └── cart_model.dart
│
├── pages
│   ├── product_list_page.dart
│   └── cart_page.dart
│
└── main.dart
```

### Penjelasan

**models**
Berisi struktur data aplikasi.

**pages**
Berisi tampilan UI aplikasi.

**main.dart**
Entry point aplikasi dan konfigurasi Provider.

---

# Penjelasan Komponen

## Product

Menyimpan data produk:

* id
* nama
* harga
* gambar
* kategori

## CartItem

Menyimpan item yang dimasukkan ke keranjang:

* produk
* quantity
* total harga

## CartModel

Mengatur seluruh logic keranjang:

* tambah item
* hapus item
* tambah quantity
* kurangi quantity
* clear cart
* hitung total harga

Class ini menggunakan **ChangeNotifier** agar UI dapat diperbarui otomatis.

---

# Teknologi yang Digunakan

* Flutter
* Dart
* Provider
* Material UI

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

* Struktur project Flutter
* Widget dasar Flutter
* Navigasi halaman
* State management menggunakan Provider
* Konsep parent dan child widget

---

# Author

Raihan Fariz N
Sistem Informasi
Universitas Mulawarman

---

# License

MIT License
