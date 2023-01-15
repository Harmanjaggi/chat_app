import 'package:flutter/material.dart';

class CustomDropdown extends FormField<String> {
  CustomDropdown({
    Key? key,
    required List<String> list,
    List<String>? keyList,
    String? hintText,
    FormFieldValidator<String>? validator,
    double? width,
    bool isExpanded = true,
    required TextEditingController controller,
    String? dropdownValue,
  }) : super(
          key: key,
          validator: validator,
          initialValue: dropdownValue,
          builder: (FormFieldState<String> state) {
            final theme = Theme.of(state.context);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: DropdownButton<String>(
                    elevation: 1,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    underline: const SizedBox(),
                    isExpanded: isExpanded,
                    hint: hintText != null ? Text(hintText) : null,
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: list
                        .map(
                          (String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      controller.text = keyList != null
                          ? keyList[list.indexOf(value!)]
                          : value!;
                      dropdownValue = value;
                      state.didChange(dropdownValue);
                    },
                  ),
                ),
                if (state.hasError && state.errorText != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    state.errorText!,
                    style: ThemeData.light().textTheme.labelSmall?.copyWith(
                          color: ThemeData.light().errorColor,
                          fontSize: 12,
                        ),
                  ),
                ]
              ],
            );
          },
        );
}
