class Env {
  static String passwordDefault = const String.fromEnvironment('PASSWORD_DEFAULT');

  static String supaApiKey = const String.fromEnvironment('SUPA_API_KEY',
      defaultValue:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFlc2JtYm96Z3JydGt1dWh1cnhnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc5Mzk0NTIsImV4cCI6MjAyMzUxNTQ1Mn0.utpfe6veBzWA5iK43Xo8utaAJGcqhlcrHYFYS_rMCew');

  static String supaBaseUrl = const String.fromEnvironment('SUPA_BASE_URL', defaultValue: 'https://qesbmbozgrrtkuuhurxg.supabase.co');

  static String geoapifyBaseUrl = const String.fromEnvironment('GEOAPIFY_BASE_URL');

  static String geoapifyApiKey = const String.fromEnvironment('GEOAPIFY_API_KEY');

  static String mapboxlight = const String.fromEnvironment('MAPBOX_LIGHT');

  static String mapboxDark = const String.fromEnvironment('MAPBOX_DARK');

  static String mapboxApiKey = const String.fromEnvironment('MAPBOX_API_KEY');
}
