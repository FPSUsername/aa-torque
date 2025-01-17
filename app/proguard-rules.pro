# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
-renamesourcefileattribute SourceFile

-keep class com.aatorque.stats.MainCarActivity { *; }
-keep class com.ezylang.evalex.** { *; }
-dontwarn com.ezylag.evalex.**
-keep public class * extends java.lang.Exception

# Google API client libraries
-keepattributes Signature,RuntimeVisibleAnnotations,AnnotationDefault
-keepclassmembers class * {
  @com.google.api.client.util.Key <fields>;
}
-dontwarn com.google.api.client.extensions.android.**
-dontwarn com.google.api.client.googleapis.extensions.android.**
-dontwarn com.google.android.gms.**
-dontnote java.nio.file.Files, java.nio.file.Path
-dontnote **.ILicensingService
-dontnote sun.misc.Unsafe
-dontwarn sun.misc.Unsafe

-dontwarn java.lang.ClassValue
-dontwarn javax.lang.model.element.Modifier
-dontwarn lombok.Generated

# Strip Log.d and Log.v
-assumenosideeffects class timber.log.Timber {
    public static *** d(...);
    public static *** v(...);
}

-keepclassmembers class * extends androidx.datastore.preferences.protobuf.GeneratedMessageLite {
    <fields>;
}

-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite* {
   <fields>;
}

-keep,allowoptimization class com.aatorque.** { *; }
