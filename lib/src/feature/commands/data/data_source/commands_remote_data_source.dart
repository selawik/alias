import 'package:alias/src/core/constants/firebase_data_store_collections.dart';
import 'package:alias/src/feature/commands/data/dto/command_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract interface class CommandsRemoteDataSource {
  Future<List<CommandDto>> loadAllCommands();
}

@Injectable(as: CommandsRemoteDataSource)
class FirebaseCommandsDataSource implements CommandsRemoteDataSource {
  @override
  Future<List<CommandDto>> loadAllCommands() async {
    final commandsData = await FirebaseFirestore.instance
        .collection(FirebaseDataStoreCollections.command)
        .get();

    return commandsData.docs
        .map((item) => CommandDto.fromJson(item.data()))
        .toList();
  }
}
