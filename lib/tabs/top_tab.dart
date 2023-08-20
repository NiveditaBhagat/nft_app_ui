import 'package:flutter/material.dart';
import 'package:flutter_nft/components/nft_card.dart';



class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'assets/apiens_3.png'
    );
  }
}