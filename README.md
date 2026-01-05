# gcc_currency

A lightweight Flutter package that provides **GCC currency symbols** (SAR, AED, QAR, OMR, KWD, BHD) as a **custom icon font**.

This package is designed for **POS systems, invoicing, receipts, financial apps**, and anywhere you need clean, scalable currency symbols that behave like icons or text.

---

## ✨ Features

* Custom font-based currency symbols (sharp at any size)
* Works with `Icon`, `Text`, `RichText`, and `TextSpan`
* Colorable & scalable
* No SVG or image assets at runtime
* Optimized for Flutter packages (uses `fontPackage`)
* ISO-style currency naming

---

## 📦 Supported Currencies

| Currency       | Code |
| -------------- | ---- |
| Saudi Riyal    | SAR  |
| UAE Dirham     | AED  |
| Qatari Riyal   | QAR  |
| Omani Rial     | OMR  |
| Kuwaiti Dinar  | KWD  |
| Bahraini Dinar | BHD  |

---

## 🚀 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  gcc_currency: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## 🧱 How It Works

This package ships a **custom icon font** (`GCCCurrency`) internally. Each currency symbol is mapped to a Unicode value in the **Private Use Area** and exposed via Dart constants.

This is the same technique used by **Material Icons** and **Font Awesome**.

---

## 🧩 Usage

### 1. Using as an Icon (Recommended)

```dart
import 'package:flutter/material.dart';
import 'package:gcc_currency/gcc_currency.dart';

Icon(
  GCCCurrencyIcon.sar,
  size: 24,
  color: Colors.green,
)
```

---

### 2. Inside Text (RichText / Invoice Style)

```dart
RichText(
  text: TextSpan(
    children: [
      GCCCurrencyText.span(
        GCCCurrency.aed,
        size: 18,
        color: Colors.black,
      ),
      const TextSpan(
        text: '1,250.00',
        style: TextStyle(color: Colors.black),
      ),
    ],
  ),
)
```

---

### 3. With Enum-Based API

```dart
GCCCurrency currency = GCCCurrency.omr;

Icon(GCCCurrencyText.icon(currency))
```

---

## 🧠 API Reference

### `GCCCurrencyIcon`

Provides static `IconData` constants.

```dart
GCCCurrencyIcon.sar
GCCCurrencyIcon.aed
GCCCurrencyIcon.qar
GCCCurrencyIcon.omr
GCCCurrencyIcon.kwd
GCCCurrencyIcon.bhd
```

---

### `GCCCurrencyText`

#### Get IconData from enum

```dart
IconData icon = GCCCurrencyText.icon(GCCCurrency.kwd);
```

#### Create a TextSpan

```dart
TextSpan span = GCCCurrencyText.span(
  GCCCurrency.bhd,
  size: 16,
  color: Colors.blue,
);
```

---

## 🖨️ Printing & PDF Support

Because this uses a font:

* Works perfectly in **PDF generation** (e.g. `printing`, `pdf` packages)
* Ideal for **thermal receipts** and **invoices**
* No rasterization issues

> Ensure the font is registered in your PDF engine if required.

---

## 🔧 Technical Notes

* Font family: `GCCCurrency`
* Unicode range: Private Use Area (`0xE001` → `0xE006`)
* Font package name is correctly set to `gcc_currency`
* All symbols are monochrome by design

---

## 🧪 Example

See the `example/` folder for a runnable demo app.


---

## 🤝 Contributing

Pull requests are welcome. Please ensure:

* Proper Unicode mapping
* Consistent naming
* No breaking API changes

---

## 📄 License

MIT License

---

## 🙌 Author

Developed for real-world GCC fintech, POS, and invoicing systems.

For Custom ERP & POS Solutions  [connect me](https://fathaaah.com)

If you find this useful, consider giving it a ⭐ on GitHub.

https://github.com/fathah/gcc_currency