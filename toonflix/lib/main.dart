import 'package:flutter/material.dart';
import 'package:toonflix/widgets/BlankSizedBox.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BlankSizedBox(
                  setheight: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, 레서드',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const BlankSizedBox(
                  setheight: 40,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const BlankSizedBox(
                  setheight: 5,
                ),
                const Text(
                  '\$5 194 572',
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const BlankSizedBox(
                  setheight: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      textColor: Colors.black,
                      bgColor: Color(0xFFF1B33B),
                    ),
                    Button(
                      text: 'Request',
                      textColor: Colors.white,
                      bgColor: Color(0xFF1F2123),
                    ),
                  ],
                ),
                const BlankSizedBox(
                  setheight: 50,
                ),
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
                      ),
                    ),
                  ],
                ),
                const BlankSizedBox(setheight: 20),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6,428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(0, -25),
                  child: const CurrencyCard(
                    name: 'BitCoin',
                    code: 'BIT',
                    amount: '3.8786',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '15,515',
                    icon: Icons.attach_money_rounded,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
