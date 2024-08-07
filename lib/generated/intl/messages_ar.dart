import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "ahadith": MessageLookupByLibrary.simpleMessage("الأحاديث"),
    "arabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "dark": MessageLookupByLibrary.simpleMessage("داكن"),
    "english": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
    "islami": MessageLookupByLibrary.simpleMessage("إسلامي"),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "light": MessageLookupByLibrary.simpleMessage("فاتح"),
    "number_of_praises":
    MessageLookupByLibrary.simpleMessage("عدد التسبيحات"),
    "quran_radio":
    MessageLookupByLibrary.simpleMessage("إذاعة القرآن الكريم"),
    "sura_name": MessageLookupByLibrary.simpleMessage("إسم السورة"),
    "theme": MessageLookupByLibrary.simpleMessage("الثيم")
  };
}