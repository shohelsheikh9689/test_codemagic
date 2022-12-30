
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supedupar_event.freezed.dart';

@freezed
abstract class SupervisorWorkOrderEditEvent
    with _$SupervisorWorkOrderEditEvent {

  const factory SupervisorWorkOrderEditEvent.notesChanged(String notes) =
      NotesChanged;

}