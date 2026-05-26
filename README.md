# Aadil Offset Tester - Zygisk Module

> A Zygisk module that automatically adds **Offset Tester** into selected Android apps or games. No need to modify the APK. Just install the module, set package names, and use it.

---

## What is Offset Tester?

**Offset Tester** is an advanced Android game analysis tool developed by [Aadil Mods](https://www.youtube.com/@AadilMods). It shows a floating menu inside the game/app and gives you powerful real-time features such as memory inspection, offset testing, hooking, and patching. It also includes tools for library dumping, memory tracing, stack tracing, and pointer scanning.

It is mainly used for:
- Offset/Memory patching, and Function hooking
- Displaying memory values and function returns in different data types 
- Memory tracing, stack tracing, and pointer scanning
- Library dumping, including global, Il2Cpp, and runtime dumps

Offset Tester supports both **ARM32 (ARMv7)** and **ARM64 (ARMv8)** architectures and works with Unreal, Unity and non-Unity games.

---

## Features

| Feature | Description |
|---|---|
| **Function Hooking** | Supports runtime function hooking |
| **Wide Data Type Support** | Supports multiple data types: bool, int, float, string, vector2, vector3, quaternion/color, char, int8, byte, uint, short, long, double, C++ string/const char, Unity/UE4 string, array, list, and void |
| **Hex / Memory Patching** | Patch raw hex or memory values directly while the game is running |
| **Memory Tracer** | Trace any memory address in real time inside a running game |
| **Pointer Scanner** | Scan for pointer chains to find stable pointer path |
| **Stack Trace** | View the call stack to understand how a function is being executed |
| **Runtime Dumper** | Dumps only actively used offsets for faster and cleaner results compared to full dumps |
| **Global/Unity Dumper** | Dumps Unity or non-Unity game libraries for analysis |
| **ARM32 & ARM64 Support** | Fully compatible with both 32-bit and 64-bit architectures |

---

## How This Module Works

This Zygisk module uses the **Zygisk API** (part of Magisk) to inject the Offset Tester into a target game process at launch. Instead of manually patching the game APK, the module handles injection automatically in the background.

You simply tell the module which games to inject into by listing their package names in a config file, and Offset Tester appears as a floating every time you open one of those games.

---

## Requirements

- Rooted Android device
- **Magisk** with **Zygisk enabled**
- A file manager that can access `/data/adb/` (e.g. MT Manager)

---

## Installation

**Step 1 - Download the module**

Download the latest `.zip` release from the [Releases](../../releases/latest) page.

**Step 2 - Install via Magisk**

Open **Magisk → Modules → Install from storage** and select the downloaded `.zip` file.

**Step 3 - Enable Zygisk**

Go to **Magisk → Settings** and make sure **Zygisk** is turned **ON**. The module will not work without it.

**Step 4 - Reboot your device**

Restart your device to activate the module.

**Step 5 - Configure your target games**

Navigate to the following folder on your device:

```
/data/adb/modules/AadilOffsetTester/
```

Open the `packages.txt` file and enter the package name of the game you want to inject Offset Tester into.

**Single game:**
```
com.fingersoft.hillclimb
```

**Multiple games** (separate each with a comma, no spaces):
```
com.fingersoft.hillclimb,com.innersloth.spacemafia
```

Save the file.

**Step 6 - Open your game**

Launch the game. Offset Tester will appear automatically as a floating inside the game.

---

## Non-Rooted Devices

If your device is not rooted, you have two options:

- **Manual injection** - Decompile the game APK and inject the Offset Tester manually, then rebuild and install the patched APK.
- **Virtual Android environment** - Use a virtual Android app such as Virtual Master, VPhoneGaga, or VMOS, install Magisk inside it to get root access, then follow the standard installation steps above.

---

## Download

Get the latest release here: [Releases →](../../releases/latest)

---

## Contact

For support, feedback, or questions:

- **Email:** gameraadilmods@gmail.com
- **Telegram:** [@aadilop](https://t.me/aadilop)
- **Website:** [tools.aadilmods.com/offsettester](https://tools.aadilmods.com/offsettester)

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.
