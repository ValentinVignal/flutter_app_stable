import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:go_router/go_router.dart';

class AddressBar extends StatefulWidget {
  const AddressBar({Key? key}) : super(key: key);

  @override
  State<AddressBar> createState() => _AddressBarState();
}

class _AddressBarState extends State<AddressBar> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    router.routeInformationProvider.addListener(_onPageChange);
    _onPageChange();
  }

  void _onPageChange() {
    _controller.text = router.location;
  }

  @override
  void dispose() {
    _controller.dispose();
    router.routeInformationProvider.removeListener(_onPageChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextField(
        decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.all(2),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
        controller: _controller,
        onSubmitted: (newUrl) async {
          context.replace(newUrl);
        },
      ),
    );
  }
}
