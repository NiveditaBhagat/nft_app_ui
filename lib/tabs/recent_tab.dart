import 'package:flutter/material.dart';
import 'package:flutter_nft/components/nft_card.dart';



class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'assets/apiens_1.png'
      );
  }
}