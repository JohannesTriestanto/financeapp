# Finance Mate

## Deskripsi

**Finance Mate** merupakan aplikasi mobile berbasis **Flutter** yang dibuat untuk memenuhi tugas **Mobile Programming 2 – Pertemuan 7 (Advance Widget)**.

Aplikasi ini dikembangkan berdasarkan project **FinnanceApp** yang diberikan oleh dosen. Pengembangan dilakukan dengan membuat project Flutter baru bernama **financeapp**, kemudian menyalin kode dari folder `lib` dan melakukan beberapa pengembangan pada tampilan aplikasi sesuai dengan instruksi tugas.

Pada pengembangan ini, aplikasi mengalami perubahan pada **color theme**, penambahan **2 ATM Card** sehingga menjadi total **4 ATM Card**, serta peningkatan desain **User Interface (UI)** agar terlihat lebih menarik dan modern. Selain itu, aplikasi menggunakan **reusable widget** untuk beberapa komponen, seperti ATM Card, Grid Menu Item, dan Transaction Item.

Aplikasi **Finance Mate** menampilkan informasi kartu, menu kategori keuangan, serta daftar transaksi terbaru. Aplikasi juga menggunakan **Splash Screen dengan efek fade animation** sebelum pengguna masuk ke halaman utama.

## Pengembangan yang Dilakukan

Beberapa pengembangan yang dilakukan pada project ini adalah:

1. Mengubah **color theme** aplikasi dari tampilan awal.
2. Menambahkan **2 ATM Card**, sehingga aplikasi memiliki total **4 ATM Card**.
3. Mengubah desain **User Interface (UI)** agar lebih menarik dan modern.
4. Menambahkan **background image** pada halaman utama aplikasi.
5. Mempertahankan dan menerapkan konsep **reusable widget**.
6. Menggunakan reusable widget untuk beberapa komponen, yaitu:

   * ATM Card
   * Grid Menu Item
   * Transaction Item
7. Menambahkan **fade animation** pada Splash Screen.
8. Menampilkan beberapa kategori keuangan melalui **Quick Menu**.
9. Menampilkan daftar transaksi terbaru melalui **Recent Transactions**.
10. Menggunakan desain dan warna yang berbeda pada setiap ATM Card.

## Tampilan Aplikasi

### 1. Splash Screen

Splash Screen merupakan halaman awal aplikasi yang menampilkan nama **Finance Mate** dengan efek **fade animation**. Setelah beberapa detik, aplikasi secara otomatis berpindah ke halaman **Home Screen**.

Screenshot Splash Screen tidak disertakan karena tampilan Splash Screen hanya muncul dalam waktu singkat sebelum aplikasi berpindah ke halaman utama.

### 2. Home Screen

Home Screen merupakan halaman utama aplikasi yang menampilkan ucapan pengguna, bagian **My Cards**, **Quick Menu**, dan **Recent Transactions**. Halaman utama juga menggunakan perubahan color theme, desain UI yang baru, serta background image untuk memberikan tampilan yang lebih menarik.

![Home Screen](screenshots/home_screen.png)

### 3. ATM Cards

Pada bagian **My Cards**, aplikasi menampilkan **empat ATM Card** dengan desain dan warna yang berbeda. Penambahan dua ATM Card merupakan salah satu pengembangan yang dilakukan sesuai dengan instruksi tugas.

![ATM Cards](screenshots/atm_cards.png)

### 4. Quick Menu

Bagian **Quick Menu** digunakan untuk menampilkan beberapa kategori keuangan. Pada aplikasi ini terdapat empat kategori, yaitu **Health, Travel, Food, dan Event**. Setiap kategori ditampilkan menggunakan reusable widget `GridMenuItem`.

![Quick Menu](screenshots/quick_menu.png)

### 5. Recent Transactions

Bagian **Recent Transactions** digunakan untuk menampilkan daftar transaksi keuangan terbaru. Transaksi yang ditampilkan meliputi **Coffee Shop, Grab Ride, Gym Membership, Movie Ticket, dan Salary**. Setiap transaksi ditampilkan menggunakan reusable widget `TransactionItem`.

![Recent Transactions](screenshots/recent_transactions.png)

## Teknologi yang Digunakan

* **Flutter**
* **Dart**
* **Material Design**
* **StatelessWidget**
* **StatefulWidget**
* **Animation**
* **Reusable Widget**

## Reusable Widget

Aplikasi menggunakan beberapa reusable widget untuk membuat kode lebih terstruktur, mengurangi pengulangan kode, dan memudahkan penggunaan kembali komponen pada aplikasi.

Reusable widget yang digunakan antara lain:

* `atm_card.dart` — digunakan untuk membuat tampilan ATM Card. Widget ini dapat digunakan kembali untuk menampilkan beberapa kartu dengan informasi dan warna yang berbeda.
* `grid_menu_item.dart` — digunakan untuk membuat tampilan setiap item pada Quick Menu.
* `transaction_item.dart` — digunakan untuk menampilkan setiap item transaksi pada bagian Recent Transactions.

Dengan menggunakan reusable widget, komponen yang memiliki struktur tampilan yang sama dapat digunakan berkali-kali tanpa harus menulis ulang kode dari awal.

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

**Finance Mate** merupakan hasil pengembangan dari project **FinnanceApp** dengan menerapkan konsep **Advance Widget**, terutama melalui penggunaan reusable widget dan pengembangan tampilan antarmuka.

Pengembangan yang dilakukan meliputi perubahan **color theme**, penambahan **dua ATM Card** sehingga menjadi empat ATM Card, peningkatan desain **User Interface (UI)**, penambahan **background image**, penggunaan **fade animation** pada Splash Screen, serta penggunaan reusable widget untuk ATM Card, Quick Menu Item, dan Transaction Item.

## Author

**Johannes Triestanto**

* **Mata Kuliah:** Mobile Programming 2
* **Pertemuan:** 7 – Advance Widget
* **Dosen Pengampu:** Niken Riyanti, S.T., M.Kom.
