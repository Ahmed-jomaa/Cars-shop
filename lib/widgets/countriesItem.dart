import 'package:flutter/material.dart';

import '../screens/countryCarScreen.dart';

class CountriesItem extends StatelessWidget {
  final String id;
  late String title;
  String description;
  CountriesItem(this.title, this.id, this.description);
  void selectCountry(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CountriesCarScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCountry(context),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        margin: EdgeInsets.only(bottom: 5, left: 5, right: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(241, 67, 67, 1),
              Color.fromRGBO(218, 68, 83, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: (Colors.white),
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Expanded(child: Text(description,style: TextStyle(color: Colors.white),)),
                SizedBox(width: 30),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color.fromRGBO(218, 68, 83, 1),
                    size: 30,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}




/**/