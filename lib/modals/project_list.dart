import 'package:portfolio/components/my_time_line_tile.dart';
import 'package:portfolio/components/timeline_card.dart';

class Project {
  final String projectTitle, description;
  List<String> projectImages;
  List<String> iconsUsed;
  final String githubUrl;
  Project({
    required this.githubUrl,
    required this.projectTitle,
    required this.description,
    List<String>? projectImages,
    List<String>? iconsUsed,
  })  : projectImages = projectImages ?? [],
        iconsUsed = iconsUsed ?? [];
}

class ContactDetails {
  final String iconTitleLocation;
  final String title;
  final String urlName;
  ContactDetails({
    required this.iconTitleLocation,
    required this.title,
    required this.urlName,
  });
}

class SkillsDetaisl {
  final String iconName;
  final String description;
  final String title;

  SkillsDetaisl({
    required this.iconName,
    required this.description,
    required this.title,
  });
}

List<SkillsDetaisl> skillsDetails = [
  SkillsDetaisl(
    iconName: "assets/tech_icons/flutter.png",
    description:
        "I am skilled in creating basic apps using Dart and Flutter. Some of my works include Unit Convertor, Portfolio",
    title: "Flutter",
  ),
  SkillsDetaisl(
    iconName: "assets/tech_icons/firebase.png",
    description: "Firebase databse to store data",
    title: "Firebase",
  ),
  SkillsDetaisl(
    iconName: "assets/tech_icons/dart.png",
    description: "Coding in dart",
    title: "Dart",
  ),
];

List<MyTimeLineTile> mytimelineEducation = [
  MyTimeLineTile(
    isFirst: true,
    isLast: false,
    timeLineCard: TimeLineCard(
      cardDescription:
          "8th May, 2019 \nPassed 10th from Nirmala Convent School with 92% \nScoring 1st place in my city",
    ),
  ),
  MyTimeLineTile(
    isFirst: false,
    isLast: false,
    timeLineCard: TimeLineCard(
      cardDescription:
          "16th June, 2021 \nPassed 12th from Nirmala Convent School with 90%",
    ),
  ),
  MyTimeLineTile(
    isFirst: false,
    isLast: true,
    timeLineCard: TimeLineCard(
      cardDescription:
          "11th September, 2022 \nJoined Vellore Institute of Technology, Chennai for Btech CSE.",
    ),
  ),
];

List<MyTimeLineTile> mytimelineCollege = [
  MyTimeLineTile(
    isFirst: true,
    isLast: false,
    timeLineCard: TimeLineCard(
      cardDescription:
          "11th September, 2022 \nStarted my 1st day as a freshman in VIT,Chennai.",
    ),
  ),
  MyTimeLineTile(
    isFirst: false,
    isLast: false,
    timeLineCard: TimeLineCard(
      cardDescription:
          "17th September, 2023 \nGot selected as a member of Codechef VIT Club in Competetive Programming Department",
    ),
  ),
  MyTimeLineTile(
    isFirst: false,
    isLast: true,
    timeLineCard: TimeLineCard(
      cardDescription:
          "31st October, 2023 \nParticipated in ICPC Asia Pacific\nNot able to make it but it was a nice experience",
    ),
  ),
];
List<ContactDetails> contactDetails = [
  ContactDetails(
      iconTitleLocation: "assets/github.png",
      title: "GitHub",
      urlName: "https://github.com/AmanRajSinghMourya"),
  ContactDetails(
      iconTitleLocation: "assets/gmail.png",
      title: "Gmail",
      urlName:
          "mailto:amanrajmourya7@gmail.com?subject=Greetings&body=Hello%20World"),
  ContactDetails(
      iconTitleLocation: "assets/linkedin.png",
      title: "LinkedIn",
      urlName: "https://www.linkedin.com/in/aman-raj-singh-mourya"),
  ContactDetails(
      iconTitleLocation: "assets/leetcod.png",
      title: "LeetCode",
      urlName: "https://leetcode.com/Aman_Raj_Singh_Mourya/"),
  ContactDetails(
      iconTitleLocation: "assets/codechef.jpg",
      title: "CodeChef",
      urlName: "https://www.codechef.com/users/amanrajmourya7")
];

final List<String> certificate = [
  "assets/certificates/Certificate_c.png",
  "assets/certificates/Certificate_cpp.png",
  "assets/certificates/Certificate_python.png",
  "assets/certificates/SIH2023.png",
  "assets/certificates/udemy.png",
  "assets/certificates/HackerHorizon.png"
];

List<Project> project = [
  Project(
    githubUrl: "",
    projectTitle: "Meals App",
    description:
        "Developed a mobile application using Flutter framework that allows users to discover and manage their favorite meals" +
            "based on various categories such as fast food, Italian, and Indian cuisine." +
            "Users can explore a variety of meals within each category, " +
            "view detailed recipes including ingredients and instructions, and mark their favorite items for quick access.",
    projectImages: [
      "assets/meals_app_assets/details.jpg",
      "assets/meals_app_assets/favourite.jpg",
      "assets/meals_app_assets/homescreen.jpg",
      "assets/meals_app_assets/menu1.jpg",
      "assets/meals_app_assets/menu2.jpg",
      "assets/meals_app_assets/sidebar.jpg",
    ],
  ),
  Project(
    githubUrl: "",
    projectTitle: "Calculator",
    iconsUsed: [
      "assets/tech_icons/dart.png",
      "assets/tech_icons/flutter.png",
    ],
    description:
        "My 1st Flutter project Calculator having light and dark theme.",
    projectImages: [],
  ),
  Project(
    githubUrl: "",
    projectTitle: "Portfoilio",
    description:
        "Explore my dynamic Flutter portfolio, where I bring design to life and functionality to the forefront. From sleek UI/UX to seamless interactions, witness the art of mobile development in every project. Let's connect and explore the possibilities ",
    projectImages: [],
  ),
  Project(
    githubUrl: "",
    projectTitle: "Unit Converter",
    description: "Basic Calculator having light and dark theme",
    projectImages: [
      "assets/unit_converter_assets/home_dark.jpg",
      "assets/unit_converter_assets/home_light.jpg",
      "assets/unit_converter_assets/example1.jpg",
      "assets/unit_converter_assets/example2.jpg",
      "assets/unit_converter_assets/example3.jpg",
      "assets/unit_converter_assets/example4.jpg",
    ],
  ),
];
