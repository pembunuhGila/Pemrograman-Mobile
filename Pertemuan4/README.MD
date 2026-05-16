# Laporan Praktikum #04 - Bahasa Pemrograman Dart - Bagian 3

## Identitas Mahasiswa

| Atribut | Nilai                        |
| ------- | -----                        |
| Nama    | Rachmad Zaki Setyawan        |
| NIM     | 244107060107                 |
| Kelas   | SIB-2D                       |

---

## Tugas Praktikum 1

#### - Praktikum 1 

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Jawab

Saat kode dijalankan, program membuat sebuah list yang berisi tiga angka yaitu [1, 2, 3]. Program kemudian mengecek apakah panjang list benar-benar 3 dan apakah nilai pada index ke-1 adalah 2 menggunakan assert. Setelah itu program menampilkan panjang list dan nilai pada index tersebut. Selanjutnya nilai pada index ke-1 diubah menjadi 1, sehingga saat dicetak kembali nilai yang muncul adalah 1.

- Langkah 3

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
Jawab

Indeks 0, 3, dan 4 masih bernilai `null` sebagai nilai awal, sementara indeks 1 berisi "Rachmad Zaki Setyawan" dan indeks 2 berisi "244107060107", di mana `print(list)` menampilkan seluruh isi array, sedangkan `print(list[1])` dan `print(list[2])` hanya menampilkan elemen pada indeks tertentu.

#### - Praktikum 2

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

Kode berjalan sukses tanpa error. Set halogens berhasil dibuat dengan 5 elemen unik dan urutannya acak karena sifat Set yang tidak terurut. Tidak perlu perbaikan apapun.

- Langkah 3

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

Dokumentasikan code dan hasil di console, lalu buat laporannya.

Jawab

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum2/2.1.png)
![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum2/2.2.png)
![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum2/2.3.png)

Kode tersebut membuat struktur data Set untuk menyimpan data tanpa duplikasi, di mana names1 menggunakan metode .add() untuk menambahkan elemen satu per satu, sedangkan names2 menggunakan .addAll() untuk menambahkan beberapa elemen sekaligus dalam bentuk list, sementara variabel names3 dihapus karena secara default {} akan dianggap sebagai Map, bukan Set.   

#### - Praktikum 3

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

Kode berjalan sukses tanpa eror.

- Langkah 3

Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum3/3.2.png)

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

Jawab

Program tersebut berhasil dijalankan tanpa error dan menampilkan isi dari dua Map, yaitu gifts dan nobleGases. Map gifts berisi pasangan key bertipe String dengan value campuran (String dan integer), sedangkan nobleGases berisi key integer dengan value juga campuran. Setelah itu, kode membuat Map baru (mhs1 dan mhs2), tetapi tidak digunakan lebih lanjut. Perubahan nilai yang dilakukan tetap terjadi pada Map awal

Menambahkan nama dan nim

![alt text](/Pertemuan4/Praktikum3/3.3.png)

![alt text](/Pertemuan4/Praktikum3/output3.png)

#### - Praktikum 4

- Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawab

![alt text](/Pertemuan4/Praktikum4/4.1.png)

Program ini membuat dua list. list berisi angka 1, 2, dan 3. Lalu list2 dibuat dengan menambahkan angka 0 di depan, dan isi dari list dimasukkan menggunakan spread operator (...). Jadi isi list2 adalah gabungan dari 0 dan semua isi list. Panjang list2 jadi 4 karena ada 4 elemen.

- Langkah 3

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

Jawab
![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.2.png)

 Di sini list berisi nilai null di dalamnya. Saat dimasukkan ke list3, digunakan ...?list. Tanda ...? ini artinya spread operator yang aman terhadap null. Jadi kalau list itu null, program tidak error. Tapi karena list di sini tidak null (hanya isinya ada null), maka semua isi tetap dimasukkan ke list3. Hasilnya list3 berisi 0, 1, 2, dan null dengan panjang 4.

![alt text](/Pertemuan4/Praktikum4/4.3.png)

- Langkah 4

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

Jawab

 Terjadi Eror karena promoActive belum dideklarasikan

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.4.png)

Mendeklarasikan promoActive(True)
![alt text](/Pertemuan4/Praktikum4/4.4.1.png)

Mendeklarasikan promoActive(False)
![alt text](/Pertemuan4/Praktikum4/4.4.2.png)

- Langkah 5

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

Jawab

 Kondisi masih belum di deklarasikan

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.5.png)

Jika nilai variabel login adalah 'Manager', maka elemen inventory akan ditambahkan ke dalam list
![alt text](/Pertemuan4/Praktikum4/4.5.1.png)

Jika nilai variabel login adalah selain 'Manager', maka elemen inventory tidak akan ditambahkan ke dalam list
![alt text](/Pertemuan4/Praktikum4/4.5.2.png)

- Langkah 6

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda

Jawab

 Saat kode dijalankan, program membuat listOfInts = [1, 2, 3] lalu memakai Collection For untuk menghasilkan listOfStrings berisi '#0', '#1', '#2', dan '#3'. Program tidak mengalami error, dan assert digunakan untuk memastikan bahwa elemen pada indeks ke-1 adalah '#1'.

Output:
![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum4/4.6.png)

Manfaat Collection For adalah membuat penambahan elemen ke koleksi menjadi lebih singkat, rapi, dan mudah dipahami tanpa perlu menulis perulangan terpisah di Dart.

#### - Praktikum 5

- Langkah 1:

Ketik atau salin kode program berikut ke dalam fungsi main().

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum5/5.1.png)

- Langkah 2:

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Jawab

 Terjadi error karena tadi kode record belum ditutup dengan tanda titik koma.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum5/5.1.1.png)

- Langkah 3

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

Jawab
 
 Jika fungsi tukar() diletakkan di luar main() lalu dijalankan, program tetap berjalan tanpa error karena penulisan fungsi Record di Dart sudah sesuai. Fungsi tersebut menerima record (int, int) dan menukar nilai di dalamnya dengan menggunakan pattern matching.

![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum5/5.2.png)

- Langkah 4

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

Jawab

 Terjadi error karena variabel record mahasiswa sudah dideklarasikan tetapi belum diberikan nilai (belum diinisialisasi). Perbaikannya dengan memberikan variabel record nilai awal

 ![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum5/5.3.png)

 - Langkah 5

 Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

 Jawab

  Program membuat sebuah record yang terdiri dari dua positional fields dan dua named fields. Nilai pada positional field diakses menggunakan $1 dan $2, sedangkan named field diakses dengan .a dan .b. Setelah salah satu nilai record diubah menjadi nama dan NIM, program tetap berjalan tanpa error dan menampilkan isi record sesuai urutan pemanggilannya di

 ![Hasil Modifikasi Kode Program](/Pertemuan4/Praktikum5/5.4.png)

## Tugas Praktikum 2-7

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
   Jawab

    Function di Dart adalah blok kode yang digunakan untuk menjalankan tugas tertentu dan dapat dipanggil kembali saat dibutuhkan. Function membantu membuat program lebih terstruktur, mengurangi pengulangan kode, dan mempermudah pemeliharaan.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
   Jawab

    - Default Parameter
    - Parameter Posisi(Positional Parameter)
    - Parameter Opsional Posisi(Optional Positional) []
    - Parameter Bernama(Named Parameter) {}

    ![Hasil Modifikasi Kode Program](/Pertemuan4/Tugas/Parameter.png)
    
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
   Jawab

    Function sebagai first-class objects berarti function di Dart diperlakukan seperti objek sehingga dapat disimpan ke variabel, dikirim sebagai parameter ke function lain, atau dikembalikan sebagai nilai dari function lain.

    ![Hasil Modifikasi Kode Program](/Pertemuan4/Tugas/Func.png)

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
   Jawab

    function yang tidak memiliki nama dan biasanya digunakan untuk tugas sederhana yang hanya dipakai sekali, terutama saat menjadi argumen pada function lain seperti forEach(), map(), atau where() di Dart. Karena tidak diberi nama, function ini ditulis langsung di tempat pemanggilannya sehingga membuat kode lebih ringkas ketika tidak perlu membuat function terpisah.

    ![Hasil Modifikasi Kode Program](/Pertemuan4/Tugas/anonymousFunc.png)

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
   Jawab

   Lexical scope adalah aturan bahwa suatu variabel hanya dapat diakses dalam ruang lingkup (scope) tempat variabel tersebut dideklarasikan. Function di Dart dapat mengakses variabel yang berada di dalam scope-nya sendiri maupun scope di luarnya, tetapi tidak bisa mengakses variabel yang berada di scope function lain yang terpisah. Hal ini membantu menjaga variabel agar tidak sembarangan diakses dari bagian program lain.
   
   ![Hasil Modifikasi Kode Program](/Pertemuan4/Tugas/lScope.png)

   Lexical closure adalah kondisi ketika sebuah function tetap dapat menyimpan dan menggunakan variabel dari scope luar tempat function tersebut dibuat, bahkan setelah function luar selesai dijalankan. Closure memungkinkan function "mengingat" nilai variabel sebelumnya.

   ![Hasil Modifikasi Kode Program](/Pertemuan4/Tugas/lClosures.png)

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
   Jawab

   Di Dart, function biasanya hanya mengembalikan satu nilai dengan return. Namun, jika ingin mengembalikan lebih dari satu nilai sekaligus, kita bisa menggunakan Record. Record memungkinkan beberapa data dengan tipe berbeda atau sama dikembalikan dalam satu function tanpa harus membuat class atau list terpisah.

   ![Hasil Modifikasi Kode Program](/Pertemuan4/Tugas/Record.png)

