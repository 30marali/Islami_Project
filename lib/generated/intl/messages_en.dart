import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "ahadith": MessageLookupByLibrary.simpleMessage("Ahadith"),
    "arabic": MessageLookupByLibrary.simpleMessage("Arabic"),
    "dark": MessageLookupByLibrary.simpleMessage("Dark"),
    "english": MessageLookupByLibrary.simpleMessage("English"),
    "islami": MessageLookupByLibrary.simpleMessage("Islami"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "light": MessageLookupByLibrary.simpleMessage("Light"),
    "number_of_praises":
    MessageLookupByLibrary.simpleMessage("Number of Praises"),
    "quran_radio": MessageLookupByLibrary.simpleMessage("Quran Radio"),
    "sura_name": MessageLookupByLibrary.simpleMessage("Sura Name"),
    "theme": MessageLookupByLibrary.simpleMessage("Theme")
  };
}