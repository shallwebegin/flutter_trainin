import 'package:flutter/material.dart';
import 'package:flutter_trainin/core/components/card/user_card.dart';
import 'package:flutter_trainin/core/components/opacity/image_opacity.dart';
import 'package:flutter_trainin/core/enums/duration_enum.dart';
import 'package:flutter_trainin/core/image_manager.dart';
import 'package:flutter_trainin/stateful/model/card_model.dart';
import 'package:flutter_trainin/stateless/user_detail.dart';

class HomeStatefullView extends StatefulWidget {
  const HomeStatefullView({super.key});

  @override
  State<HomeStatefullView> createState() => _HomeStatefullViewState();
}

class _HomeStatefullViewState extends State<HomeStatefullView> {
  late final CardModel cardUser;
  bool _isLoading = true;
  late final ImageManager imageUrl;

  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageUrl = ImageManager();
    cardUser = CardModel.fakeItems();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.low.time);
    setState(() {
      _isLoading = false;
    });
  }

  Widget get isLoading => _isLoading
      ? const CircularProgressIndicator()
      : const AboutDialog(
          applicationIcon: Icon(Icons.abc),
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          isLoading,
          ImageOpacity(url: imageUrl.randomImage),
          UserCard(
            cardUser: cardUser,
            onPressed: () {
              navigateToPage;
            },
          )
        ],
      ),
    );
  }

  Future get navigateToPage => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => UserDetailScreen(user: cardUser),
        ),
      );
}
