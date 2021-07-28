import 'package:flutter/material.dart';
import 'package:flutter_demo/eyes/config/my_colors.dart';
import 'package:flutter_demo/eyes/config/my_images.dart';
import 'package:flutter_demo/eyes/config/my_strings.dart';

enum ViewState {
  loading,
  done,
  error,
}

typedef RetryFunction = Future<void> Function();
typedef BuilderFunction = Widget Function(BuildContext context);

class LoadingStateWidget extends StatelessWidget {
  final ViewState viewState;
  final BuilderFunction builder;
  final RetryFunction? retry;

  const LoadingStateWidget({
    Key? key,
    required this.viewState,
    required this.builder,
    this.retry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewState == ViewState.loading) {
      return _loadingWidget;
    }
    if (viewState == ViewState.error) {
      return _errorWidget;
    }
    return builder(context);
  }

  Widget get _loadingWidget => Center(
        child: CircularProgressIndicator(),
      );

  Widget get _errorWidget => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MyImages.icon_error,
              width: 100,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                MyStrings.net_request_fail,
                style: const TextStyle(
                  color: MyColors.hitTextColor,
                  fontSize: 18,
                ),
              ),
            ),
            retry == null
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: OutlinedButton(
                      onPressed: retry,
                      child: Text(
                        MyStrings.reload_again,
                        style: const TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        overlayColor: MaterialStateProperty.all(Colors.black12),
                      ),
                    ),
                  ),
          ],
        ),
      );
}
