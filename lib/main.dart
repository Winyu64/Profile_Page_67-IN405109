/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 3, 41, 255)),
        useMaterial3: true,
      ),
      home: const MyAppBody(),
    );
  }
}

class MyAppBody extends StatelessWidget {
  const MyAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายชื่อนักศึกษาปี 4 CIS"),
        backgroundColor: const Color.fromARGB(255, 240, 132, 0),
      ),
      body: MyContent(),
    );
  }

  Widget MyContent() {
    final List<Map<String, String>> students = [
      {'name': 'นายเจษฎา ลีรัตน์ 643450067-0', 'image': 'assets/images/student1.jpeg'},
      {'name': 'นายณัฐกานต์ อินทรพานิชย์ 643450072-7', 'image': 'assets/images/student2.jpeg'},
      {'name': 'นายธนาธิป เตชะ  643450076-9', 'image': 'assets/images/student3.jpeg'},
      {'name': 'นายพีระเดช โพธิ์หล้า 643450082-4', 'image': 'assets/images/student4.jpeg'},
      {'name': 'นายวิญญู พรมภิภักดิ์ 643450084-0', 'image': 'assets/images/student5.jpeg'},
      {'name': 'นายเทวารัณย์ ชัยกิจ 643450324-6', 'image': 'assets/images/student6.jpeg'},
      {'name': 'นายศุภชัย แสนประสิทธิ์  643450332-7', 'image': 'assets/images/student7.jpeg'},
      {'name': 'นายธนรัตน์ บ้านสระ 643450658-7', 'image': 'assets/images/student8.jpeg'},
    ];

    return Container(
      color: const Color.fromARGB(255, 140, 119, 119),
      child: Column(
        children: [
          const Text(
            "รายชื่อนักศึกษาปี 4 CIS",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                final imageUrl = student['image']!;
                final studentName = student['name']!;
                final isHighlighted = studentName == 'นายวิญญู พรมภิภักดิ์ 643450084-0';/////////////////////////////////////////////////////////////////////////////
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(imageUrl),
                        radius: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '${index + 1}. $studentName',
                        style: TextStyle(
                          fontSize: 28,
                          color: isHighlighted ? Color.fromARGB(255, 0, 255, 76) : Colors.white,
                          fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("Mickey Mouse", "001", "images/เสกโลโซ1.jpeg", "Short bio", "mickey@disney.com", "https://facebook.com/mickey"),
      Student("Minnie Mouse", "002", "images/เสกโลโซ1.jpeg"),
      Student("Donal Duck", "003", "images/เสกโลโซ1.jpeg"),
      Student("Goofy", "004", "images/เสกโลโซ1.jpeg"),
      Student("Daisy Duck", "005", "images/เสกโลโซ1.jpeg"),
      Student("Pluto", "006", "images/เสกโลโซ1.jpeg"),
      Student('นายเจษฎา ลีรัตน์', '643450067-0', 'images/student1.jpeg'),
      Student('นายณัฐกานต์ อินทรพานิชย์', '643450072-7','images/student2.jpeg'),
      Student('นายธนาธิป เตชะ', '643450076-9','images/student3.jpeg'),
      Student('นายพีระเดช โพธิ์หล้า', '643450082-4','images/student4.jpeg'),
      Student('นายวิญญู พรมภิภักดิ์', '643450084-0','images/student5.jpeg',),
      Student('นายเทวารัณย์ ชัยกิจ', '643450324-6','images/student6.jpeg'),
      Student('นายศุภชัย แสนประสิทธิ์', '643450332-7','images/student7.jpeg'),
      Student('นายธนรัตน์ บ้านสระ', '643450658-7','images/student8.jpeg'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return displayItem(context: context, student: datas[index]);
          }),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      data: student,
                    )));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Image(
              width: 100,
              image: AssetImage(student.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            )
          ])),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("พี่เสก", "001", "images/เสกโลโซ1.jpeg", "THE KING OF ROCK N' ROLL THAILANDเสก โลโซ คือนักร้อง นักดนตรีร็อคแอนด์โรลของประเทศไทย", "LOSO@gmail.com", "https://www.facebook.com/sekloso.official/?locale=th_TH"),
      Student('นายเจษฎา ลีรัตน์', '643450067-0', 'images/student1.jpeg', "โสด", "mickey@kkumail.com", "https://www.facebook.com/pat.loveasd/about"),
      Student('นายณัฐกานต์ อินทรพานิชย์', '643450072-7','images/student2.jpeg', "โสด", "mickey@kkumail.com", "https://www.facebook.com/wai.nuttakan"),
      Student('นายธนาธิป เตชะ', '643450076-9','images/student3.jpeg', "โสด", "mickey@kkumail.com", "https://www.facebook.com/profile.php?id=100011086212292"),
      Student('นายพีระเดช โพธิ์หล้า', '643450082-4','images/student4.jpeg', "มีแฟนแล้ว", "mickey@kkumail.com", "https://www.facebook.com/peeradech8888"),
      Student('นายวิญญู พรมภิภักดิ์', '643450084-0','images/student5.jpeg', "มีแฟนแล้ว", "winyu.p@kkumail.com", "https://www.facebook.com/profile.php?id=100014625613598"),
      Student('นายเทวารัณย์ ชัยกิจ', '643450324-6','images/student6.jpeg', "โสด", "mickey@kkumail.com", "https://www.facebook.com/rungoodnam"),
      Student('นายศุภชัย แสนประสิทธิ์', '643450332-7','images/student7.jpeg', "โสด", "mickey@kkumail.com", "https://www.facebook.com/beam.supachai.9"),
      Student('นายธนรัตน์ บ้านสระ', '643450658-7','images/student8.jpeg', "มีแฟนแล้ว", "mickey@kkumail.com", "https://www.facebook.com/profile.php?id=100013270898676"),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return displayItem(context: context, student: datas[index]);
        },
      ),
    );
  }

  Widget displayItem({required BuildContext context, required Student student}) {
    final isHighlighted = student.name == 'นายวิญญู พรมภิภักดิ์';

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(data: student),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image(
              width: 100,
              image: AssetImage(student.image),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
                    color: isHighlighted ? Color.fromARGB(255, 0, 253, 34) : Colors.black,
                  ),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
