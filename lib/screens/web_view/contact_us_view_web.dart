import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class ContactUsViewWeb extends StatefulWidget {
  const ContactUsViewWeb({super.key});

  @override
  State<ContactUsViewWeb> createState() => _ContactUsViewWebState();
}

class _ContactUsViewWebState extends State<ContactUsViewWeb> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: screenHeight / 10),
          color: WhitebackgroundCustomcolor,
          width: screenWidth,
          child: Column(
            children: [
              Container(
                width: double.infinity, // Ensure the container takes full width
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF7448), // First color
                      Color(0xFFFF4848), // Second color
                      Color(0xFF6248FF), // Third color
                    ],
                    begin: Alignment.topLeft, // Start of the gradient
                    end: Alignment.bottomRight, // End of the gradient
                  ),
                ),
                child: SizedBox(
                  height: 140, // Fixed height for the Marquee widget
                  child: Marquee(
                    text: 'Contact Us 🌐 ',
                    style: kMainHeadingTextStyle.copyWith(
                      letterSpacing: -5,
                      fontSize: 100,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(3.0, 3.0),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    velocity: 100.0, // Speed of scrolling
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 12, bottom: 12, left: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                width: screenWidth * 0.8,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12, left: 12),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let’s connect!",
                                style: kSectionSubheadingTextStyle.copyWith(
                                    letterSpacing: -2, fontSize: 50),
                              ),
                              Text(
                                  "Ready to transform your club image? Fill out the form below and let’s get started on making your club stand out.",
                                  style: kRegularTextStyle),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        labelText: 'First Name',
                                        labelStyle: kRegularTextStyle,
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior
                                                .never, // Label does not float
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your first name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        labelText: 'Last Name',
                                        labelStyle: kRegularTextStyle,
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior
                                                .never, // Label does not float
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your last name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  labelText: 'Email',
                                  labelStyle: kRegularTextStyle,
                                  hintText:
                                      'Your best email, so we can get in touch',
                                  hintStyle: kRegularTextStyle.copyWith(
                                      color: Colors.grey.shade700),
                                  floatingLabelBehavior: FloatingLabelBehavior
                                      .never, // Label does not float
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                      .hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  labelText: 'Phone Number',
                                  labelStyle: kRegularTextStyle,
                                  hintText: 'For a swift response',
                                  hintStyle: kRegularTextStyle.copyWith(
                                      color: Colors.grey.shade700),
                                  floatingLabelBehavior: FloatingLabelBehavior
                                      .never, // Label does not float
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your phone number';
                                  }
                                  if (!RegExp(r'^\d{10,15}$').hasMatch(value)) {
                                    return 'Please enter a valid phone number';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                maxLines: 4,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  labelText: 'Message',
                                  labelStyle: kRegularTextStyle,
                                  hintText:
                                      'Share your vision, let us know how we can assist.',
                                  hintStyle: kRegularTextStyle.copyWith(
                                      color: Colors.grey.shade700),
                                  floatingLabelBehavior: FloatingLabelBehavior
                                      .never, // Label does not float
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              SizedBox(
                                width: double.infinity,
                                height:
                                    40, // Set the height to match the text fields
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ==
                                        true) {
                                      // Handle send button press
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(
                                        0xFF6248FF), // Set button color to purple
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Match text field border radius
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .center, // Center the content
                                    children: [
                                      Text(
                                        'Send',
                                        textAlign: TextAlign.center,
                                        style: kSectionSubheadingTextStyle
                                            .copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      SvgPicture.asset(
                                        'assets/images/send2.svg',
                                        color: Colors.white,
                                        height: 16,
                                        width: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12, left: 34),
                        child: Image.asset("assets/images/from.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
