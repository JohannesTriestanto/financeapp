# Finance Mate

## Deskripsi

**Finance Mate** merupakan aplikasi mobile berbasis **Flutter** yang dibuat untuk memenuhi tugas **Mobile Programming 2 – Pertemuan 7 (Advance Widget)**.

Aplikasi ini dikembangkan berdasarkan project **FinnanceApp** yang diberikan oleh dosen. Pengembangan dilakukan dengan membuat project Flutter baru bernama **financeapp**, kemudian menyalin kode dari folder `lib` dan melakukan beberapa perubahan pada tampilan aplikasi sesuai dengan instruksi tugas.

Pada pengembangan ini, aplikasi mengalami perubahan pada **color theme**, penambahan **2 ATM Card**, serta peningkatan desain **User Interface (UI)** agar terlihat lebih menarik dan modern. Selain itu, aplikasi juga menggunakan **reusable widget** untuk beberapa komponen seperti ATM Card, Grid Menu, dan Transaction Item.

Aplikasi **Finance Mate** menampilkan informasi kartu, menu kategori keuangan, serta daftar transaksi terbaru. Aplikasi juga memiliki **Splash Screen dengan animasi** sebelum pengguna masuk ke halaman utama.

## Pengembangan yang Dilakukan

Beberapa pengembangan yang dilakukan pada project ini adalah:

1. Mengubah **color theme** aplikasi dari tampilan awal.
2. Menambahkan **2 ATM Card**, sehingga aplikasi memiliki total **4 ATM Card**.
3. Mengubah desain **User Interface (UI)** agar lebih menarik dan modern.
4. Menambahkan **background image** pada halaman aplikasi.
5. Mempertahankan penggunaan **reusable widget**.
6. Menggunakan reusable widget untuk:

   * ATM Card
   * Grid Menu Item
   * Transaction Item
7. Menambahkan animasi pada **Splash Screen**.
8. Menampilkan beberapa kategori keuangan melalui **Quick Menu**.
9. Menampilkan daftar **Recent Transactions**.
10. Menggunakan desain kartu dengan warna yang berbeda untuk membedakan setiap ATM Card.

## Tampilan Aplikasi

### 1. Splash Screen

Splash Screen merupakan halaman awal aplikasi yang menampilkan nama **Finance Mate** dengan efek fade animation. Setelah beberapa detik, aplikasi secara otomatis berpindah ke halaman utama.

### 2. Home Screen

Home Screen merupakan halaman utama aplikasi yang menampilkan ucapan pengguna, daftar ATM Card, Quick Menu, serta Recent Transactions. Tampilan halaman utama juga menggunakan desain dan warna baru serta background image untuk memberikan tampilan yang lebih menarik.

![Home Screen](screenshots/home_screen.png)

### 3. ATM Cards

Pada bagian **My Cards**, aplikasi menampilkan empat ATM Card dengan desain dan warna yang berbeda. Penambahan dua ATM Card merupakan salah satu bagian dari instruksi tugas.

![ATM Cards](screenshots/atm_cards.png)

### 4. Quick Menu

Bagian **Quick Menu** digunakan untuk menampilkan beberapa kategori transaksi, yaitu **Health, Travel, Food, dan Event**.

![Quick Menu](screenshots/quick_menu.png)

### 5. Recent Transactions

Bagian **Recent Transactions** menampilkan daftar transaksi keuangan, seperti **Coffee Shop, Grab Ride, Gym Membership, Movie Ticket, dan Salary**.

![Recent Transactions](screenshots/recent_transactions.png)

## Teknologi yang Digunakan

* Flutter
* Dart
* Material Design
* StatelessWidget
* StatefulWidget
* Animation
* Reusable Widget

## Reusable Widget

Aplikasi menggunakan beberapa reusable widget untuk membuat kode lebih terstruktur dan mudah digunakan kembali.

Struktur reusable widget yang digunakan:

* `atm_card.dart` — digunakan untuk membuat tampilan ATM Card.
* `grid_menu_item.dart` — digunakan untuk membuat menu kategori.
* `transaction_item.dart` — digunakan untuk menampilkan setiap transaksi.

Dengan menggunakan reusable widget, komponen yang sama dapat digunakan berkali-kali tanpa harus menulis kode tampilan dari awal.

## Struktur Project

```text
financeapp/
├── android/
├── assets/
│   └── images/
│       └── finance_background.jpg
├── ios/
├── lib/
│   ├── models/
│   │   └── transaction.dart
│   ├── screens/
│   │   ├── home_screen.dart
│   │   └── splash_screen.dart
│   ├── widgets/
│   │   ├── atm_card.dart
│   │   ├── grid_menu_item.dart
│   │   └── transaction_item.dart
│   └── main.dart
├── screenshots/
│   ├── home_screen.png
│   ├── atm_cards.png
│   ├── quick_menu.png
│   └── recent_transactions.png
├── test/
├── pubspec.yaml
└── README.md
```

## Kesimpulan

**Finance Mate** merupakan hasil pengembangan dari project **FinnanceApp** dengan menerapkan konsep **Advance Widget**, khususnya penggunaan reusable widget dan pengembangan tampilan antarmuka. Pengembangan dilakukan dengan mengubah tema warna, menambahkan dua ATM Card, memperbaiki desain UI, menambahkan background image, serta mempertahankan komponen reusable widget yang terdapat pada project.

## Author

**Johannes Triestanto**

**Mata Kuliah:** Mobile Programming 2
**Pertemuan:** 7 – Advance Widget
**Dosen Pengampu:** Niken Riyanti, S.T., M.Kom.
