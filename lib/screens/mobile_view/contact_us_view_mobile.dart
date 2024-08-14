import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marquee/marquee.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';

class ContactUsViewMobile extends StatefulWidget {
  const ContactUsViewMobile({super.key});

  @override
  State<ContactUsViewMobile> createState() => _ContactUsViewMobileState();
}

class _ContactUsViewMobileState extends State<ContactUsViewMobile> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await FirebaseFirestore.instance.collection('contacts').add({
          'firstName': _firstNameController.text,
          'lastName': _lastNameController.text,
          'email': _emailController.text,
          'phone': _phoneController.text,
          'message': _messageController.text,
          'timestamp': FieldValue.serverTimestamp(),
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Form submitted successfully!',
              style: kRegularTextStyle,
            ),
            backgroundColor: Colors.greenAccent.withOpacity(0.8),
          ),
        );

        _firstNameController.clear();
        _lastNameController.clear();
        _emailController.clear();
        _phoneController.clear();
        _messageController.clear();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Failed to submit form: $e',
              style: kRegularTextStyle,
            ),
            backgroundColor: Colors.redAccent.withOpacity(0.8),
          ),
        );
      }
    }
  }

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
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF7448),
                      Color(0xFFFF4848),
                      Color(0xFF6248FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: SizedBox(
                  height: 140,
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
                    velocity: 100.0,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
                child: Text(
                  "Every Club wants to present their best side on social media. Let’s help you do that in the best way possible.",
                  style: mSectionHeadingTextStyle.copyWith(
                    letterSpacing: -1,
                    fontWeight: FontWeight.w400,
                    fontSize: 39,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: screenHeight / 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Let’s connect!",
                            style: kSectionSubheadingTextStyle.copyWith(
                              letterSpacing: -2,
                              fontSize: 50,
                            ),
                          ),
                          Text(
                            "Ready to transform your club image? Fill out the form below and let’s get started on making your club stand out.",
                            style:
                                kRegularTextStyle.copyWith(fontFamily: 'Inter'),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _firstNameController,
                            style: kRegularTextStyle,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              labelText: 'First Name',
                              labelStyle: kRegularTextStyle,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              errorStyle: kRegularTextStyle.copyWith(
                                color: Colors.red,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            controller: _lastNameController,
                            cursorColor: Colors.black,
                            style: kRegularTextStyle,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              labelText: 'Last Name',
                              labelStyle: kRegularTextStyle,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              errorStyle: kRegularTextStyle.copyWith(
                                color: Colors.red,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your last name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            controller: _emailController,
                            cursorColor: Colors.black,
                            style: kRegularTextStyle,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              labelText: 'Email',
                              labelStyle: kRegularTextStyle,
                              hintText:
                                  'Your best email, so we can get in touch',
                              hintStyle: kRegularTextStyle.copyWith(
                                color: Colors.grey.shade700,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              errorStyle: kRegularTextStyle.copyWith(
                                color: Colors.red,
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
                            controller: _phoneController,
                            cursorColor: Colors.black,
                            style: kRegularTextStyle,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              labelText: 'Phone Number',
                              labelStyle: kRegularTextStyle,
                              hintText: 'For a swift response',
                              hintStyle: kRegularTextStyle.copyWith(
                                color: Colors.grey.shade700,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              errorStyle: kRegularTextStyle.copyWith(
                                color: Colors.red,
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
                            controller: _messageController,
                            cursorColor: Colors.black,
                            maxLines: 4,
                            textAlignVertical: TextAlignVertical.top,
                            style: kRegularTextStyle,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              labelText: 'Message',
                              labelStyle: kRegularTextStyle,
                              alignLabelWithHint: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              errorStyle: kRegularTextStyle.copyWith(
                                color: Colors.red,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a message';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: _submitForm,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF6248FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Send',
                                    textAlign: TextAlign.center,
                                    style: kSectionSubheadingTextStyle.copyWith(
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
              ),
              SizedBox(height: screenHeight / 60),
            ],
          ),
        ),
      ),
    );
  }
}
