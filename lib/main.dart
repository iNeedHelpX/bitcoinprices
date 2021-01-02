import 'package:flutter/material.dart';

import 'package:cryptocurrency/crypto_currency_list_page.dart';
import 'package:cryptocurrency/model/enums.dart';

void main() => runApp(CryptoListWidgett());

class CryptoListWidgett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BitcoinVal(),
    );
  }
}

class BitcoinVal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 163, 92, 197),
          title: Text('Crypto Prices'),
        ),
        backgroundColor: Color.fromARGB(255, 103, 178, 164),
        body: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 249, 237, 98),
              borderRadius: const BorderRadius.all(const Radius.circular(27))),
          child: CryptoListWidget(
            [
              CryptoCurrencyID.BTC,
              CryptoCurrencyID.BCH,
              CryptoCurrencyID.ETH,
              CryptoCurrencyID.XRP,
              CryptoCurrencyID.EOS
            ], // choose coin list, set empty array to show all coins
            cryptoCurrencyPriceType: CryptoCurrencyPriceType
                .USD, // price type USD, EUR, default is USD
            cryptoCurrencyExchange: CryptoCurrencyExchange
                .binance, // exchange type, default is binance
            // list title, don't set to hide
          ),
          margin: EdgeInsets.all(35),
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
        ));
  }
}

