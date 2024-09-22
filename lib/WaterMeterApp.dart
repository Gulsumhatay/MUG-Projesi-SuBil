import 'dart:async' show Timer;
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WaterMeterApp extends StatelessWidget {
  const WaterMeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Meter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _balance = 20.0;
  double _waterConsumption = 0.0;
  final List<String> _transactions = [];
  late Timer _timer;
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _startWaterConsumption();
  }

  @override
  void dispose() {
    _timer.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _startWaterConsumption() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        double consumptionPerSecond = 0.1;
        double costPerSecond = 0.5;

        _waterConsumption += consumptionPerSecond;
        _balance -= costPerSecond;

        _transactions.add(
            'Su Tüketimi: ${consumptionPerSecond.toStringAsFixed(1)} Litre, Tutar: ${costPerSecond.toStringAsFixed(2)} TL');

        if (_balance <= 0) {
          _timer.cancel();
          _balance = 0;
          _playAlarmSound();
          _showAlarm();
        }
      });
    });
  }

  void _playAlarmSound() async {
    await _audioPlayer.play(AssetSource('sound/ses.mp3.mp3'));
  }

  void _addBalance(double amount) {
    setState(() {
      _balance += amount;
      _transactions.add('Bakiye Yükleme: $amount TL');
      if (_balance > 0 && !_timer.isActive) {
        _startWaterConsumption();
      }
    });
  }

  void _showAlarm() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red,
          title: const Row(
            children: [
              Icon(
                Icons.warning,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(width: 10),
              Text(
                'Uyarı!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: const Text(
            'Mevcut bakiye tükendi. Su kullanımı durduruldu.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Tamam',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5FCCD),
        title: const Text(
          'Su Sayacı Uygulaması',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff98DED9), Color(0xffC7FFD8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff0C356A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Mevcut Bakiye',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffF0F0F0),
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Text(
                          '₺ ${_balance.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  _addBalance(20.0);
                },
                icon: const Icon(Icons.add_circle_outline),
                label: const Text('Bakiye Yükle'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFC436),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff0C356A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Toplam Su Tüketimi',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffF0F0F0)),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${_waterConsumption.toStringAsFixed(1)} Litre',
                          style: const TextStyle(
                              fontSize: 28, color: Color(0xffF0F0F0)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'İşlem Geçmişi',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: _transactions.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        _transactions[index],
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            height: 1),
                      ),
                      textColor: Colors.black,
                      leading: const Icon(Icons.history, color: Colors.black),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
