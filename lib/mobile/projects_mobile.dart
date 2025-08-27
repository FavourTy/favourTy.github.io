import 'package:favourty/constants/app_assets.dart';
import 'package:favourty/constants/app_colors.dart';
import 'package:favourty/constants/projects_class.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({super.key, required this.projectkey});
  final GlobalKey projectkey;
  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  final List<Project> projects = [
    Project(
      title: 'Student pal',
      misubtitle:
          'Developed a scheduler app to help students efficiently manage their daily academic activities and track completed tasks. The app allows users to create, update, and delete tasks, set reminders, and visualize their progress through a clean and intuitive interface. It ensures students stay organized and productive throughout their academic journey.',
      mitechnologies: "Flutter, Firebase, MVVM Architecture, Provider, Sqflite",
      migithublink: "https://github.com/FavourTy/sca_student_pal",
      demo:
          "https://drive.google.com/file/d/1AytDLAWAYp-_7F_d8mCutN3UPcg-ujtQ/view?usp=sharing",
    ),
    Project(
        title: 'Floww',
        misubtitle:
            'Built a real-time chat application enabling users to send and receive messages instantly. The app features user authentication, chat history, and profile images, providing a seamless communication experience. It ensures secure and efficient messaging with a modern and responsive design.',
        mitechnologies: "Flutter, Firebase, MVVM Architecture, Provider",
        migithublink: "https://github.com/FavourTy/smart_/tree/main/floww",
        demo:
            "https://drive.google.com/file/d/1-eBV-8uJkL6xrsl8jbp-RGsfFwMpQFzz/view?usp=sharing"),
    Project(
        title: 'Weather App',
        misubtitle:
            'Developed a weather app that provides real-time weather updates based on the user’s current location. Users can also fetch weather information for all 36 states of Nigeria, including the Federal Capital Territory (FCT). The app offers accurate and up-to-date weather forecasts with a user-friendly interface.',
        mitechnologies: "Flutter, OpenWeatherMap API, Provider",
        migithublink:
            "https://github.com/FavourTy/smart_/tree/main/weather_app",
        demo: "https://github.com/FavourTy/smart_/tree/main/weather_app"),
    Project(
        title: 'Shopper',
        misubtitle:
            'Created a shopping application utilizing the Fake Store API, offering a seamless shopping experience. The app includes user authentication, product categorization, and price conversion. Users can browse products, add them to their cart, and complete purchases with ease.',
        mitechnologies:
            "Flutter, Fake Store API, Object-Oriented Programming (OOP)",
        migithublink: "https://github.com/FavourTy/shopper_app",
        demo:
            "https://drive.google.com/file/d/1-jO04rm7jV4ky3C_k6E9abuXarKkzGSE/view?usp=sharing"),
    Project(
      title: 'My Portfolio',
      misubtitle:
          'Developed a dynamic and interactive portfolio website showcasing my projects, skills, and professional journey. The website offers visitors a comprehensive view of my accomplishments and areas of expertise, with a user-friendly interface and responsive design',
      mitechnologies: "Flutter-web, Dart, Material-UI",
      migithublink: "https://github.com/FavourTy/my_portfolio1",
      demo: "https://favourTy.github.io",
    ),
    Project(
      title: 'Ocr App',
      misubtitle:
          'Created an Optical Character Recognition (OCR) application that allows users to extract text from images and documents. The app features an intuitive interface and provides accurate text recognition, making it easy for users to digitize documents on the go.',
      mitechnologies: "Flutter, OCR, Dart, Firebase, Material-UI",
      migithublink: "https://github.com/FavourTy/ocr_app",
    ),
    Project(
      title: 'Meal App',
      misubtitle:
          'Developed a comprehensive meal planning and recipe app that helps users discover new recipes, plan their meals, and track their nutritional intake. The app includes features like shopping lists, meal schedules, and personalized recipe recommendations.',
      mitechnologies: "Flutter, Dart, Material-UI",
      migithublink: "https://github.com/FavourTy/meals_app",
    ),
    // Project(
    //   title: 'Expense App',
    //   misubtitle:
    //       'Built a personal finance and expense tracking application that allows users to monitor their spending, set budgets, and visualize their financial habits through charts and graphs. The app provides insights to help users manage their finances more effectively.',
    //   mitechnologies: "Flutter,Dart, Firebase, Material-UI",
    //   migithublink: "https://github.com/FavourTy/expense_app",
    // ),
    // Project(
    //   title: 'Chrome Extension',
    //   misubtitle:
    //       'I Developed a Chrome extension to enhance browsing efficiency and productivity. The extension offers features like quick links, website blocking, and custom reminders, tailored to improve the user\'s web experience.',
    //   mitechnologies: "Flutter, Dart, Material-UI",
    //   migithublink: "https://github.com/FavourTy/flutter_chrome_extension",
    // ),
  ];
  Project? selectedProject;
  @override
  void initState() {
    if (projects.isNotEmpty) {
      selectedProject = projects.first;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.projectkey,
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GradientText("My dev dishes",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 30, fontWeight: FontWeight.w200),
                    colors: [
                      AppColors.gradientColor2,
                      AppColors.gradientColor1,
                      AppColors.lightModeToolsColor
                    ]),
                SizedBox(
                  width: 55,
                  height: 80,
                  child: Image.asset(AppAssets.chef),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      selectedProject?.title ??
                          'Select a project to see details',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 30, fontWeight: FontWeight.w200)),
                  Row(
                    children: [
                      Container(
                        width: 1,
                        height: 270,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.blue],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                        child: const VerticalDivider(
                          width: 2,
                          color: Colors.transparent,
                          indent: 10,
                          endIndent: 10,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.79,
                                child: Text(
                                    selectedProject?.misubtitle ??
                                        'Select a project to see details',
                                    maxLines: 20,
                                    // overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontWeight: FontWeight.w400)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset(AppAssets.toolBox),
                                  ),
                                  SizedBox(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(AppAssets.hammer),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                        selectedProject?.mitechnologies ??
                                            'Select a project to see details',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      js.context.callMethod("open", [
                                        selectedProject?.migithublink ??
                                            'Select a project to see details'
                                      ]);
                                    },
                                    child: Column(
                                      children: [
                                        Text("Githhub",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w400)),
                                        Container(
                                          height: 2,
                                          width: 55,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              gradient: const LinearGradient(
                                                  end: Alignment.centerRight,
                                                  stops: [
                                                    0.2,
                                                    1
                                                  ],
                                                  colors: [
                                                    Colors.yellow,
                                                    Colors.blue
                                                  ])),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  selectedProject?.demo != null &&
                                          selectedProject!.demo!.isNotEmpty
                                      ? GestureDetector(
                                          onTap: () {
                                            js.context.callMethod("open",
                                                [selectedProject!.demo!]);
                                          },
                                          child: Column(
                                            children: [
                                              Text("Demo",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400)),
                                              Container(
                                                height: 2,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        const LinearGradient(
                                                            end: Alignment
                                                                .centerRight,
                                                            stops: [
                                                          0.2,
                                                          1
                                                        ],
                                                            colors: [
                                                          Colors.yellow,
                                                          Colors.blue
                                                        ])),
                                              )
                                            ],
                                          ),
                                        )
                                      : SizedBox.shrink()
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Projects",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 30, fontWeight: FontWeight.w200)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 1,
                        height: 250,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.blue],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                        child: const VerticalDivider(
                          width: 1,
                          color: Colors.transparent,
                          indent: 10,
                          endIndent: 10,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: projects
                            .map((project) => GestureDetector(
                                  onTap: () => setState(() {
                                    selectedProject = project;
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          project.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400),
                                        ),
                                        Container(
                                          height: 2,
                                          width: project.title.characters.length
                                                  .toDouble() *
                                              8,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              gradient: const LinearGradient(
                                                  end: Alignment.centerRight,
                                                  stops: [
                                                    0.2,
                                                    1
                                                  ],
                                                  colors: [
                                                    Colors.blue,
                                                    Colors.yellow
                                                  ])),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                            .toList(),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
