import 'package:flutter/material.dart';

class MyCardAccount extends StatelessWidget {
  final accName, accType, accNumber, accAmount;
  const MyCardAccount(
      {super.key,
      required this.accName,
      required this.accType,
      required this.accNumber,
      required this.accAmount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.yellow,
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    accName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$accType $accNumber',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '$accAmount Dollar',
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.yellow,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
