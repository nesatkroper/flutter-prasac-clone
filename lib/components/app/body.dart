import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prasac_clone/components/ui/card_account.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: const [
            MyCardAccount(
              accName: 'SUON PHANUN',
              accType: 'Saving Account',
              accNumber: '000 000 000 000',
              accAmount: 34,
            ),
            MyCardAccount(
              accName: 'SUON PHANUN 12',
              accType: 'Staff Account',
              accNumber: '000 000 000 000',
              accAmount: 24,
            ),
          ],
          options: CarouselOptions(
            viewportFraction: 0.95,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeFactor: 0.3,
            // scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
