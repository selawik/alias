abstract base class DictionarySyncException implements Exception {
  String? message;

  DictionarySyncException({
    this.message,
  });
}

final class CommandSyncException extends DictionarySyncException {
  CommandSyncException({super.message});
}

final class CategorySyncException extends DictionarySyncException {
  CategorySyncException({super.message});
}

final class WordSyncException extends DictionarySyncException {
  WordSyncException({super.message});
}
