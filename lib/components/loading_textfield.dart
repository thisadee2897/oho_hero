import '../config/routes/export.dart';

class LoadingTextField extends StatelessWidget {
  const LoadingTextField(
      {super.key, required this.title, this.require = false, this.initId});

  final String title;
  final bool require;

  final String? initId;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            if (require)
              Text("*", style: TextStyle(color: CupertinoColors.systemRed)),
            Text(
              "$title",
              style: TextStyle(
                fontSize: 14,
                color: CupertinoDynamicColor.resolve(
                  CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.darkBackgroundGray,
                    darkColor: CupertinoColors.systemGrey3.highContrastColor,
                  ),
                  context,
                ),
              ),
            ),
          ],
        ),
        IgnorePointer(
          ignoring: true,
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.0),
              color: CupertinoColors.tertiarySystemFill,
            ),
            child: Center(
              child: CupertinoActivityIndicator(),
            ),
          ),
        )
      ],
    );
  }
}
