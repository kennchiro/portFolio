import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:testweb/Contact/widget/customButton.dart';
import 'package:testweb/widgets/customTextFiled.dart';

class ExpandedFormBuilder extends StatelessWidget {
  ExpandedFormBuilder({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormBuilderState>();

  final nameC = TextEditingController();
  final emailC = TextEditingController();
  final messageC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Contactez - moi",
                style: TextStyle(
                  color: Color(0xFFadad57).withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'OpenSansCondensed',
                ),
              ),

              //
              FormBuilder(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomTextField(
                              maxLine: 1,
                              controller: nameC,
                              name: 'Nom complet',
                              data: Icons.person,
                              hintText: 'Nom complet',
                              textInputType: TextInputType.text,
                              isObsecure: false),
                          SizedBox(
                            width: 5,
                          ),
                          CustomTextField(
                              maxLine: 1,
                              controller: emailC,
                              name: 'Adresse email',
                              data: Icons.email,
                              hintText: 'Adresse email',
                              textInputType: TextInputType.text,
                              isObsecure: false),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: FormBuilderTextField(
                          autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                          controller: messageC,
                          name: 'Message',
                          maxLines: 11,
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white10,
                            hintText: 'Envoyez votre message',
                            hintStyle: TextStyle(
                                color: Colors.white60,
                                fontSize: 13,
                                fontFamily: 'OpenSansCondensed'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      //save forme
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            title: 'Envoyez',
                            color: Color(0xFFadad57).withOpacity(0.9),
                            sendOrReset: () {
                              formKey.currentState!.save();
                              if (formKey.currentState!.validate()) {
                                print(formKey.currentState!.value);
                                Future.delayed(const Duration(seconds: 1),
                                    (() => formKey.currentState!.reset()));
                              } else {
                                print("validation failed");
                              }
                            },
                          ),
                          CustomButton(
                            color: Colors.white10,
                            title: 'Annuler',
                            sendOrReset: () {
                              formKey.currentState!.reset();
                            },
                          ),
                        ],
                      )
                    ],
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
