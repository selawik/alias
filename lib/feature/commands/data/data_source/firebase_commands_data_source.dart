import 'package:alias/core/constants/firebase_data_store_collections.dart';
import 'package:alias/feature/commands/data/data_source/commands_data_source.dart';
import 'package:alias/feature/commands/data/models/command_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommandsDataSource)
class FirebaseCommandsDataSource implements CommandsDataSource {
  @override
  Future<List<CommandDto>> getAllCommands() async {
    var commandsData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.command)
        .get();

    return commandsData.docs
        .map((item) => CommandDto.fromJson(item.data()))
        .toList();
  }
}
