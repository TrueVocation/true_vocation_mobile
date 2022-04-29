import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextInputMasks {
  static var phoneNumber = MaskTextInputFormatter(
      mask: '+7 (###) ### ## ##',
      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );
  static var defaultMask = MaskTextInputFormatter(
      type: MaskAutoCompletionType.lazy,
  );
}