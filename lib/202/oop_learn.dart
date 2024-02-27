import 'dart:io';

import 'package:flutter_trainin/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(String path) async {
    await launchUrl("sms:$path" as Uri);
  }
}

class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print('a');
    return true;
  }

  void smsShare() {}
}

class FileItem {
  FileItem(this.name, this.file);
  final String name;
  final File file;
}

mixin ShareMixin on IFileDownload {
  void toShowFile() {}
}

class VeliDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    // TODO: implement downloadItem
    throw UnimplementedError();
  }
}
