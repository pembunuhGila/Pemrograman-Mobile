# 📸 Praktikum Pertemuan 9 — Plugin Kamera Flutter


### Langkah 2 — Tambah Dependensi

**File yang diubah:** `pubspec.yaml`, `android/app/build.gradle.kts`

Menambahkan 3 plugin yang dibutuhkan lewat terminal:
```bash
flutter pub add camera path_provider path
```

>
 **⚠️ Yang berbeda dari modul:**
> Di `build.gradle.kts`, nilai `minSdk` diubah dari:
> ```kotlin
> minSdk = flutter.minSdkVersion  // nilai default Flutter, bisa < 21
> ```
> menjadi:
> ```kotlin
> minSdk = 21  // nilai yang pasti aman untuk plugin camera
> ```
> **Kenapa?** Plugin `camera` butuh Android minimal versi 5.0 (API 21). Kalau dibiarkan pakai nilai default, aplikasi bisa error atau gagal jalan di HP Android.

---

### Langkah 3 — Ambil Sensor Kamera dari Device

**File yang diubah:** `lib/main.dart`

Fungsi `main()` diubah menjadi `async` supaya bisa menunggu proses pengambilan daftar kamera selesai sebelum aplikasi dijalankan.

```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras(); // ambil daftar kamera
  final firstCamera = cameras.first;        // pakai kamera pertama
  ...
}
```

> Tidak ada perubahan dari modul, hanya mengikuti instruksi.

---

### Langkah 4 — Buat dan Inisialisasi CameraController

**File yang dibuat:** `lib/widget/takepicture_screen.dart`

Membuat widget `TakePictureScreen` yang:
- Menyimpan `CameraController` untuk mengontrol kamera
- Menginisialisasi controller di `initState()` saat widget pertama dibuat
- Menutup/membersihkan controller di `dispose()` saat widget dihapus

```dart
@override
void initState() {
  super.initState();
  _controller = CameraController(widget.camera, ResolutionPreset.medium);
  _initializeControllerFuture = _controller.initialize();
}

@override
void dispose() {
  _controller.dispose(); // penting! supaya tidak bocor memori
  super.dispose();
}
```

> Tidak ada perubahan dari modul, mengikuti instruksi.

---

### Langkah 5 — Tampilkan Preview Kamera

**File yang diubah:** `lib/widget/takepicture_screen.dart` — bagian `build()`

Menggunakan `FutureBuilder` untuk menunggu kamera siap dulu, baru tampilkan preview-nya. Kalau belum siap, tampilkan loading spinner.

```dart
body: FutureBuilder<void>(
  future: _initializeControllerFuture,
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return CameraPreview(_controller); // kamera siap → tampil preview
    } else {
      return const Center(child: CircularProgressIndicator()); // masih loading
    }
  },
),
```

> Tidak ada perubahan dari modul, mengikuti instruksi.

---

### Langkah 6 — Ambil Foto dengan Tombol

**File yang diubah:** `lib/widget/takepicture_screen.dart` — bagian `FloatingActionButton`

Menambahkan tombol kamera di pojok bawah. Saat ditekan, aplikasi akan mencoba mengambil foto dan menyimpannya sementara di cache HP.

```dart
FloatingActionButton(
  onPressed: () async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture(); // ambil foto
    } catch (e) {
      print(e); // kalau error, cetak ke console
    }
  },
  child: const Icon(Icons.camera_alt),
)
```

> Tidak ada perubahan dari modul, mengikuti instruksi.

---

### Langkah 7 — Buat Widget DisplayPictureScreen

**File yang dibuat:** `lib/widget/displaypicture_screen.dart`

Widget baru untuk menampilkan foto yang sudah diambil. Foto dibaca dari path file yang dikirim dari layar sebelumnya.

```dart
body: Image.file(File(imagePath)), // tampilkan foto dari path file
```

> Tidak ada perubahan dari modul, mengikuti instruksi.

---

### Langkah 8 — Edit main.dart

**File yang diubah:** `lib/main.dart` — bagian `runApp()`

Mengganti tampilan default Flutter dengan `TakePictureScreen` sebagai halaman utama, dan mengaktifkan tema gelap.

> **⚠️ Yang diperbaiki dari modul:**
> Di modul ada **typo** (koma hilang), yang bisa menyebabkan error kompilasi:
> ```dart
> // ❌ Modul (koma setelah ) tidak ada)
> home: TakePictureScreen(
>   camera: firstCamera,
> )     // ← harusnya ada koma di sini
> debugShowCheckedModeBanner: false,
> ```
> ```dart
> // ✅ Yang dipakai (koma ditambahkan)
> home: TakePictureScreen(
>   camera: firstCamera,
> ),    // ← koma ditambahkan supaya tidak error
> debugShowCheckedModeBanner: false,
> ```

---

### Langkah 9 — Tampilkan Hasil Foto

**File yang diubah:** `lib/widget/takepicture_screen.dart` — bagian `try/catch`

Setelah foto berhasil diambil, aplikasi langsung berpindah ke `DisplayPictureScreen` dan mengirimkan path foto yang tadi disimpan.

```dart
final image = await _controller.takePicture();

if (!context.mounted) return;

await Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => DisplayPictureScreen(
      imagePath: image.path, // kirim path foto ke layar berikutnya
    ),
  ),
);
```

> Tidak ada perubahan dari modul, mengikuti instruksi.

---

## 🗂️ Struktur File

```
lib/
├── main.dart                        # Entry point, inisialisasi kamera
└── widget/
    ├── takepicture_screen.dart      # Layar preview & tombol foto
    └── displaypicture_screen.dart   # Layar tampil hasil foto
```

---

## 🚀 Cara Menjalankan

```bash
flutter pub get
flutter run
```

> Gunakan perangkat fisik atau emulator yang mendukung kamera.

---

## 📚 Referensi

- [Flutter Cookbook: Take a picture](https://docs.flutter.dev/cookbook/plugins/picture-using-camera)
- [camera — pub.dev](https://pub.dev/packages/camera)
- Modul Praktikum Pemrograman Mobile — Pertemuan 9
