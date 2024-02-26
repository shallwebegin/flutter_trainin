import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_trainin/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin {
  final Uri _url = Uri.parse('https://flutter.dev');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.primary,
          onPressed: _launchUrl),
      body: Column(children: [
        Text(
          'a',
          style: Theme.of(context).textTheme.titleLarge,
        )
      ]),
    );
  }

  Future<void> _launchUrl() async {
    if (!await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }
}
