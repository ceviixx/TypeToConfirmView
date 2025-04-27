# 🔐 TypeToConfirmView

A customizable SwiftUI view for entering and validating multi-character confirmation codes like `"DELETE"` – ideal for destructive or security-critical actions.

---

## ✨ Features

- 🔢 Per-character input for confirmation codes (e.g. "DELETE")
- 🎯 Smart auto-focus between input fields
- 🎨 Full styling control via `InputStyle`, `Apperance`, and `Border`
- ✅ Real-time validation with a `Binding<Bool>`
- 🧼 Option to clear focus after last character entry

---

## 📦 Installation

### Swift Package Manager

In Xcode:
1. Go to `File` > `Add Packages...`
2. Enter the repository URL: https://github.com/ceviixx/TypeToConfirmView.git
3. Choose the latest version and add the package.

---

## 🚀 Usage Example

```swift
import SwiftUI

@State private var isDeleteConfirmed = false

var body: some View {
    TypeToConfirmView(
        value: "DELETE",
        isValid: $isDeleteConfirmed,
        clearFocusAfterLastDigit: true,
        inputStyle: InputStyle(
            apperance: Apperance(
                foregroundColor: .white,
                backgroundColor: .black
            ),
            border: Border(
                lineWidth: 1,
                color: .red,
                cornerRadius: 6
            )
        )
    )
}
```

---

## 🧩 Parameters

| Parameter                   | Type              | Description |
|----------------------------|-------------------|-------------|
| `value`                    | `String`          | The expected confirmation string (e.g. `"DELETE"`). |
| `isValid`                  | `Binding<Bool>`   | Binding that updates when input matches `value`. |
| `clearFocusAfterLastDigit`| `Bool`            | Whether to blur the final input field after entry. |
| `inputStyle`               | `InputStyle`      | Custom appearance settings for the input fields. |

---

## 🎨 Styling

Customize the look of input fields using `InputStyle`, `Apperance`, and `Border`.

```swift
InputStyle(
    apperance: Apperance(
        foregroundColor: .white,
        backgroundColor: .gray
    ),
    border: Border(
        lineWidth: 1,
        color: .red,
        cornerRadius: 8
    )
)
```

---

## 🔍 Live Validation

As the user types, the combined input is validated against the `value` (e.g. `"DELETE"`).
`isValid` updates immediately – ideal for enabling buttons or triggering actions.

---

## 🧪 SwiftUI Preview

```swift
struct TypeToConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        TypeToConfirmView(
            value: "DELETE",
            isValid: .constant(false)
        )
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Color(.systemBackground))
    }
}
```
