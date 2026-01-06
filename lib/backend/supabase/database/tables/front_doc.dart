import '../database.dart';

class FrontDocTable extends SupabaseTable<FrontDocRow> {
  @override
  String get tableName => 'front_doc';

  @override
  FrontDocRow createRow(Map<String, dynamic> data) => FrontDocRow(data);
}

class FrontDocRow extends SupabaseDataRow {
  FrontDocRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FrontDocTable();

  int get documentId => getField<int>('document_id')!;
  set documentId(int value) => setField<int>('document_id', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get fileName => getField<String>('file_name');
  set fileName(String? value) => setField<String>('file_name', value);
}
