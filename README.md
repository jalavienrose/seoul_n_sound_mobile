# Nama: Azzahra Salsabila
# NPM: 2306219934
# Kelas: PBP A

# Tugas 7
* ***Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_, dan jelaskan perbedaan dari keduanya.***
    - **Stateless Widget** adalah widget yang tidak memiliki _state_ atau _data_ yang dapat berubah. Stateless widget hanya memiliki _properties_ yang bersifat _immutable_ atau tidak dapat berubah. Sehingga, ketika widget bersifat _stateless_ maka widget tersebut tidak akan memperbarui tampilannya. Stateless widget biasanya digunakan untuk widget yang tidak memerlukan perubahan data, seperti _text_, _icon_, _image_, dan lain-lain.
    - **Stateful Widget** adalah widget yang memiliki _state_ atau _data_ yang dapat berubah. Stateful widget memiliki _properties_ yang dapat berubah dan dapat memperbarui tampilan widget dengan fungsi ```setState()```. Sehingga, ketika widget bersifat _stateful_ maka widget tersebut akan memperbarui tampilannya. Stateful widget biasanya digunakan untuk widget yang memerlukan perubahan data, seperti _form_, _list_, _button_, dan lain-lain.

* ***Sebutkan _widget_ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.***
    - **MaterialApp** adalah widget sebagai tempat pengaturan dasar yang digunakan untuk membuat aplikasi _Material Design_, memiliki _properties_ seperti ```title```, ```theme```, ```home```, dan lain-lain.
    - **Scaffold** adalah widget yang digunakan untuk membuat _layout_ komponen utama aplikasi yang memiliki _properties_ seperti ```appBar```, ```body```, ```floatingActionButton```, dan lain-lain.
    - **AppBar** adalah widget yang digunakan untuk membuat _app bar_ yang memiliki _properties_ seperti ```title``` program ini yaitu "Seoul N Sound" dengan _style_ yang disesuaikan.
    - **Text** adalah widget yang digunakan untuk menampilkan _text_ yang memiliki _properties_ seperti ```data```, ```style```, ```textAlign```, dan lain-lain.
    - **Column** adalah widget yang digunakan untuk menata widget secara vertikal yang memiliki _properties_ seperti ```children```, ```mainAxisAlignment```, ```crossAxisAlignment```, dan lain-lain.
    - **Row** adalah widget yang digunakan untuk menata widget secara horizontal yang memiliki _properties_ seperti ```children```, ```mainAxisAlignment```, ```crossAxisAlignment```, dan lain-lain.
    - **Container** adalah widget yang digunakan untuk membuat _layout_ yang memiliki _properties_ seperti ```child```, ```color```, ```padding```, ```margin```, dan lain-lain.
    - **Card** adalah widget yang digunakan untuk membuat _card_ yang menampilkan informasi NPM, nama, dan kelas, card memiliki _properties_ seperti ```child```, ```color```, ```elevation```, ```margin```, dan lain-lain.
    - **GridView** adalah widget yang digunakan untuk menampilkan widget dalam bentuk _grid_ yang memiliki _properties_ seperti ```children```, ```gridDelegate```, ```crossAxisCount```, ```mainAxisSpacing```, dan lain-lain agar tampilannya dapat diatur.
    - **MediaQuery** adalah widget yang memberikan informasi tentang ukuran layar yang digunakan untuk responsivitas, seperti menyesuaikan lebar ```InfoCard``` berdasarkan lebar layar.
    - **Inkwell** adalah widget yang digunakan untuk menambahkan efek sentuhan pada widget dan memungkinkan widget menjadi interaktif. Pada ```ItemCard```, ```InkWell``` digunakan agar pengguna dapat menekan item dan menampilkan aksi tertentu (SnackBar).
    - **SnackBar** adalah widget yang digunakan untuk menampilkan pesan sementara di bagian bawah layar. Pada proyek ini, ```SnackBar``` digunakan untuk menampilkan pesan ketika item di ```ItemCard``` ditekan.
    - **Icon** adalah widget yang digunakan untuk menampilkan _icon_, seperti _icon_ untuk tombol “Tambah Produk” atau “Logout” di ```ItemCard```.
    - **Material** adalah widget yang digunakan untuk menyediakan tampilan dasar berbasis Material Design untuk widget. Di sini, ```Material``` membungkus ```ItemCard``` dan memungkinkan aplikasi menerapkan warna tema dan efek Material.

* ***Apa fungsi dari ```setState()```? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.***
    - Fungsi ```setState()``` digunakan di dalam Stateful widgets untuk memperbarui UI berdasarkan perubahan yang terjadi pada state. Ketika ```setState()``` dipanggil, Flutter akan menjalankan ulang ```build()``` method dari widget, sehingga perubahan state dapat tercermin pada UI.
    - Variabel yang terdampak dengan fungsi tersebut adalah variabel yang mewakili data yang ditampilkan di UI dan variabel yang mengelola status logika aplikasi, seperti ```isLoading```, ```isChecked```, atau ```counter```.

* ***Jelaskan perbedaan antara ```const``` dengan ```final```.***
    - ```const```: Menandakan nilai tetap yang sudah ditentukan saat kompilasi. Nilai ini tidak bisa diubah selama runtime. ```const``` hanya dapat digunakan untuk nilai yang bisa dievaluasi sepenuhnya di waktu kompilasi.
    - ```final```: Menandakan nilai tetap yang diinisialisasi sekali saja, tetapi bisa diinisialisasi selama runtime. Dengan ```final```, kita bisa menentukan nilai berdasarkan operasi atau fungsi yang baru diketahui saat runtime, tetapi nilainya tetap tidak dapat diubah setelah diinisialisasi.
    
* ***Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas.***
    1. Melakukan instalasi Flutter dan Dart agar dapat membuat proyek Flutter.
    2. Membuat proyek Flutter baru dengan menggunakan perintah ```flutter create seoul_n_sound```.
    3. Untuk membuat tombol sederhana, buat class ```ItemHomePage``` dengan isi atribut card, dan list tombol yang akan ditampilkan.
    4. Membuat class ```ItemCard``` yang digunakan untuk menampikan tombol-tombolnya, pada class ini juga dimasukkan ```snackbar``` yang akan muncul ketika tombol ditekan dengan Scaffold.
    5. Untuk mengubah warna pada proyek, saya mengatur warna tema pada ```MaterialApp``` dengan ```primarySwatch``` dan ```secondary``` pada ```main.dart``` menjadi warna teal.
    6. Untuk snackbar sendiri, cara implementasinya dengan menggunakan ```InkWell``` agar elemen menjadi interaktif, lalu ```ScaffoldMessanger.of(context)``` untuk mengakses dan menampilkan snackbar dalam ```Scaffold```, lalu untuk snackbarnya berupa ```Text``` yang menampilkan pesan dari item yang ditekan.
