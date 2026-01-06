import '../database.dart';

class FoldersTable extends SupabaseTable<FoldersRow> {
  @override
  String get tableName => 'folders';

  @override
  FoldersRow createRow(Map<String, dynamic> data) => FoldersRow(data);
}

class FoldersRow extends SupabaseDataRow {
  FoldersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FoldersTable();

  String get folderId => getField<String>('folder_id')!;
  set folderId(String value) => setField<String>('folder_id', value);

  String? get folderName => getField<String>('folder_name');
  set folderName(String? value) => setField<String>('folder_name', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
