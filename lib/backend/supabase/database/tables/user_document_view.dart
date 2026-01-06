import '../database.dart';

class UserDocumentViewTable extends SupabaseTable<UserDocumentViewRow> {
  @override
  String get tableName => 'user_document_view';

  @override
  UserDocumentViewRow createRow(Map<String, dynamic> data) =>
      UserDocumentViewRow(data);
}

class UserDocumentViewRow extends SupabaseDataRow {
  UserDocumentViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserDocumentViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get fileName => getField<String>('file_name');
  set fileName(String? value) => setField<String>('file_name', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  String? get folderId => getField<String>('folder_id');
  set folderId(String? value) => setField<String>('folder_id', value);
}
