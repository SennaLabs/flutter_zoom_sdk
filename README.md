# flutter_zoom_sdk

Flutter Zoom SDK for LIVLY project

Zoom android sdk V.5.10.1.5184
Zoom IOS sdk V.5.9.6.2769

## To use

1. add this package to your pubspec.yaml
2. run this command "flutter pub run flutter_zoom_sdk:unzip_zoom_sdk" to download zoom core lib to your local
3. In ios
   3.1 download bundle from zoom official and then add MobileRTCResources.bundle to your project
   3.2 in Podfile set ENABLE_BITCODE TO NO like this ...

   ```
   target.build_configurations.each do |config|
     config.build_settings['ENABLE_BITCODE'] = 'NO'
   end

   ```

4. In Android
   4.1 In build.gradle (App section) update compileSDKVersion to 31
   4.2 Add/Set shrinkResources and minifyEnabled to false in buildTypes section
   4.3 Add packagingOptiond like this
   ```
   packagingOptions {
       pickFirst 'lib/armeabi-v7a/libc++_shared.so'
       pickFirst 'lib/arm64-v8a/libc++_shared.so'
       pickFirst 'lib/x86/libc++_shared.so'
       pickFirst 'lib/x86_64/libc++_shared.so'
   }
   ```
5. In flutter application
   5.1 call handlePlatformChannelMethods then initZoom

```
await FlutterZoomSdk().handlePlatformChannelMethods();
await FlutterZoomSdk().initZoom(
  InitParams(
    appKey: "",
    appSecret: "",
    domain: "",
  ),
);

```

## To continue develop

\*Please don't forget to update "unzip_zoom_sdk.dart" in bin folder if you change zoom sdk version
