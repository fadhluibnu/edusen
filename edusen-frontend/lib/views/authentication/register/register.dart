import 'package:camera/camera.dart';
import 'package:edusen/my_flutter_app_icons.dart';
import 'package:edusen/views/authentication/login/template/login_page.dart';
import 'package:edusen/views/authentication/register/partials/register_step_one.dart';
import 'package:edusen/views/authentication/register/partials/register_step_two.dart';
import 'package:edusen/views/route/push_and_back.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const String route = '/register';

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  List<CameraDescription>? cameras; //list out the camera available
  CameraController? cameraController; //controller for camera
  XFile? image; //for captured image

  @override
  void initState() {
    loadCamera();
    super.initState();
  }

  loadCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    try {
      cameras = await availableCameras();
      if (cameras != null) {
        cameraController = CameraController(cameras![0], ResolutionPreset.max);
        //cameras[0] = first camera, change to 1 to another camera

        cameraController!.initialize().then((_) {
          if (!mounted) {
            return;
          }
          setState(() {});
        });
      } else {
        print("NO any camera found");
      }
    } on CameraException catch (e) {
       print("NO any camera found");
    }
  }

  int step = 1;
  void SubmitStepOne() {
    setState(() {
      step = step + 1;
    });
  }

  void SubmitStepTwo() {
    print("FInish Redirect");
  }

  void submitForm() {
    print(name_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    final pushAndBack = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    String back = "/";
    if (pushAndBack['route'] != null) {
      setState(() {
        back = pushAndBack['route'].toString();
      });
    }
    print(back);
    return WillPopScope(
      onWillPop: () async {
        if (back != "/") {
          Navigator.pushReplacementNamed(context, back);
          return false;
        } else {
          Navigator.pushReplacementNamed(context, RegisterPage.route);
        }
        return false;
      },
      child: Title(
        title: "Register | Edusen",
        color: Colors.blue,
        child: Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 565,
                    color: Color(0xFF8211FB),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Belajar ',
                                style: TextStyle(
                                  color: Color(0xFFEEF9FE),
                                  fontSize: 48,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              WidgetSpan(
                                  child: Container(
                                padding: EdgeInsets.only(left: 10),
                                color: Colors.white,
                                child: Text(
                                  'gratis',
                                  style: TextStyle(
                                    color: Color(0xFF4C4CFF),
                                    fontSize: 48,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              )),
                              TextSpan(
                                text: ' dimana saja,\nkapan saja! ',
                                style: TextStyle(
                                  color: Color(0xFFEEF9FE),
                                  fontSize: 48,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: -112,
                      left: 213,
                      child: Container(
                        width: 225,
                        height: 225,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      top: -177,
                      left: 393,
                      child: Container(
                        width: 354,
                        height: 354,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      top: 391,
                      left: -105,
                      child: Container(
                        width: 354,
                        height: 354,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      bottom: -244,
                      right: -315,
                      child: Container(
                        width: 600,
                        height: 600,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                  Positioned(
                      bottom: -210,
                      right: 83,
                      child: Container(
                        width: 354,
                        height: 354,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.25),
                          shape: OvalBorder(),
                        ),
                      )),
                ],
              ),
              Flexible(
                flex: 1,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(70),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            // color: Colors.grey,
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, right: 60),
                                    child: Container(
                                      height: 1,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF333333)),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: step == 1
                                                ? Color(0xFF333333)
                                                : Color(0xFF4C4CFF),
                                            shape: OvalBorder(),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Create Your Account',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: step == 1
                                                ? Color(0xFF333333)
                                                : Color(0xFF4C4CFF),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: step == 2
                                                ? Color(0xFF333333)
                                                : Color.fromARGB(
                                                    255, 168, 168, 168),
                                            shape: OvalBorder(),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '2',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Scan Your Face',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: step == 2
                                                ? Color(0xFF333333)
                                                : Color(0x7F333333),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          step == 1
                              ? RegisterStepOne(
                                  step: step,
                                  nextStep: SubmitStepOne,
                                  name_controller: name_controller,
                                  email_controller: email_controller,
                                  password_controller: password_controller,
                                )
                              : RegisterStepTwo(
                                  submitForm: submitForm,
                                  cameraController: cameraController,
                                )
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
