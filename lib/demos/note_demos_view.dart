import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_trainin/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final title = 'Create your first note';
  final description = 'Add a note';
  final _createNote = 'Create a note';
  final _importNote = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBook),
            _TitleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleTextWidget(
                title: description * 10,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtonHeights.buttonNormalHeight,
                child: Center(
                  child: Text(
                    _createNote,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(_importNote),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class _SubtitleTextWidget extends StatelessWidget {
  const _SubtitleTextWidget(
      {super.key, this.textAlign = TextAlign.center, required this.title});
  final TextAlign? textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: Colors.black, fontSize: 30),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
