import 'dart:ffi';

import 'package:flutter/material.dart';

class WorkType extends StatefulWidget {
  const WorkType({super.key});

  @override
  State<WorkType> createState() => _WorkTypeState();
}

class _WorkTypeState extends State<WorkType> {
  bool uiChecked = false;
  bool illustratorChecked = false;
  bool developerChecked = false;
  bool managementChecked = false;
  bool itChecked = false;
  bool raaChecked = false;
  var buttonTextColor = const Color(0xff6B7280);
  var buttonBackgroundColor = const Color(0xffD1D5DB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "What type of work are you interested in?",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Tell us what you’re interested in so we can customise the app for your needs.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff737379)),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 500,
                width: double.maxFinite,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: [
                    SelectTypeOfWork(
                      checked: uiChecked,
                      onPressed: () {
                        setState(() {
                          uiChecked = !uiChecked;
                        });
                      },
                      workType: 'UI/UX Designer',
                      icon: Icons.design_services_outlined,
                    ),
                    SelectTypeOfWork(
                      checked: illustratorChecked,
                      onPressed: () {
                        setState(() {
                          illustratorChecked = !illustratorChecked;
                        });
                      },
                      workType: 'Illustrator Designer',
                      icon: Icons.brush_outlined,
                    ),
                    SelectTypeOfWork(
                      checked: developerChecked,
                      onPressed: () {
                        setState(() {
                          developerChecked = !developerChecked;
                        });
                      },
                      workType: 'Developer',
                      icon: Icons.developer_mode_outlined,
                    ),
                    SelectTypeOfWork(
                      checked: managementChecked,
                      onPressed: () {
                        setState(() {
                          managementChecked = !managementChecked;
                        });
                      },
                      workType: 'Management',
                      icon: Icons.data_usage_rounded,
                    ),
                    SelectTypeOfWork(
                      checked: itChecked,
                      onPressed: () {
                        setState(() {
                          itChecked = !itChecked;
                        });
                      },
                      workType: 'Information Technology',
                      icon: Icons.computer_outlined,
                    ),
                    SelectTypeOfWork(
                      checked: raaChecked,
                      onPressed: () {
                        setState(() {
                          raaChecked = !raaChecked;
                        });
                      },
                      workType: 'Research and Analytics',
                      icon: Icons.cloud_done_outlined,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  isAnyTypeChecked()
                      ? const SizedBox()
                      : const Text(
                          "At least one job should be selected",
                          style: TextStyle(
                              color: Color(0xffB71519),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: OutlinedButton(
                  onPressed: isAnyTypeChecked()
                      ? () {
                          print("good");
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(isAnyTypeChecked()
                        ? const Color(0xff3366FF)
                        : buttonBackgroundColor),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: isAnyTypeChecked()
                            ? const Color(0xffffffff)
                            : buttonTextColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  isAnyTypeChecked() {
    if (uiChecked ||
        illustratorChecked ||
        developerChecked ||
        managementChecked ||
        itChecked ||
        raaChecked == true) {
      return true;
    } else {
      return false;
    }
  }
}

class SelectTypeOfWork extends StatelessWidget {
  final Function() onPressed;
  final bool checked;
  final String workType;
  final IconData icon;
  const SelectTypeOfWork(
      {super.key,
      required this.checked,
      required this.onPressed,
      required this.workType,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color:
                  checked ? const Color((0xffD6E4FF)) : const Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: checked
                      ? const Color(0xff3366FF)
                      : const Color(0xffD1D5DB),
                  width: 1.5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: checked
                        ? const Color((0xffFFFFFF))
                        : const Color(0x00d1d5db),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: checked
                          ? const Color(0xff3366FF)
                          : const Color(0xffD1D5DB),
                    )),
                child: Icon(
                  icon,
                  color: checked
                      ? const Color(0xff3366FF)
                      : const Color(0xff292D32),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                workType,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff111827)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
