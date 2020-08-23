class CertificateData {
  String name;
  CertificateData({this.name});
}

class ExperienceData {
  static List experience = [
    {
      "companyName": "Smart Bridge",
      "image": "thesmartbridge.png",
      "details":
          "Position: Intern\n\nDuration: 3 weeks\n\nAccomplishments:asdfdasfsdfasdfsadfsadfsdfsadf\n\nFinal Result"
    },
    {
      "companyName": "Caramel IT Academy",
      "image": "Caramel.png",
      "details":
          "Position: Intern\n\nDuration: 3 weeks\n\nAccomplishments:asdfdasfsdfasdfsadfsadfsdfsadf\n\nFinal Result"
    }
  ];
  static List specialSkills = [
    {
      "skill": "Languages Known",
      "details": "C, C++, Java, Python, Dart, C# and SQL",
    },
    {
      "skill": "Developed an online website using Wixsite",
      "details":
          "This website contains a set of questions in 3 domains, namely, C,C++ and Python.\n\nFor more details, visit www.programmingquery.wixsite.com"
    },
    {
      "skill": "Good communication and problem solving skills",
      "details": "Fluent in English, Hindi, Telugu and Bengali. ",
    },
    {
      "skill": "Developed 2 Android Games",
      "details":
          "Developed a 2D game 'Flying Doraemon' and a 3D game 'Street Runner' in Unity using C#.",
    },
    {
      "skill": "Developed few applications",
      "details":
          "Developed a number of applications using flutter. Some of the applications are Xylophone, Dice app, COVID-19 app, etc."
    },
    {
      "skill": "Developed some VR applications",
      "details":
          "Chose VR as an elective during academics and developed 3 VR apps, named, 'Exercise','Meditation' and 'Museum for Extinct Animals'."
    },
  ];
  static List achievements = [
    {
      "achievement": "Courses",
      "details": courses,
    },
    {
      "achievement": "Workshops",
      "details": workshops,
    },
    {
      "achievement": "Webinars and Seminars",
      "details": seminars,
    },
    {
      "achievement": "Other Achievements",
      "details": others,
    },
  ];
  static List workshops = [
    {
      "Name": "Gamification Workshop",
      "Coordinator": "APSSDC",
      "Skills": "Game development using Unity",
    },
    {
      "Name": "AR/VR Workshop",
      "Coordinator": "Madras Mindworks",
      "Skills":
          "Creating a VR experience using Unity. Creating 3D objects using Maya.",
    },
    {
      "Name": "Explore ML- Beginner Track",
      "Coordinator": "DSC GITAM",
      "Skills": "Basics of ML",
    },
    {
      "Name": "Explore ML- Intermediate Track",
      "Coordinator": "DSC GITAM",
      "Skills": "Usage of Tensorflow",
    },
    {
      "Name": "Blockchains Workshop",
      "Coordinator": "IEEE Vizag",
      "Skills":
          "Introduction to Blockchains and some knowledge on cryptocurrency.",
    },
  ];
  static List courses = [
    {
      "Name": "Joy of Computing",
      "Percentage": "85%",
      "Coordinator": "IIT Ropar",
      "Instructor": "Sudarshan Iyengar",
    },
    {
      "Name": "Operating Systems and You",
      "Percentage": "100%",
      "Coordinator": "Google",
      "Instructor": "Cindy Quach",
    },
    {
      "Name": "AI For Everyone",
      "Percentage": "100%",
      "Coordinator": "deeplearning.ai",
      "Instructor": "Andrew NG",
    },
    {
      "Name": "Programming For Everybody(Getting Started with Python)",
      "Percentage": "100%",
      "Coordinator": "University of Michigan",
      "Instructor": "Charles Russell Severance",
    },
    {
      "Name": "Python Data Structures",
      "Percentage": "100%",
      "Coordinator": "University of Michigan",
      "Instructor": "Charles Russell Severance",
    },
    {
      "Name": "Using Python to Access Web Data",
      "Percentage": "100%",
      "Coordinator": "University of Michigan",
      "Instructor": "Charles Russell Severance",
    },
  ];
  static List seminars = [
    {
      "Name": "Advancements in Wireless Technologies",
      "Coordinator": "IEEE Vizag",
      "Skills": "About GPS and introduction to 5G",
      "Speaker": "",
    },
    {
      "Name": "Laying the foundation for a career in IT Product Development",
      "Coordinator": "DSC GITAM",
      "Skills":
          "Skills that are needed to be improved and developed for getting a better job in IT and CSE field.",
      "Speaker": ""
    },
    {
      "Name": "Flutter Interact",
      "Coordinator": "DSC GITAM",
      "Skills": "Introduction to Flutter and its advantages",
      "Speaker": "Srikanth"
    },
    {
      "Name": "Guest Lecture on VFX",
      "Coordinator": "GUSAC",
      "Skills":
          "Introduction to VFX. VFX Breakdown of some of the movie clips by Makuta VFX.",
      "Speaker": "Pete Draper",
    },
    {
      "Name": "Guest Lecture on Cyber Security",
      "Coordinator": "IEEE",
      "Skills": "Basics of Cyber Security.",
      "Speaker": "Anand Kethavarapu",
    },
    {
      "Name": "Cyber Security Webinar",
      "Coordinator": "",
      "Skills": "Knowledge on how phishing is done.",
      "Speaker": "Vinod T Senthil",
    },
  ];
  static List others = [
    {
      "Name": "VDC Ideathon",
      "Organisor": "Venture Development Club, GITAM",
      "Idea": "MyShield(Go Safe with the monsters around you)",
    },
    {
      "Name": "COVID-19 Innovation Challenge",
      "Organisor": "T-Hub",
      "Idea": "Agro Defence(Engineering for Agriculture)"
    }
  ];
}
