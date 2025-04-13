Personal Light Instagram
Project ini merupakan implementasi aplikasi "Personal Light Instagram" dengan fitur-fitur dasar seperti unggah post (gambar/video), like, komentar, pengaturan profil, dan ekspor data archive.
Fitur Aplikasi
Autentikasi

Register/signup untuk pengguna baru
Login menggunakan username dan password yang telah didaftarkan (bukan hardcode)

Profile Page

Menampilkan foto profil dan username
Feed foto/video yang telah diunggah
Detail foto/video saat diklik
Menampilkan bio profil
Fitur unggah foto/video dengan format JPG/PNG/JPEG/MP4/MOV (maks. 150MB)
Caption untuk setiap unggahan

Setting Profile

Pengaturan jumlah feed per row (default: 3 feeds per row)
Edit foto profil
Edit username
Edit bio profil

Archive Page

Tampilan archive berupa data table (foto/video post, tanggal post, caption)
Export archive ke format XLSX dan PDF
Filter berdasarkan tanggal untuk download archive

Fitur Tambahan

Like post
Komentar pada post
Informasi like dan comment ditambahkan pada data archive

Kebutuhan Sistem

PHP 8.3 atau lebih tinggi
Composer
MySQL / MariaDB
Node.js & NPM

Langkah Instalasi

Clone repository ini

git clone https://github.com/DonAdhyatma/personal-light-instagram.git
cd personal-light-instagram

Install dependencies PHP

composer install

Install dependencies JavaScript (jika menggunakan Vite/Mix)

npm install
npm run build

Salin file .env.example menjadi .env

cp .env.example .env

Buat database baru di MySQL/MariaDB
Impor database dari file SQL yang disediakan

mysql -u username_database_anda -p nama_database_anda < personal_light_instagram.sql
Atau, Anda juga dapat mengimpor file SQL menggunakan tools seperti phpMyAdmin:

Buka phpMyAdmin di browser
Pilih database yang telah dibuat
Klik tab "Import"
Pilih file personal_light_instagram.sql
Klik tombol "Go" atau "Import" untuk memulai proses impor

Edit file .env dan sesuaikan konfigurasi database:

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nama_database_anda
DB_USERNAME=username_database_anda
DB_PASSWORD=password_database_anda

Generate application key

php artisan key:generate

Jika Anda belum mengimpor database dari file SQL, Anda dapat menjalankan migrasi database

php artisan migrate

(Opsional) Jika Anda belum mengimpor database dari file SQL dan ingin mengisi data dummy

php artisan db:seed

Buat symbolic link untuk storage

php artisan storage:link

Jalankan web server

php artisan serve

Akses aplikasi di http://127.0.0.1:8000

Informasi Login
Akun yang tersedia di database:

Akun 1:

Email: kroos8@gmail.com
Password: kroos123

Akun 2:

Email: karim9@gmail.com
Password: karim123

Membuat akun baru:
Silakan pilih tombol "Register" pada halaman login jika ingin membuat akun baru.
Struktur Database

users: Menyimpan data user (username, email, password, profile_pic, bio)
posts: Menyimpan data postingan (user_id, file_path, file_type, caption)
likes: Menyimpan data like (user_id, post_id)
comments: Menyimpan data komentar (user_id, post_id, comment)
settings: Menyimpan pengaturan user (user_id, feeds_per_row)

Tech Stack

Laravel 11
MySQL / MariaDB
Maatwebsite Excel untuk ekspor XLSX
DomPDF untuk ekspor PDF

Screenshoot Aplikasi
(Tambahkan beberapa screenshot aplikasi di sini untuk memberikan gambaran visual)
Troubleshooting
Masalah Umum

Error saat upload file: Pastikan folder storage/app/public/posts memiliki permission yang benar
Error saat menggunakan like: Pastikan struktur relasi likes() sudah benar di model Post.php
Error saat ekspor PDF: Pastikan extension php-dom terinstall
Error saat login: Pastikan kredensial yang digunakan benar. Gunakan akun yang tersedia atau buat akun baru melalui halaman register
Error saat impor database: Pastikan file SQL tidak corrupt dan Anda memiliki izin yang cukup untuk mengimpor ke database

Masalah Umum Autentikasi

Lupa Password: Fitur reset password tersedia melalui halaman login, klik tautan "Lupa Password"
Email verifikasi tidak terkirim: Periksa folder spam/junk pada email Anda

Jika mengalami masalah lain, silakan buat issue baru di repository ini.
