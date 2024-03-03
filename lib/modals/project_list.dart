class Project {
  final String projectTitle, description;
  List<String> projectImages;
  List<String> iconsUsed;
  Project({
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

List<Project> project = [
  Project(
    projectTitle: "Calculator",
    iconsUsed: [
      "assets/dart.png",
      // "assets/firebase.png",
      "assets/flutter.png",
    ],
    description:
        "My 1st Flutter project Calculator having light and dark theme.",
    projectImages: [
      "assets/ss1.png",
      "assets/ss1.png",
    ],
  ),
  Project(
    projectTitle: "Portfoilio",
    description:
        "Explore my dynamic Flutter portfolio, where I bring design to life and functionality to the forefront. From sleek UI/UX to seamless interactions, witness the art of mobile development in every project. Let's connect and explore the possibilities ",
    projectImages: [
      // "assets/ss1.png",
      // "assets/ss1.png",
      // "assets/ss1.png",
      // "assets/ss1.png",
    ],
  ),
  // Project(
  //   projectTitle: "Calculator",
  //   description: "Basic Calculator having light and dark theme",
  //   projectImages: [
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //   ],
  // ),
  // Project(
  //   projectTitle: "Calculator",
  //   description: "Basic Calculator having light and dark theme",
  //   projectImages: [
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //   ],
  // ),
  // Project(
  //   projectTitle: "Calculator",
  //   description: "Basic Calculator having light and dark theme",
  //   projectImages: [
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //     "assets/ss1.png",
  //   ],
  // ),
];
