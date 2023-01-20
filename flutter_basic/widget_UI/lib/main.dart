import 'package:flutter/material.dart';

import 'currency_card.dart';
import 'my_button.dart';

void main() {
  runApp(App());
}

// build = UI만드는 함수
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Row(
                  // Row에서 수평방향을 의미
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      // 수직방향을 의미
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 70),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 22),
                ),
                const SizedBox(height: 5),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(color: Colors.white, fontSize: 48),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyButton(
                      bgColor: Color(0xFFF2B33A),
                      text: 'Transfer',
                      textColor: Colors.black,
                    ),
                    MyButton(
                      bgColor: Color(0xFF1F2123),
                      text: 'Request',
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CurrencyCard(
                  amount: '6 428',
                  code: 'EUR',
                  icon: Icons.euro_rounded,
                  name: 'Euro',
                  isInverted: false,
                  order: 1.0,
                ),
                const CurrencyCard(
                  amount: '9 785',
                  code: 'BTC',
                  icon: Icons.currency_bitcoin_rounded,
                  name: 'Bitcoin',
                  isInverted: true,
                  order: 2.0,
                ),
                const CurrencyCard(
                  amount: '6 428',
                  code: 'USD',
                  icon: Icons.attach_money_outlined,
                  name: 'Dollar',
                  isInverted: false,
                  order: 3.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
