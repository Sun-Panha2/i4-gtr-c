import 'package:flutter/material.dart';

void main() {
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderSection(), // Header with profile picture and info
            SizedBox(height: 30),
            SectionTitle("PROFILE"),
            ParagraphText(
              "Motivated and detail-oriented engineering student with a strong "
              "foundation in information technology and embedded systems. "
              "Possesses strong communication skills, critical thinking, and "
              "problem-solving ability. Able to work effectively in a team, "
              "manage time efficiently, adapt to new environments, and "
              "demonstrates a strong willingness to learn.",
            ),
            //
            SectionTitle("EXPERIENCE"),
            ExperienceItem(
              year: "Jul 2025 – Sep 2025",
              position: "Internship",
              company: "Ministry of Electrical Cambodia, Phnom Penh, Cambodia",
              detail:
                  "Telecommunication systems, networking, and embedded technology.",
            ),

            //
            SectionTitle("EDUCATION"),
            EducationItem(
              year: "2022 – Present",
              title:
                  "Bachelor of Engineering / Telecommunication and Networking Engineering",
              place:
                  "Institute of Technology of Cambodia, Phnom Penh, Cambodia",
              detail:
                  "Embedded Systems, DSP, Networking, Programming, Analyse signal, etc.",
            ),
            SizedBox(height: 10),
            EducationItem(
                year: "2019 – 2022",
                title: "High School",
                place: "O'ombel high school, Banteay Meanchey, Cambodia",
                detail: "Focus Math, chemical, Biology and Physics"),
            SizedBox(height: 10),
            EducationItem(
                year: "2015 – 2019",
                title: "Secondary School",
                place: "O'ombel high school, Banteay Meanchey, Cambodia",
                detail: "General Subjects and foundation Courses"),
            //
            SectionTitle("PROJECTS"),
            Bullet("Flutter professional CV application"),
            Bullet("JAVA alarm clock application"),
            Bullet("VHDL distance measurement system"),
            Bullet("Sensor-based embedded system projects"),
            //
            SectionTitle("GENERAL SKILLS"),
            GeneralSkillsSection(),
            SectionTitle("TECHNICAL SKILLS"),
            SkillRow("Flutter & Dart"),
            SkillRow("Java/javaFX/OOP programming"),
            SkillRow("Arduino & Embedded Systems"),
            SkillRow("C / C++ Programming"),
            SkillRow("VHDL Programming"),
            SkillRow("Networking & CISCO"),
            SkillRow("Matlab"),
            SkillRow("Python"),
            SkillRow("JavaScript"),
            SkillRow("Digital Signal Processing"),
            //
            SectionTitle("LANGUAGES"),
            Bullet("Khmer – Native"),
            Bullet("English – Intermediate"),
            Bullet("French – Basic"),
          ],
        ),
      ),
    );
  }
}

/* ================= HEADER ================= */

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  Widget infoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.black),
          const SizedBox(width: 6),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile picture
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage("assets/profile.jpg"),
        ),

        const SizedBox(width: 20),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "SUN PANHA",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                  "Engineering / Telecommunication and Netwrorking Engineering"),
              const SizedBox(height: 10),
              infoRow(Icons.email, "Email: \t" "sunpanha88@gmail.com"),
              infoRow(Icons.phone, "Phone: \t" "+855 86 505 385"),
              infoRow(Icons.location_on, "Location: \t" "Phnom Penh/Cambodia"),
            ],
          ),
        ),
      ],
    );
  }
}

/* ================= SECTION TITLE ================= */

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            height: 1.5,
            width: double.infinity,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

/* ================= EXPERIENCE ================= */
class ExperienceItem extends StatelessWidget {
  final String year, position, company, detail;

  const ExperienceItem({
    super.key,
    required this.year,
    required this.position,
    required this.company,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$year — $position",
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(company),
          Text(detail),
        ],
      ),
    );
  }
}

/* ================= TEXT ELEMENTS ================= */

class ParagraphText extends StatelessWidget {
  final String text;
  const ParagraphText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(height: 1.5),
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  const Bullet(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("•  "),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

/* ================= GENERAL SKILLS ================= */

class GeneralSkillsSection extends StatelessWidget {
  const GeneralSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Strong communication skills",
      "Problem-solving ability",
      "Critical thinking",
      "Teamwork",
      "Time management",
      "Adaptability",
      "Computer literacy",
      "Attention to detail",
      "Willingness to learn",
    ];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: skills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            skill,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        );
      }).toList(),
    );
  }
}

/* ================= TECH SKILLS ================= */

class SkillRow extends StatelessWidget {
  final String skill;
  const SkillRow(this.skill, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        children: [
          Container(width: 6, height: 6, color: Colors.black),
          const SizedBox(width: 10),
          Text(skill),
        ],
      ),
    );
  }
}

/* ================= EDUCATION ================= */

class EducationItem extends StatelessWidget {
  final String year, title, place, detail;

  const EducationItem({
    super.key,
    required this.year,
    required this.title,
    required this.place,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$year — $title",
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(place),
          Text(detail),
        ],
      ),
    );
  }
}
