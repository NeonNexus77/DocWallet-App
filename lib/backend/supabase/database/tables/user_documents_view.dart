import '../database.dart';

class UserDocumentsViewTable extends SupabaseTable<UserDocumentsViewRow> {
  @override
  String get tableName => 'user_documents_view';

  @override
  UserDocumentsViewRow createRow(Map<String, dynamic> data) =>
      UserDocumentsViewRow(data);
}

class UserDocumentsViewRow extends SupabaseDataRow {
  UserDocumentsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserDocumentsViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get fileName => getField<String>('file_name');
  set fileName(String? value) => setField<String>('file_name', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);
}
