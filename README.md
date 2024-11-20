Nama: Azzahra Salsabila | NPM: 2306219934 | Kelas: PBP A

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

# Tugas 8
* ***Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?***
    - const digunakan untuk membuat objek yang bersifat immutable dan ditentukan pada waktu kompilasi.
    - Keuntungan menggunakan const diantaranya dapat mengoptimasi memori, yaitu objek yang sama dengan nilai yang sama akan disimpan hanya sekali dalam memori, selain itu const membuat aplikasi berjalan lebih efisien karena tidak perlu membuat ulang objek setiap kali akan digunakan. 
    - Kita dapat menggunakan const saat mendefinisikan widget yang tidak berubah untuk meningkatkan performance. 
    - Kita sebaiknya menghindari penggunaan const jika widget atau data di dalamnya akan berubah secara dinamis saat runtime.
  
* ***Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!***
    - Column digunakan untuk menata widget anak secara vertikal, satu di atas yang lain, berguna ketika kita ingin membuat elemen yang tersusun ke bawah, seperti daftar item atau formulir input.
    - Contoh penggunaan column:
      ```Column
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
        ],
      );
    - Row digunakan untuk menata widget anak secara horizontal, berdampingan satu sama lain, berguna untuk membuat elemen seperti baris ikon atau tombol navigasi.
    - Contoh penggunaan row:
      ```Row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.star),
          Icon(Icons.favorite),
          Icon(Icons.thumb_up),
        ],
      );
    - Perbandingan penggunaan: Column mengatur elemen secara vertikal ke bawah, sedangkan Row menyusun elemen secara horizontal berdampingan. Keduanya memiliki properti seperti ```mainAxisAlignment``` dan ```crossAxisAlignment``` untuk mengatur posisi elemen di sumbu utama dan sumbu silang. Column cocok untuk daftar item atau elemen vertikal, sementara Row lebih tepat untuk elemen sejajar seperti ikon atau tombol.

* ***Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!***
    - Elemen input yang saya gunakan pada tugas kali ini adalah ```TextFormField``` yang digunakan beberapa kali untuk menerima input dari pengguna, elemen ini mendukung validasi input dan memiliki dekorasi khusus untuk menampilkan hint dan label teks.
    - Elemen input flutter lain yang tidak digunakan adalah:
      - Checkbox: Checkbox biasanya digunakan untuk menerima input biner (ya/tidak).
      - Radio Button: Radio button cocok untuk memilih satu opsi dari beberapa pilihan yang tersedia.
      - Switch: Switch digunakan untuk mengaktifkan atau menonaktifkan fitur dengan pilihan antara dua status (on/off).
      - DropdownButton: Elemen ini digunakan jika ingin menampilkan daftar pilihan dalam bentuk menu tarik-turun.
      - Slider: Elemen ini cocok untuk memilih nilai dari suatu rentang dengan cara menyeret indikator.
      - DatePicker & TimePicker: Ini digunakan untuk memilih tanggal atau waktu.
      - GestureDetector: Elemen ini berguna untuk mendeteksi berbagai jenis interaksi pengguna seperti ketukan atau geseran pada widget.
      
* ***Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?***
    - Penerapan tema dalam aplikasi Flutter pada tugas saya dilakukan dengan menggunakan ```ThemeData``` untuk mendefinisikan skema warna dan elemen visual global. Tema utama ditentukan melalui ```colorScheme```, dengan ```primarySwatch``` diatur ke warna teal agar konsisten pada elemen UI seperti AppBar dan tombol. Warna sekunder diatur dengan ```copyWith```, menggunakan teal yang lebih terang. Aplikasi ini juga mengaktifkan Material 3 dengan properti ```useMaterial3: true```. Tema ini diterapkan pada widget ```MaterialApp```, agar seluruh aplikasi menggunakan skema warna yang sama.

* ***Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?***
    - Cara saya menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter adalah dengan ```Navigator.push```, yang menambahkan halaman baru ke tumpukan navigasi tanpa menggantikan halaman yang ada. Contohnya menggunakan ```Navigator.push``` dengan ```MaterialPageRoute``` untuk menavigasi ke halaman ```ShopEntryFormPage```. Metode lain seperti ```Navigator.pushReplacement``` dapat digunakan untuk menggantikan halaman saat ini dengan halaman baru, tanpa menambahkannya ke tumpukan navigasi. Untuk kembali ke halaman sebelumnya, dapat menggunakan ```Navigator.pop```.


# Tugas 9
* ***Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?***
    - Kita perlu membuat model karena model berfungsi sebagai representasi struktur data JSON di aplikasi. Dengan membuat model,  data JSON yang diterima atau dikirim dapat diakses seperti atribut objek daripada harus memproses data mentah, lalu model memastikan data yang diterima atau dikirim sesuai dengan struktur yang diharapkan, dapat memisahkan logika pengolahan data dari logika lain di aplikasi, sehingga kode lebih rapi dan mudah dipelihara. 
    - Jika kita tidak membuat model, data JSON harus diproses secara manual menggunakan map atau dictionary, yang lebih rawan kesalahan seperti null values atau tipe data tidak sesuai. Hal ini dapat memunculkan error saat mencoba mengakses atribut atau memanipulasi data.

* ***Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini.***
    - Fungsi dari library http di Flutter dapat digunakan untuk, mengirim Permintaan HTTP (seperti GET, POST, PUT, DELETE), untuk komunikasi antara aplikasi dan server, untuk mendapatkan data dalam format JSON dari API, untuk mengirimkan Data ke Server (seperti mengirim data pengguna (input form) ke endpoint API.), untuk menerima Respon dari Server, dengan ini komunikasi antara aplikasi Flutter dan backend menjadi lebih mudah diimplementasikan. 

* ***Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.***
    - Fungsi dari CookieRequest adalah untuk menyimpan sesi pengguna setelah login sehingga autentikasi dapat dipertahankan, untuk mengirim request ke server dengan menyertakan cookie autentikasi yang valid, dan untuk logout atau operasi lain yang memerlukan validasi sesi pengguna.
    - Mengapa instance CookieRequest perlu dibagikan karena semua komponen di aplikasi memerlukan akses ke cookie yang sama agar sesi pengguna tetap konsisten, lalu dapat meningkatkan efisiensi karena menggunakan satu instance CookieRequest menghindari pemborosan memori karena menciptakan banyak instance untuk setiap request, dan instance yang dibagikan memungkinkan komponen lain dengan mudah menggunakan informasi autentikasi tanpa perlu menginisialisasi ulang.

* ***Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.***
    1. Input Data: Pengguna memasukkan data ke form di Flutter.
    2. Konversi ke JSON: Data diubah menjadi format JSON sesuai kebutuhan server.
    3. Pengiriman ke Server: Menggunakan library http atau CookieRequest untuk mengirim request POST ke endpoint API server.
    4. Proses di Backend: Backend (Django) menerima data, memvalidasi, dan memprosesnya (misalnya, menyimpan ke database).
    5. Respon dari Server: Backend mengembalikan data JSON yang berisi status keberhasilan atau informasi lainnya.
    6. Tampilkan di Flutter: Respon JSON diubah menjadi model di Flutter dan ditampilkan di UI.

* ***Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.***
    - Mekanisme Login:
      1. Input di Flutter: Pengguna memasukkan email dan password.
      2. Kirim Data ke Backend: Data dikirim menggunakan request POST ke endpoint login Django.
      3. Proses Autentikasi Django: Django memvalidasi data login. Jika benar, server membuat cookie sesi.
      4. Respon ke Flutter: Server mengirimkan status berhasil dan cookie sesi ke Flutter.
      5. Tampilkan Menu: Flutter menyimpan cookie di CookieRequest dan mengarahkan pengguna ke halaman utama.
    - Mekanisme Register:
      1. Input di Flutter: Pengguna memasukkan data registrasi (nama, email, password, dsb.).
      2. Kirim Data ke Backend: Data dikirim menggunakan request POST ke endpoint register Django.
      3. Proses Registrasi Django: Django memvalidasi data dan membuat akun baru di database.
      4. Respon ke Flutter: Server mengirim status keberhasilan registrasi.
    - Mekanisme Logout:
      1. Kirim Request Logout: Flutter mengirim request POST ke endpoint logout Django.
      2. Hapus Sesi di Django: Django menghapus cookie sesi pengguna.
      3. Respon ke Flutter: Server mengirim status logout berhasil.
      4. Arahkan ke Login: Flutter menghapus data sesi di CookieRequest dan mengarahkan pengguna kembali ke halaman login.
