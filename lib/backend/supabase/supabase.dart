import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://wtcdvhwfpxaofbgikecb.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0Y2R2aHdmcHhhb2ZiZ2lrZWNiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk5MTEzMzQsImV4cCI6MjAzNTQ4NzMzNH0.HCuwvFq9NjK-5vGP2FGYzA3B8xDzxtu6NvQTSmklLDM';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
