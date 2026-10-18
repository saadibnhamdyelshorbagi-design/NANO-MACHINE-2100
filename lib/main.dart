import 'package:flutter/material.dart';

void main() {
  runApp(const NanoMachine2100App());
}

class NanoMachine2100App extends StatelessWidget {
  const NanoMachine2100App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nano Machine - 2100',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF050505), // أسود فحمي عتيق
        primaryColor: const Color(0xFFFF0033), // أحمر ليزري فاقع
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFF0033),
          surface: Color(0xFF111111),
        ),
      ),
      home: const HolographicHomeScreen(),
    );
  }
}

class HolographicHomeScreen extends StatefulWidget {
  const HolographicHomeScreen({super.key});

  @override
  State<HolographicHomeScreen> createState() => _HolographicHomeScreenState();
}

class _HolographicHomeScreenState extends State<HolographicHomeScreen> {
  String selectedVoiceMode = 'فصحى'; // التبديل بين الفصحى ولهجة مصر

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NANO MACHINE - 2100 [5G UNLIMITED]',
          style: TextStyle(
            color: Color(0xFFFF0033),
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.mic, color: Color(0xFFFF0033)),
            onPressed: () {
              setState(() {
                selectedVoiceMode = selectedVoiceMode == 'فصحى' ? 'لهجة مصرية' : 'فصحى';
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('تم تحويل وضع التحدث إلى: $selectedVoiceMode')),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCoreStatusCard(),
            const SizedBox(height: 16),
            _buildSectionHeader('محركات الإنتاج الخارق (الصور والفيديو)'),
            _buildFeatureTile(
              'مولد الصور الفائق (10,000 صورة/يوم)',
              'توليد بصري هولوغرامي فوري باللونين الأحمر والأسود',
              Icons.image,
              () => _showDialog(context, 'مولد الصور (10,000 / يوم)', 'جاهز لاستقبال الوصف الهولوغرامي عبر 5G.'),
            ),
            _buildFeatureTile(
              'مشغل Veo 3 السينمائي (60ث - 7200ث)',
              'إنتاج فيديوهات ممتدة بلا حدود عبر الذكاء الاصطناعي',
              Icons.videocam,
              () => _showDialog(context, 'مشغل Veo 3 (60ث - 7200ث)', 'تم ضبط المحرك لإنتاج فيديوهات سينمائية طويلة.'),
            ),
            const SizedBox(height: 16),
            _buildSectionHeader('معالجة الصوتيات والموسيقى'),
            _buildFeatureTile(
              'محو المعازف وتقطيع الأغاني',
              'عزل الموسيقى تماماً ودمج المقاطع الصوتية بذكاء',
              Icons.audiotrack,
              () => _showDialog(context, 'محو المعازف والأغاني', 'تم تفعيل خوارزميات عزل الترددات الموسيقية والقص واللصق الذكي.'),
            ),
            const SizedBox(height: 16),
            _buildSectionHeader('الأكاديمية الشاملة والمكتبة المعرفية'),
            _buildFeatureTile(
              'أكاديمية البرمجة وصناعة الذكاء الاصطناعي',
              'تطوير التطبيقات، الألعاب، تصميم المواقع، ولغات البرمجة',
              Icons.code,
              () => _showDialog(context, 'أكاديمية البرمجة', 'المسارات التفاعلية للبرمجة وتطوير الذكاء الاصطناعي جاهزة.'),
            ),
            _buildFeatureTile(
              'مكتبة الشعر العربي (القديم والحديث)',
              'دواوين شاملة، بحور الشعر، والبحث الذكي',
              Icons.menu_book,
              () => _showDialog(context, 'مكتبة الشعر العربي', 'أرشيف الدواوين والأبيات الكلاسيكية والحديثة نشط الآن.'),
            ),
            _buildFeatureTile(
              'الهكر الأخلاقي وأمن المعلومات',
              'أمان الشبكات، تحليل بيانات المواقع، واختبار الاختراق',
              Icons.security,
              () => _showDialog(context, 'الهكر الأخلاقي والشبكات', 'وحدات تأمين واختبار الاختراق الأخلاقي مفعلة.'),
            ),
            _buildFeatureTile(
              'أساسيات الشبكات اللاسلكية',
              'إدارة بروتوكولات الاتصال وتأمين إشارات 5G',
              Icons.wifi,
              () => _showDialog(context, 'الشبكات اللاسلكية', 'مراقبة وتحليل تدفق بيانات الشبكات اللاسلكية بنجاح.'),
            ),
            _buildFeatureTile(
              'احتراف إكسيل ومستلزماته',
              'الدوال المتقدمة، الجداول المحورية، وتحليل البيانات الضخمة',
              Icons.table_chart,
              () => _showDialog(context, 'احتراف إكسيل', 'جداول البيانات والتحليل المتقدم جاهزة للاستخدام.'),
            ),
            _buildFeatureTile(
              'تعلم لغات العالم السريع',
              'إتقان اللغات عبر تقنية المحاكاة العصبية السلسة',
              Icons.language,
              () => _showDialog(context, 'تعلم لغات العالم', 'محرك المحاكاة اللغوية السريعة جاهز للبدء.'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoreStatusCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0D0D0D),
        border: Border.all(color: const Color(0xFFFF0033), width: 1.5),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF0033).withOpacity(0.3),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          )
        ],
      ),
      child: Column(
        children: [
          const Icon(Icons.hub, size: 45, color: Color(0xFFFF0033)),
          const SizedBox(height: 8),
          const Text(
            'الجيل السابع - نانو ماشين (نشط)',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            'وضع التحدث الحالي: $selectedVoiceMode | اتصال 5G غير محدود متصل',
            style: const TextStyle(color: Color(0xFFFF5577), fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFFF0033),
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
        ),
      ),
    );
  }

  Widget _buildFeatureTile(String title, String subtitle, IconData icon, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: const Color(0xFF0D0D0D),
        border: Border.all(color: const Color(0xFFFF0033).withOpacity(0.5), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFFFF0033), size: 28),
        title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 11)),
        trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFFFF0033), size: 14),
        onTap: onTap,
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF0D0D0D),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFFF0033), width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        title: Text(title, style: const TextStyle(color: Color(0xFFFF0033))),
        content: Text(message, style: const TextStyle(color: Colors.white70)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('إغلاق', style: TextStyle(color: Color(0xFFFF0033))),
          ),
        ],
      ),
    );
  }
}