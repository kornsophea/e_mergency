part of home;

class _HomeAdaptive extends StatelessWidget {
  const _HomeAdaptive(
    this.viewModel, {
    Key? key,
  }) : super(key: key);

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              context.read<ThemeProvider>().toggleThemeMode();
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Hello world'),
      ),
    );
  }
}
