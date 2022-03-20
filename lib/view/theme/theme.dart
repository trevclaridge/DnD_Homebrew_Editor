part of view;

class CustomTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      textTheme: const TextTheme(
        //Section Header
        displayLarge: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Mr Eaves Small Caps',
            color: Palette.sectionHeader),
        //Sub Header
        displayMedium: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Mr Eaves Small Caps',
            color: Palette.sectionHeader),
        //Block Header
        displaySmall: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Mr Eaves Small Caps',
            color: Palette.sectionHeader),
        //Body
        bodySmall: TextStyle(fontSize: 9.0, fontFamily: 'Bookinsanity'),
        //Table Header
        labelLarge: TextStyle(
            fontSize: 11.0,
            fontFamily: 'Scaly Sans',
            fontWeight: FontWeight.bold),
        //Table Column Header
        labelMedium: TextStyle(
          fontSize: 8.5,
          fontFamily: 'Scaly Sans',
          fontWeight: FontWeight.bold,
        ),
        //Table Body
        labelSmall: TextStyle(
            fontSize: 8.5, fontFamily: 'Scaly Sans', letterSpacing: 0.2),
        //Monster Manual Note
        bodyMedium:
            TextStyle(fontSize: 10.0, fontFamily: 'Zatanna Misdirection'),
      ),
      scaffoldBackgroundColor: Palette.background,
      primarySwatch: Colors.amber,
    );
  }
}
