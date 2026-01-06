import '../database.dart';

class DocumentTable extends SupabaseTable<DocumentRow> {
  @override
  String get tableName => 'document';

  @override
  DocumentRow createRow(Map<String, dynamic> data) => DocumentRow(data);
}

class DocumentRow extends SupabaseDataRow {
  DocumentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocumentTable();

  String get documentId => getField<String>('document_id')!;
  set documentId(String value) => setField<String>('document_id', value);

  String? get fileName => getField<String>('file_name');
  set fileName(String? value) => setField<String>('file_name', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get folderId => getField<String>('folder_id');
  set folderId(String? value) => setField<String>('folder_id', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);
}
