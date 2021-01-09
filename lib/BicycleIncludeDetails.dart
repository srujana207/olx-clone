import 'package:flutter/material.dart';
//Flutter Forms And Validation | A Login UI | By Desi Programmer
import 'package:flutter_app/Bikes.dart';
//import 'package:form_field_validator/form_field_validator.dart';

class BicycleIncludeDetails extends StatefulWidget {
  @override
  BicycleIncludeDetailsScreenState createState() =>
      BicycleIncludeDetailsScreenState();
}

class BicycleIncludeDetailsScreenState extends State<BicycleIncludeDetails> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate()) {
      print("Validated form");
    } else {
      print("Required");
    }
  }

  String validatetitle(value) {
    if (value.isEmpty) {
      return "A minimum length of 10 characters is required. Please edit the field.";
    } else if (value.length < 10) {
      return "A minimum length of 10 characters is required. Please edit the field.";
    } else if (value.length > 70) {
      return "A maximum length of 70 characters is allowed. Please edit the field.";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
            child: Container(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color.fromRGBO(0, 48, 52, 1),
                          size: 30.0,
                        ),
                        onPressed: () => setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bikes()),
                              );
                            })),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 25.0, 15.0, 0),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            ' Include some details',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 48, 52, 1),
                              letterSpacing: .1,
                              wordSpacing: .5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Color.fromRGBO(0, 48, 52, 1),
            height: 0.2,
            thickness: 0.3,
            //indent: 20,
            // endIndent: 20,
          ),
          Padding(
              padding: EdgeInsets.all(25.0),
              child: Center(
                  child: Form(
                key: formkey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                          decoration: InputDecoration(
                            labelText: "Ad title*",
                          ),
                          validator: validatetitle),
                      Padding(
                          padding: EdgeInsets.only(
                            top: 20.0,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Describe what you are selling *",
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(
                          20.0,
                        ),
                        child: RaisedButton(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                          color: Color.fromRGBO(0, 48, 52, 1),
                          onPressed: validate,
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              letterSpacing: .1,
                              wordSpacing: .5,
                            ),
                          ),
                        ),
                      ),
                    ]),
              )))
        ],
      )),
    );
  }
}
