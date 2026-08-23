package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class Android {
    private static boolean ASSUME_ANDROID;
    private static final boolean IS_ROBOLECTRIC;
    private static final Class MEMORY_CLASS = getClassForName("libcore.io.Memory");

    static {
        IS_ROBOLECTRIC = (ASSUME_ANDROID || getClassForName("org.robolectric.Robolectric") == null) ? false : true;
    }

    static boolean isOnAndroidDevice() {
        if (ASSUME_ANDROID) {
            return true;
        }
        return (MEMORY_CLASS == null || IS_ROBOLECTRIC) ? false : true;
    }

    static Class getMemoryClass() {
        return MEMORY_CLASS;
    }

    private static Class getClassForName(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
