# AgentAndroidApp

A more complete Android AI Agent app scaffold built with Kotlin + Jetpack Compose.

## Included
- Chat screen
- Settings screen
- Conversation history screen
- Room local persistence for conversations and messages
- DataStore local settings persistence
- OpenAI-compatible chat API config
- Basic tool registry
- Automatic tool-call roundtrip support for compatible models
- Manual `/tool {...}` fallback for debugging
- Material 3 dynamic color (Monet) theme on Android 12+
- Toggle for dynamic color in settings
- Adaptive launcher icon resources
- Release signing template wiring
- Gradle wrapper placeholder scripts
- Android tools: open URL, share text

## Built-in tools
- `get_time`
- `echo`
- `open_url`
- `share_text`

## Before packaging
### 1. Open in Android Studio
Open the `AgentAndroidApp` folder as a Gradle project.

### 2. Let Android Studio sync and repair wrapper/build environment if needed
This repo includes lightweight wrapper-related files, but Android Studio is still the recommended way to finalize the local environment.

### 3. Configure local SDK
Copy:
```text
local.properties.example -> local.properties
```
Then set your Android SDK path.

### 4. Configure release signing
Copy:
```text
keystore.properties.example -> keystore.properties
```
Fill in:
- `storeFile`
- `storePassword`
- `keyAlias`
- `keyPassword`

## Packaging
### Debug APK
```bash
./gradlew assembleDebug
```
Output:
```text
app/build/outputs/apk/debug/app-debug.apk
```

### Release APK
```bash
./gradlew assembleRelease
```
Output:
```text
app/build/outputs/apk/release/app-release.apk
```

### Release AAB
```bash
./gradlew bundleRelease
```
Output:
```text
app/build/outputs/bundle/release/app-release.aab
```

## Notes
- Dynamic color uses Monet on Android 12+
- On lower Android versions, the app falls back to normal Material 3 colors
- Tool calling still depends on whether your model endpoint supports OpenAI-compatible tool_calls

## Current limitations
- Streaming responses not implemented yet
- No DI framework yet (e.g. Hilt)
- Android system tools are still basic
- Wrapper scripts are placeholders, not the full official generated wrapper bootstrap
- A full compile verification still depends on your local Android SDK/Gradle environment

## Suggested next improvements
- Streaming responses
- Better error states
- System tools (calendar/share/browser/reminder/files)
- Permission confirmation dialogs
- Export/import conversations
- Better branding and launcher assets
