class VirusData {
  String nameVirus;
  String superDomainVirus;
  String domainVirus;
  String worldVirus;
  String kingdomVirus;
  String filumVirus;
  String classVirus;
  String ordoVirus;
  String familiVirus;
  String description;
  String imageAsset;
  List<String> imageUrls;

  VirusData({
    required this.nameVirus,
    required this.superDomainVirus,
    required this.domainVirus,
    required this.worldVirus,
    required this.kingdomVirus,
    required this.filumVirus,
    required this.classVirus,
    required this.ordoVirus,
    required this.familiVirus,
    required this.description,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var virusDataList = [
  VirusData(
    nameVirus: 'Koronavirus',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: 'Riboviria',
    kingdomVirus: 'Orthornavirae',
    filumVirus: 'Pisuviricota',
    classVirus: 'Pisoniviricetes',
    ordoVirus: 'Nidovirales',
    familiVirus: 'Coronaviridae',
    description:
        'Koronavirus atau coronavirus (istilah populer: virus korona, virus corona, atau virus Corona) adalah sekumpulan virus dari subfamili Orthocoronavirinae dalam keluarga Coronaviridae dan ordo Nidovirales.Kelompok virus ini yang dapat menyebabkan penyakit pada burung dan mamalia (termasuk manusia). Pada manusia, koronavirus menyebabkan infeksi saluran pernapasan yang umumnya ringan, seperti pilek, meskipun beberapa bentuk penyakit seperti SARS, MERS, dan COVID-19 sifatnya lebih mematikan.',
    imageAsset: 'images/covid19.jpg',
    imageUrls: [
      'https://sman2sukoharjo.sch.id/images/artikel/gb25.jpg',
      'https://static.gatra.com/foldershared/images/2021/roh/03-Mar/Corona.jpg',
      'https://kompaspedia.kompas.id/wp-content/uploads/2020/06/new-visualisation-of-the-covid-19-virus-stockpack-unsplash-1400x788.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'Virus Marburg',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: 'Riboviria',
    kingdomVirus: 'Orthornavirae',
    filumVirus: 'Negarnaviricota',
    classVirus: 'Monjiviricetes',
    ordoVirus: 'Mononegavirales',
    familiVirus: 'Filoviridae',
    description:
        'Virus Marburg adalah spesies virus yang berada pada famili Filoviridae yang menyebabkan penyakit Marburg pada manusia dan hewan. Penyakit ini bersifat zoonotik.',
    imageAsset: 'images/marburg.jpg',
    imageUrls: [
      'https://media.suara.com/pictures/970x544/2021/08/11/62148-ilustrasi-virus-marburg.jpg',
      'https://www.verywellhealth.com/thmb/EpNKYpv9qGjliIvFB6AMkjwriSg=/2059x1456/filters:fill(87E3EF,1)/Marburgvirus-6b3a8045821e4e3a8a919e8231033555.jpg',
      'https://media.sciencephoto.com/f0/19/41/78/f0194178-800px-wm.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'Virus Ebola',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: 'Riboviria',
    kingdomVirus: 'Orthornavirae',
    filumVirus: 'Negarnaviricota',
    classVirus: 'Monjiviricetes',
    ordoVirus: 'Mononegavirales',
    familiVirus: 'Filoviridae',
    description:
        'Ebolavirus adalah genus virus yang ditempatkan dalam keluarga Filoviridae, ordo Mononegavirales. Anggota genus ini disebut virus ebola. Terdapat enam enam spesies virus yang diketahui, masing-masing diberi nama berdasarkan wilayah tempat mereka diidentifikasi: Bundibugyo ebolavirus, Reston ebolavirus, Sudan ebolavirus, Taï Forest ebolavirus (awalnya Côte d Ivoire ebolavirus), Zaire ebolavirus, dan Bombali ebolavirus. Spesies terakhir merupakan spesies terbaru yang diberi nama dan diisolasi dari kelelawar ekor-bebas angola di Sierra Leone. Setiap spesies dari genus Ebolavirus memiliki satu anggota virus, dan empat di antaranya menyebabkan penyakit virus Ebola (EVD) pada manusia, sejenis demam hemoragik yang memiliki tingkat fatalitas kasus yang sangat tinggi.',
    imageAsset: 'images/ebola.jpg',
    imageUrls: [
      'https://images.bisnis-cdn.com/posts/2021/02/16/1356735/virus-ebola.jpg',
      'https://cms.sehatq.com/cdn-cgi/image/f=auto,width=480,fit=pad,background=white,quality=100/public/img/article_img/mirip-malaria-ini-bahayanya-penyakit-ebola-1560503939.jpg',
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/06/02/2550501909.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'Virus Rabies',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: 'Riboviria',
    kingdomVirus: 'Orthornavirae',
    filumVirus: 'Negarnaviricota',
    classVirus: 'Monjiviricetes',
    ordoVirus: 'Mononegavirales',
    familiVirus: 'Rhabdoviridae',
    description:
        'Virus rabies adalah spesies virus yang menyebabkan penyakit rabies pada manusia dan hewan. Nama ilmiah spesies ini adalah rabies lyssavirus. Virus rabies berbentuk silinder dan merupakan spesies tipe genus Lyssavirus di dalam famili Rhabdoviridae. Virus ini memiliki selubung dan genom RNA beruntai tunggal dengan sifat sense-negatif. Seperti Rhabdoviridae lainnya, virus rabies dapat menulari berbagai macam spesies. Di alam, virus ini telah menginfeksi banyak spesies mamalia, sementara di laboratorium virus ini juga dapat menulari burung dan kultur sel dari mamalia, burung, reptil, dan serangga.',
    imageAsset: 'images/rabies.JPG',
    imageUrls: [
      'https://upload.wikimedia.org/wikipedia/commons/8/8c/Rabies_virus_structure.jpg',
      'https://imgx.parapuan.co/crop/0x0:0x0/x/photo/2021/09/08/rabies-virus-3d-illustration-pic-20210908125833.jpg',
      'https://media.sciencephoto.com/c0/39/12/61/c0391261-800px-wm.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'HIV',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: '---',
    kingdomVirus: '---',
    filumVirus: '---',
    classVirus: '---',
    ordoVirus: '---',
    familiVirus: 'Retroviridae',
    description:
        'Virus imunodefisiensi manusia (bahasa Inggris: human immunodeficiency virus; sering disingkat HIV) adalah dua spesies lentivirus penyebab AIDS. Virus ini menyerang manusia dan menyerang sistem kekebalan tubuh, sehingga tubuh menjadi lemah dalam melawan infeksi. Jika virus ini terus menyerang tubuh, sistem pertahanan tubuh kita akan semakin lemah. Tanpa pengobatan, seorang dengan HIV bisa bertahan hidup selama 9-11 tahun setelah terinfeksi, tergantung tipenya.',
    imageAsset: 'images/hiv.jpg',
    imageUrls: [
      'https://image-cdn.medkomtek.com/LvOhdyyEuaxim1ah0omI7th1Lj0=/673x373/smart/klikdokter-media-buckets/medias/2315164/original/016925200_1590470761-virus-hiv-shutterstock_559306498.jpg',
      'https://www.prosehat.com/wp-content/uploads/2018/10/virus-HIV.jpg',
      'https://ichef.bbci.co.uk/news/640/amz/worldservice/live/assets/images/2014/07/10/140710203846_hiv_virus_624x351_thinkstock_nocredit.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'Virus varicella-zoster',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: 'Duplodnaviria',
    kingdomVirus: 'Heunggongvirae',
    filumVirus: 'Peploviricota',
    classVirus: 'Herviviricetes',
    ordoVirus: 'Herpesvirales',
    familiVirus: 'Herpesviridae',
    description:
        'Virus varicella-zoster adalah virus penyebab cacar air dan cacar ular (herpes zoster). Inang dari virus ini hanya terbatas pada manusia dan primata (simian). Stuktur partikel virus (virion) varicella-zoster berukuran 120-300 nm. Genom virus ini berukuran 125 kb (kilo-basa) dan mengandung sedikitnya 69 daerah yang mengkodekan gen-gen tertentu. Virion terdiri dari glikoprotein, kapsid, amplop (selubung) virus, dan nukleokapsid yang melindungi bagian inti berisi DNA genom utas ganda. Bagian nukleokapsid berbentuk ikosahedral, berdiameter 100-110 nm, dan terdiri dari 162 protein yang disebut kapsomer. Virus ini akan mengalami inaktivasi pada suhu 56-60 °C dan menjadi tidak berbahaya apabila bagian amplop (selubung) dari virus ini rusak. Penyebaran virus ini dapat terjadi melalui pernapasan.',
    imageAsset: 'images/varicella.jpg',
    imageUrls: [
      'https://media.beritagar.id/2018-12/55419aeab8a5945b91e7e6b566662dd8de088f25.jpg',
      'https://image-cdn.medkomtek.com/iPGParferph5DrzWxNn_Lw6ee20=/350x170/smart/filters:quality(75):strip_icc():format(webp)/klikdokter-media-buckets/medias/2318891/original/078324400_1599804366-Ilustrasi-Cacar-Ular-shutterstock_1331347892.jpg',
      'https://www.harapanrakyat.com/wp-content/uploads/2019/11/Virus-Cacar-Air.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'Virus Hanta',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: '---',
    kingdomVirus: '---',
    filumVirus: '---',
    classVirus: '---',
    ordoVirus: 'Bunyavirales',
    familiVirus: 'Hantaviridae',
    description:
        'Virus Hanta (bahasa Latin: Orthohantavirus) adalah genus virus dari familia Bunyaviridae yang menyebabkan penyakit sindrom paru virus hanta (hantavirus pulmonary syndrome). Virus ini berbentuk bundar dengan diameter 100 nm. Pada bagian luar strukturnya, terdapat selubung virus dan di dalamnya dilapisi dengan membran ganda. Genomnya terdiri dari 6.550 nukleotida yang mengodekan enzim transkriptase virus, nukleokapsid, dan glikoprotein virus. Virus ini mudah dinonaktifkan oleh panas, detergen, pelarut organik, dan larutan hipoklorit.',
    imageAsset: 'images/hanta.jpg',
    imageUrls: [
      'https://thumbs.dreamstime.com/b/orthohantavirus-causes-hantavirus-hemorrhagic-fever-renal-syndrome-virus-which-human-pulmonary-transmitted-179320348.jpg',
      'https://t3.ftcdn.net/jpg/03/44/60/28/360_F_344602889_o8HTpqFS2J8QY36Hh6E1zWJ57to5eXdJ.jpg',
      'https://asset.kompas.com/crops/O9TAp2cQn7NOsV_-eImupX2Wp2I=/0x49:1000x549/780x390/data/photo/2020/03/12/5e69a37b389af.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'Virus Dengue',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: '---',
    kingdomVirus: '---',
    filumVirus: '---',
    classVirus: '---',
    ordoVirus: '---',
    familiVirus: 'Flaviviridae',
    description:
        'Virus dengue atau Dengue virus adalah spesies virus yang menyebabkan demam berdarah dengue. Virus ini ditempatkan dalam genus Flavivirus dan keluarga Flaviviridae. Virus dengue ditularkan melalui nyamuk. Lima serotipe virus telah ditemukan, yang semuanya dapat mengakibatkan spektrum penuh penyakit. Meskipun demikian, pemahaman para ilmuwan tentang virus dengue mungkin masih sederhana karena virus ini tidak dikelompokkan berdasarkan jenis antigen yang berbeda, tetapi berupa kontinum.',
    imageAsset: 'images/dengue.jpg',
    imageUrls: [
      'https://image-cdn.medkomtek.com/xtxivYTUGcc8F5s7zjuMOXC98LI=/640x480/smart/klikdokter-media-buckets/medias/1456589/original/094934200_1483452540-5-Virus-Dengue---Kecil_2C-Unik_2C-dan-Berbahaya.jpg',
      'https://itd.unair.ac.id/itd/wp-content/uploads/2020/02/Penghambatan-Aktivitas-Virus-Dengue-Serotipe-1-dengan-Senyawa-KobaltIi-Klorida.jpg',
      'https://image-cdn.medkomtek.com/uL-D6Q37W6zIusqCT436f0WSy78=/1200x675/smart/klikdokter-media-buckets/medias/2319944/original/045959500_1602143949-Demam-berdarah-disebabkan-oleh-virus-Flaviviridae-shutterstock_1762113260.jpg'
    ],
  ),
  VirusData(
    nameVirus: 'Rotavirus',
    superDomainVirus: 'Biota',
    domainVirus: 'Virus',
    worldVirus: '---',
    kingdomVirus: '---',
    filumVirus: '---',
    classVirus: '---',
    ordoVirus: '---',
    familiVirus: 'Reoviridae',
    description:
        'Rotavirus adalah genus dari virus RNA untai ganda dalam famili Reoviridae. Rotavirus adalah penyebab paling sering dari penyakit diare di kalangan bayi dan anak-anak, sedangkan pada orang dewasa jarang terinfeksi. Hampir setiap anak di dunia terinfeksi rotavirus setidaknya sekali pada masa balita. Imunitas berkembang seiring dengan terjadinya infeksi, sehingga infeksi yang terjadi setelahnya tidak parah.',
    imageAsset: 'images/rotavirus.jpg',
    imageUrls: [
      'https://d324bm9stwnv8c.cloudfront.net/Apa-Rotavirus-Bisa-Menjadi-Penyakit-Menular.jpg',
      'https://image-cdn.medkomtek.com/7QhXmpVFOCBpilAh3qQy7wS5W5E=/673x379/smart/klikdokter-media-buckets/medias/2320173/original/068638700_1602745740-shutterstock_1746465413.jpg',
      'https://www.dictio.id/uploads/db3342/original/3X/d/a/dab88b44a9905c091697cc2c1e8d4ff9313ae585.jpg'
    ],
  ),
];
