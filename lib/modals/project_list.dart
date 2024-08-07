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

class SkillsDetails {
  final String iconName;
  final String description;
  final String title;

  SkillsDetails({
    required this.iconName,
    this.description = "",
    required this.title,
  });
}

List<SkillsDetails> skillsDetails = [
  SkillsDetails(
    iconName: "assets/tech_icons/flutter.png",
    title: "Flutter",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/firebase.png",
    title: "Firebase",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/dart.png",
    title: "Dart",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/github.png",
    title: "Github",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/git.png",
    description: "",
    title: "Git",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/C++.png",
    description: "",
    title: "C++",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/C.png",
    description: "",
    title: "C",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/HTML.png",
    description: "",
    title: "HTML",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/CSS.png",
    description: "",
    title: "CSS",
  ),
  SkillsDetails(
    iconName: "assets/tech_icons/javascript.png",
    description: "",
    title: "Java Script",
  ),
];

List<MyTimeLineTile> mytimelineEducation = const [
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

List<MyTimeLineTile> mytimelineCollege = const [
  MyTimeLineTile(
    isFirst: true,
    isLast: false,
    timeLineCard: TimeLineCard(
      cardDescription:
          "11th September, 2022 \nStarted my 1st day as a freshman in VIT,Chennai.\nEnrolled into bTech. in Computer Science",
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
  "assets/certificates/HackerHorizon.png",
  "assets/certificates/Amazon_Hackon.png",
];

List<Project> project = [
  Project(
    iconsUsed: [
      "assets/tech_icons/dart.png",
      "assets/tech_icons/flutter.png",
    ],
    githubUrl: "",
    projectTitle: "Meals App",
    description:
        "Developed a mobile application using Flutter framework that allows users to discover and manage their favorite meals  based on various categories such as fast food, Italian, and Indian cuisine.\nUsers can explore a variety of meals within each category, view detailed recipes including ingredients and instructions, and mark their favorite items for quick access.",
    projectImages: [
      "assets/meals_app_assets/homescreen.jpg",
      "assets/meals_app_assets/sidebar.jpg",
      "assets/meals_app_assets/favourite.jpg",
      "assets/meals_app_assets/menu1.jpg",
      "assets/meals_app_assets/menu2.jpg",
      "assets/meals_app_assets/details.jpg",
    ],
  ),
  Project(
    githubUrl: "https://github.com/AmanRajSinghMourya/Flutter_Portfolio",
    projectTitle: "Portfolio",
    description:
        "Explore my dynamic Flutter portfolio, where I bring design to life and functionality to the forefront."
        "\nFrom sleek UI/UX to seamless interactions, witness the art of mobile development in every project. Let's connect and explore the possibilities ",
    projectImages: [
      "assets/portfolio_assets/aboout.jpg",
      "assets/portfolio_assets/contact.jpg",
      "assets/portfolio_assets/home.jpg",
      "assets/portfolio_assets/projects.jpg",
      "assets/portfolio_assets/side_bar.jpg",
      "assets/portfolio_assets/timeline.jpg",
    ],
    iconsUsed: [
      "assets/tech_icons/dart.png",
      "assets/tech_icons/flutter.png",
    ],
  ),
  Project(
    projectTitle: "Unit Converter",
    githubUrl:
        "https://github.com/AmanRajSinghMourya/All_Purpose_Unit_Converter",
    iconsUsed: [
      "assets/tech_icons/dart.png",
      "assets/tech_icons/flutter.png",
    ],
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
