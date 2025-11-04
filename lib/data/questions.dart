class Question {
  final String text;
  final List<String> options;
  final int correctIndex;

  Question({
    required this.text,
    required this.options,
    required this.correctIndex,
  });
}

final List<Question> sampleQuestions = [
  // biar ga bisa ditimpa dengan variabel lain
  Question(
    text: 'Apa kepanjangan dari CPU?',
    options: [
      'Central Process Unit',
      'Central Processing Unit',
      'Computer Performance Unit',
      'Control Processing Unit'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Bahasa pemrograman yang berjalan di web browser adalah?',
    options: ['Dart', 'C++', 'JavaScript', 'Kotlin'],
    correctIndex: 2,
  ),
  Question(
    text: 'Manakah tipe data untuk bilangan bulat di Dart?',
    options: ['double', 'int', 'String', 'bool'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa yang dimaksud dengan UI?',
    options: [
      'User Interface',
      'Universal Internet',
      'Unique Identifier',
      'Unit Integration'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Framework mobile yang dikembangkan oleh Google adalah?',
    options: ['React Native', 'Flutter', 'Xamarin', 'Ionic'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu RAM?',
    options: [
      'Random Access Memory',
      'Read Access Memory',
      'Random Allocation Memory',
      'Runtime Access Memory'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Manakah yang bukan merupakan sistem operasi mobile?',
    options: ['Android', 'iOS', 'Windows Phone', 'Ubuntu'],
    correctIndex: 3,
  ),
  Question(
    text: 'Apa fungsi dari git clone?',
    options: [
      'Menghapus repository',
      'Menyalin repository ke local',
      'Membuat branch baru',
      'Menggabungkan branch'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu API?',
    options: [
      'Application Programming Interface',
      'Advanced Programming Implementation',
      'Automated Program Installation',
      'Application Process Integration'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file gambar yang mendukung transparansi adalah?',
    options: ['JPG', 'PNG', 'BMP', 'GIF'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa kepanjangan dari HTML?',
    options: [
      'Hyper Text Markup Language',
      'High Tech Modern Language',
      'Hyper Transfer Markup Language',
      'High Text Machine Language'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Fungsi utama dari firewall adalah?',
    options: [
      'Mempercepat internet',
      'Mengamankan jaringan',
      'Menyimpan data',
      'Mengkompresi file'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa yang dimaksud dengan URL?',
    options: [
      'Universal Resource Location',
      'Uniform Resource Locator',
      'United Resource Link',
      'Universal Reference Link'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Bahasa pemrograman yang dibuat oleh Microsoft adalah?',
    options: ['Java', 'Python', 'C#', 'PHP'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari tag <p> dalam HTML?',
    options: [
      'Membuat tabel',
      'Membuat paragraf',
      'Membuat link',
      'Membuat gambar'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu DNS?',
    options: [
      'Domain Name System',
      'Data Network Service',
      'Digital Network System',
      'Domain Network Service'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Manakah yang bukan merupakan web browser?',
    options: ['Chrome', 'Firefox', 'Excel', 'Safari'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa itu SQL?',
    options: [
      'Structured Question Language',
      'Simple Query Language',
      'Structured Query Language',
      'System Query Language'
    ],
    correctIndex: 2,
  ),
  Question(
    text:
        'Perangkat yang berfungsi untuk menghubungkan komputer ke internet adalah?',
    options: ['Printer', 'Scanner', 'Modem', 'Speaker'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa kepanjangan dari USB?',
    options: [
      'Universal Serial Bus',
      'United System Block',
      'Universal System Base',
      'United Serial Block'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari GPU?',
    options: [
      'Mengolah suara',
      'Mengolah grafis',
      'Menyimpan data',
      'Mengelola memori'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Bahasa pemrograman yang digunakan untuk pengembangan iOS adalah?',
    options: ['Java', 'Swift', 'Kotlin', 'Python'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu HTTP?',
    options: [
      'Hyper Text Transfer Protocol',
      'High Text Transfer Protocol',
      'Hyper Transfer Text Protocol',
      'High Transfer Text Protocol'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file yang digunakan untuk kompresi data adalah?',
    options: ['DOC', 'ZIP', 'PDF', 'TXT'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi utama dari antivirus?',
    options: [
      'Mempercepat komputer',
      'Melindungi dari malware',
      'Mengatur jaringan',
      'Menyimpan data'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa yang dimaksud dengan LAN?',
    options: [
      'Local Area Network',
      'Large Area Network',
      'Linear Access Network',
      'Local Access Node'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Perangkat yang berfungsi untuk menampilkan output visual adalah?',
    options: ['Monitor', 'Keyboard', 'Mouse', 'Printer'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu IP Address?',
    options: [
      'Internet Protocol Address',
      'Internal Port Address',
      'Internet Port Access',
      'Internal Protocol Access'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa markup yang digunakan untuk styling website adalah?',
    options: ['HTML', 'CSS', 'JavaScript', 'PHP'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari Router?',
    options: [
      'Mencetak dokumen',
      'Menghubungkan jaringan',
      'Menyimpan data',
      'Memproses grafis'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa kepanjangan dari WWW?',
    options: [
      'World Wide Web',
      'World Web Width',
      'Wide World Web',
      'Web World Wide'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Manakah yang merupakan cloud storage service?',
    options: ['Google Drive', 'Notepad', 'Paint', 'Calculator'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu OS?',
    options: [
      'Operating System',
      'Output System',
      'Order System',
      'Online Service'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file audio yang umum digunakan adalah?',
    options: ['JPG', 'DOC', 'MP3', 'EXE'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari harddisk?',
    options: [
      'Memproses data',
      'Menyimpan data',
      'Menampilkan gambar',
      'Mengatur jaringan'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Perangkat input yang digunakan untuk mengetik adalah?',
    options: ['Monitor', 'Printer', 'Mouse', 'Keyboard'],
    correctIndex: 3,
  ),
  Question(
    text: 'Apa itu WiFi?',
    options: [
      'Wireless Fidelity',
      'Wide Finance',
      'Wireless Finance',
      'Wide Fidelity'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software yang digunakan untuk mengedit foto adalah?',
    options: ['Excel', 'Photoshop', 'Word', 'PowerPoint'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari BIOS?',
    options: [
      'Menyimpan data',
      'Menginisialisasi hardware',
      'Mengatur jaringan',
      'Memproses grafis'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Manakah yang merupakan bahasa pemrograman berbasis objek?',
    options: ['HTML', 'CSS', 'Java', 'SQL'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa itu VPN?',
    options: [
      'Virtual Private Network',
      'Visual Program Network',
      'Virtual Program Node',
      'Visual Private Node'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file video yang umum digunakan adalah?',
    options: ['MP3', 'JPG', 'MP4', 'DOC'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari motherboard?',
    options: [
      'Menampilkan gambar',
      'Menghubungkan komponen komputer',
      'Menyimpan data',
      'Mengatur suara'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Software untuk membuat presentasi adalah?',
    options: ['Excel', 'Word', 'PowerPoint', 'Access'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa itu Bluetooth?',
    options: [
      'Teknologi kabel',
      'Teknologi wireless',
      'Jenis processor',
      'Jenis memory'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Manakah yang merupakan sistem operasi open source?',
    options: ['Windows', 'macOS', 'Linux', 'iOS'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari RAM?',
    options: [
      'Menyimpan data permanen',
      'Menyimpan data sementara',
      'Memproses grafis',
      'Mengatur jaringan'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu domain?',
    options: ['Alamat IP', 'Nama website', 'Jenis browser', 'Tipe jaringan'],
    correctIndex: 1,
  ),
  Question(
    text: 'Software untuk mengolah angka adalah?',
    options: ['Word', 'Excel', 'PowerPoint', 'Paint'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari UPS?',
    options: [
      'Backup listrik',
      'Mencetak dokumen',
      'Memproses data',
      'Menyimpan data'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file dokumen yang umum digunakan adalah?',
    options: ['MP3', 'JPG', 'PDF', 'EXE'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa itu malware?',
    options: [
      'Software berbahaya',
      'Software antivirus',
      'Software editing',
      'Software office'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa pemrograman untuk membuat aplikasi Android native adalah?',
    options: ['Swift', 'Kotlin', 'JavaScript', 'PHP'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari cookies dalam website?',
    options: [
      'Menyimpan data user',
      'Mengatur tampilan',
      'Mengatur jaringan',
      'Memproses data'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu RGB?',
    options: [
      'Real Good Build',
      'Red Green Blue',
      'Run Go Back',
      'Ready Get Build'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Software untuk mengolah video adalah?',
    options: ['Photoshop', 'Premiere Pro', 'Excel', 'Word'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari cache?',
    options: [
      'Menyimpan data sementara',
      'Menyimpan data permanen',
      'Mengatur jaringan',
      'Memproses grafis'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Perangkat yang berfungsi untuk mengambil gambar digital adalah?',
    options: ['Printer', 'Scanner', 'Webcam', 'Speaker'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa itu hosting?',
    options: [
      'Nama domain',
      'Layanan penyimpanan website',
      'Jenis browser',
      'Tipe jaringan'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Format file gambar yang tidak mendukung transparansi adalah?',
    options: ['PNG', 'GIF', 'JPG', 'SVG'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari proxy server?',
    options: [
      'Mempercepat internet',
      'Menyembunyikan identitas',
      'Menyimpan data',
      'Memproses grafis'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Manakah yang bukan merupakan tipe jaringan?',
    options: ['LAN', 'WAN', 'MAN', 'CPU'],
    correctIndex: 3,
  ),
  Question(
    text: 'Apa itu bug dalam programming?',
    options: [
      'Fitur baru',
      'Error dalam kode',
      'Update sistem',
      'Jenis variabel'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Software untuk mengolah suara adalah?',
    options: ['Photoshop', 'Excel', 'Audacity', 'Word'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari compiler?',
    options: [
      'Menerjemahkan kode',
      'Menyimpan data',
      'Mengatur jaringan',
      'Memproses grafis'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu IoT?',
    options: [
      'Internet of Things',
      'Internet of Time',
      'Internet of Type',
      'Internet of Tools'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Manakah yang merupakan format file kompresi?',
    options: ['DOC', 'RAR', 'PDF', 'TXT'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari UML?',
    options: [
      'Membuat desain sistem',
      'Mengatur jaringan',
      'Menyimpan data',
      'Memproses grafis'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk manajemen database adalah?',
    options: ['Word', 'Excel', 'MySQL', 'Paint'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa itu bandwidth?',
    options: [
      'Kecepatan transfer data',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa pemrograman untuk AI adalah?',
    options: ['HTML', 'CSS', 'Python', 'PHP'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari DNS Server?',
    options: [
      'Menerjemahkan domain',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu responsive design?',
    options: [
      'Desain yang menyesuaikan device',
      'Desain statis',
      'Jenis font',
      'Format gambar'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk membuat model 3D adalah?',
    options: ['Photoshop', 'Blender', 'Excel', 'Word'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari version control?',
    options: [
      'Mengatur versi kode',
      'Mengatur jaringan',
      'Menyimpan data',
      'Memproses grafis'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu cloud computing?',
    options: [
      'Komputasi berbasis internet',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file untuk font adalah?',
    options: ['TTF', 'JPG', 'MP3', 'DOC'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari firewall?',
    options: [
      'Keamanan jaringan',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk remote desktop adalah?',
    options: ['Word', 'TeamViewer', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu framework?',
    options: [
      'Kerangka kerja',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa pemrograman untuk data science adalah?',
    options: ['HTML', 'CSS', 'R', 'PHP'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari load balancer?',
    options: [
      'Membagi beban server',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu pixel?',
    options: [
      'Unit terkecil gambar digital',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk virtualisasi adalah?',
    options: ['Word', 'VirtualBox', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari debugger?',
    options: [
      'Mencari error',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu cybersecurity?',
    options: [
      'Keamanan digital',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file untuk ebook adalah?',
    options: ['EPUB', 'JPG', 'MP3', 'EXE'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari encrypsi?',
    options: [
      'Mengamankan data',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk mengolah database adalah?',
    options: ['Word', 'PostgreSQL', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu algorithm?',
    options: [
      'Langkah pemecahan masalah',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa pemrograman untuk game development adalah?',
    options: ['HTML', 'CSS', 'C++', 'PHP'],
    correctIndex: 2,
  ),
  Question(
    text: 'Apa fungsi dari indexing dalam database?',
    options: [
      'Mempercepat pencarian',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu IDE?',
    options: [
      'Integrated Development Environment',
      'Internal Development Engine',
      'Interface Design Element',
      'Input Data Environment'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk version control adalah?',
    options: ['Word', 'Git', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari API Gateway?',
    options: [
      'Mengatur akses API',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu machine learning?',
    options: [
      'Pembelajaran mesin',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file untuk vector graphic adalah?',
    options: ['SVG', 'JPG', 'MP3', 'DOC'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari RAID?',
    options: [
      'Redundansi data',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk monitoring server adalah?',
    options: ['Word', 'Nagios', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu microservices?',
    options: [
      'Arsitektur aplikasi',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa query untuk MongoDB adalah?',
    options: ['SQL', 'NoSQL', 'HTML', 'CSS'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari load testing?',
    options: [
      'Uji beban sistem',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu DevOps?',
    options: [
      'Development Operations',
      'Device Operations',
      'Developer Options',
      'Digital Operations'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk container orchestration adalah?',
    options: ['Word', 'Kubernetes', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari caching?',
    options: [
      'Mempercepat akses',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu blockchain?',
    options: [
      'Teknologi rantai blok',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file untuk arsip adalah?',
    options: ['ZIP', 'JPG', 'MP3', 'DOC'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari CI/CD?',
    options: [
      'Otomatisasi deployment',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk manajemen proyek adalah?',
    options: ['Word', 'Jira', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu REST API?',
    options: [
      'Representational State Transfer',
      'Remote State Transfer',
      'Rapid State Transfer',
      'Regular State Transfer'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa pemrograman untuk blockchain adalah?',
    options: ['Solidity', 'HTML', 'CSS', 'PHP'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari penetration testing?',
    options: [
      'Uji keamanan sistem',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu serverless?',
    options: [
      'Komputasi tanpa server',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk containerization adalah?',
    options: ['Word', 'Docker', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa fungsi dari message broker?',
    options: [
      'Mengelola antrian pesan',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu data mining?',
    options: [
      'Penggalian data',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Format file untuk backup database adalah?',
    options: ['SQL', 'JPG', 'MP3', 'DOC'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari clustering?',
    options: [
      'Pengelompokan data',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk monitoring jaringan adalah?',
    options: ['Word', 'Wireshark', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa itu NoSQL?',
    options: [
      'Database non-relasional',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Bahasa pemrograman untuk web scraping adalah?',
    options: ['Python', 'HTML', 'CSS', 'PHP'],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa fungsi dari SSH?',
    options: [
      'Remote akses aman',
      'Menyimpan data',
      'Mengatur grafis',
      'Memproses suara'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Apa itu big data?',
    options: [
      'Data skala besar',
      'Jenis memory',
      'Tipe processor',
      'Format file'
    ],
    correctIndex: 0,
  ),
  Question(
    text: 'Software untuk analisis data adalah?',
    options: ['Word', 'Tableau', 'Paint', 'Excel'],
    correctIndex: 1,
  ),
];
