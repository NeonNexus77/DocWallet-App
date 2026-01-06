import '../database.dart';

class FileAccessTable extends SupabaseTable<FileAccessRow> {
  @override
  String get tableName => 'file_access';

  @override
  FileAccessRow createRow(Map<String, dynamic> data) => FileAccessRow(data);
}

class FileAccessRow extends SupabaseDataRow {
  FileAccessRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FileAccessTable();

  String get shareId => getField<String>('share_id')!;
  set shareId(String value) => setField<String>('share_id', value);

  String? get documentId => getField<String>('document_id');
  set documentId(String? value) => setField<String>('document_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get sharedTo => getField<String>('shared_to');
  set sharedTo(String? value) => setField<String>('shared_to', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  int? get acessType => getField<int>('acess_type');
  set acessType(int? value) => setField<int>('acess_type', value);
}
