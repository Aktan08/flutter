
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(padding: const EdgeInsets.all(10), children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'КОРЗИНА (1)',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'СОХРАНЕННЫЕ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    const Text('КОНТРАСТНАЯ CУМКА'),
                    Row(
                      children: [
                        Image.asset('assets/images/bag.png'),
                        const Padding(
                          padding: EdgeInsets.all(30),
                          child: BasketProduct(),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ])),
    );
  }
}


class BasketProduct extends StatelessWidget {
  const BasketProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'КОД',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.0, top: 4),
          child: Text(
            'ЦВЕТ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.0, top: 4),
          child: Text(
            'РАЗМЕР',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20, top: 4),
          child: Text(
            'КОЛ-ВО',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30, top: 4),
          child: Text(
            '3999 сом',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.0, top: 4),
          child: Text(
            'УДАЛИТЬ',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        )
      ],
    );
  }
}
