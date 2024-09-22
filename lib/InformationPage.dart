import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: AppBar(
        title: const Text(
          'Uygulama Hakkında',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff0C356A),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bilgilendirme',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial', // Yeni font ekledim
                  color: Colors.black87, // Yeni renk
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Bu uygulama, su kullanımınızı takip etmenizi ve su sayacınızı yönetmenizi sağlar.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial', // Yeni font
                  fontWeight: FontWeight.w500, // Daha belirgin
                  color: Colors.black, // Yeni renk
                ),
              ),
              SizedBox(height: 16),
              Text(
                '💧 Musluğu kapatmayı unutma! Her damla su 🌍 için değerli.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial', // Yeni font
                  fontWeight: FontWeight.w500, // Daha belirgin
                  color: Colors.black, // Yeni renk
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🌱 Bugün ne kadar su tasarruf ettin? Küçük adımlar 🚶‍♂️, büyük değişimlere yol açar!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🚿 Kısa duşlar alarak günde 40 litreye kadar su tasarrufu sağlayabilirsin!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🍽️ Sebzeleri yıkarken suyu açık bırakmak yerine bir kapta yıkamayı dene, doğa sana teşekkür edecek!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '👏 Harika gidiyorsun! Su tasarrufuyla hem doğayı 🌿 hem de bütçeni 💸 koruyorsun.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🚨 Su kaynakları hızla azalıyor! Bugün su tasarrufu yapmayı unutma!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '♻️ Çamaşır makineni tam doldur! Daha az yıkama, daha çok su tasarrufu demektir.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '⚠️ Damlaya damlaya göl olur, ama boşa akan her damla israf olur!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🔔 Su tükeniyor, bunu değiştirebilmek için adım atman gerekiyor!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🌊 Suyun değerini bilmek bir erdemdir, sen bu erdemi başarıyla uyguluyorsun!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🍶 Arıtma kullanmak yerine filtre sürahi kullanabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '💧 Diş fırçalarken suyu kapatabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🚿 Duşta liflenirken suyu kapatabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🧼 Bulaşıkları elde yıkamak yerine bulaşık makinesi kullanabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🚽 Arıtma kullanıyorsan atık suyu klozet sifonuna ekletebilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🧹 Arıtmanın atık suyu ile balkon yıkayıp temizlik yapabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '💧 Arıtma atık suyu için ayrı bir depo ve çeşme yaptırabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🫗 Kombi suyuna bağlatıp atık suyu kullanabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '🚰 Tuvaletten suyu açık bırakmaktan kaçınabilirsin.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Özellikler:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- Su tüketim takibi\n- QR kod ile hızlı erişim\n- Detaylı raporlama\n\n'
                'Subil uygulaması, akıllı su sayaçları ile entegre çalışarak su kullanımınızı en verimli şekilde yönetmenizi sağlar. Su tasarrufuna yönelik hedeflerimiz doğrultusunda, kullanıcıların su tüketimini takip etmelerini, gereksiz harcamaları önlemelerini ve çevre dostu alışkanlıklar geliştirmelerini teşvik ediyoruz.\n\n'
                'Uygulamamız, kullanıcı dostu arayüzü ve detaylı raporlama özellikleriyle su tasarrufunu kolaylaştırırken, günlük yaşamda basit ama etkili adımlar atmanızı sağlar. Suyun değerini bilmek ve tasarruf yapmak, hem doğamızı korumak hem de bütçenizi yönetmek açısından büyük önem taşıyor.\n\n'
                'Subil ile su kaynaklarımızı daha bilinçli kullanarak, gelecek nesillere daha yaşanabilir bir dünya bırakmayı hedefliyoruz.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'İletişim:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Herhangi bir sorunuz veya geri bildiriminiz varsa lütfen bizimle iletişime geçin.\n\n'
                'Instagram: @subil_app',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
