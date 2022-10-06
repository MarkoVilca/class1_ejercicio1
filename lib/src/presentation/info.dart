import 'package:app03/src/domain/place.dart';
import 'package:app03/src/presentation/actions.dart';
import 'package:flutter/material.dart';

final info = Place(
    title: "lugar 1",
    subtitle: "publicacion 1",
    cover:
        "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et metus nisl. In sit amet nisi vestibulum, gravida sapien ac, consectetur augue. Morbi eget leo lacinia, varius massa et, rhoncus erat. In sollicitudin massa eget nibh blandit consectetur. Proin nec tellus velit. Quisque id arcu odio. Duis nulla erat, pharetra vel scelerisque a, sollicitudin eu dolor. Ut sem sapien, pulvinar vel pellentesque ut, efficitur ut erat. Donec id odio sed mi dapibus scelerisque non vitae purus. Nunc aliquam leo sed justo euismod, non fermentum turpis vestibulum. Integer hendrerit, quam vitae suscipit pellentesque, elit ante pharetra est, sit amet mattis ipsum nulla quis velit. Nunc feugiat et nulla et suscipit. Proin et lectus dapibus, pulvinar lectus eu, molestie eros.");

cover() {
  return Container(
    height: 300,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(info.cover),
        fit: BoxFit.cover,
      ),
    ),
  );
}

class Info extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          children: [
            cover(),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(info.title,
                            style: TextStyle(
                              fontSize: 14,
                            )),
                        Text(
                          info.subtitle,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ]),
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            actions(),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                info.description,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
