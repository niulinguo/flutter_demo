import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef ModelInitFunction<T extends ChangeNotifier> = void Function(T model);
typedef BuilderFunction<T extends ChangeNotifier> = Widget Function(
    BuildContext context, T model, Widget? child);

class ProviderWidget<T extends ChangeNotifier> extends StatefulWidget {
  final T model;
  final Widget? child;
  final ModelInitFunction<T>? onModelInit;
  final BuilderFunction<T> builder;

  const ProviderWidget({
    Key? key,
    required this.model,
    required this.builder,
    this.child,
    this.onModelInit,
  }) : super(key: key);

  @override
  _ProviderWidgetState createState() => _ProviderWidgetState<T>();
}

class _ProviderWidgetState<T extends ChangeNotifier>
    extends State<ProviderWidget<T>> {
  @override
  void initState() {
    super.initState();

    final initFunction = this.widget.onModelInit;
    if (initFunction != null) {
      initFunction(this.widget.model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => this.widget.model,
      child: Consumer<T>(
        builder: this.widget.builder,
        child: this.widget.child,
      ),
    );
  }
}
