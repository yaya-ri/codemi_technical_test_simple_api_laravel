
## Dokumentasi

Dalam API yang saya buat terdiri dari 2 endpoint GET dan 2 endpoint POST sesuai deskripsi pada technical test. akan tetapi saya menambahkan authentikasi dengan menggunakan proteksi OAuth2 demi standart pertukaran data yang lebih aman untuk mengakses 4 endpoint yang sesuai pada deskripsi.

## EndPoint Register dan Login
    
    - localhost:8000/api/login
    - localhost:8000/api/register
    
Pada endpoint diatas mangharuskan client login terlebih dahulu untuk mendapatkan akses berupa token yang nantinya akan digunakan untuk mengakses 4 endpoint utama. sebelum melakukan login saat database masih kosong diharuskan untuk melakukan register terlebih dahulu.

## EndPoint utama

    - localhost:8000/api/classes (GET) --> menampilkan semua <i>class</i>
    - localhost:8000/api/students/{id} (GET) --> menampilkan class beserta student disetiap classnya dengan parameter id kelas
    - localhost:8000/api/classes (POST) --> menambahkan data pada tabel classes
    - localhost:8000/api/students (POST) --> menambahkan data pada tabel students

sebelum mengakses endpoint utama diatas seperti yang sudah saya jelaskan diawal user diwajibkan untuk melakukan login terlebih dahulu untuk mendapatkan akses token. setelah mendapatkanya token digunakan pada "header" dengan key "Authorization" dan "value" = 
"Bearer ---token akses---"

## Library/Package
pada pengerjaan technical test ini saya menggunakan beberapa library/package tambahan berupa:
- laravel passport
- laravel ramsey/uuid
