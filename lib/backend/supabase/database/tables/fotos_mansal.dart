import '../database.dart';

class FotosMansalTable extends SupabaseTable<FotosMansalRow> {
  @override
  String get tableName => 'FotosMansal';

  @override
  FotosMansalRow createRow(Map<String, dynamic> data) => FotosMansalRow(data);
}

class FotosMansalRow extends SupabaseDataRow {
  FotosMansalRow(super.data);

  @override
  SupabaseTable get table => FotosMansalTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get infoFoto => getField<String>('info_foto');
  set infoFoto(String? value) => setField<String>('info_foto', value);
}
