package androidx.datastore.preferences.core;

import androidx.datastore.preferences.core.Preferences;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferencesKeys {
    public static final Preferences.Key intKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }

    public static final Preferences.Key doubleKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }

    public static final Preferences.Key stringKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }

    public static final Preferences.Key booleanKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }

    public static final Preferences.Key floatKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }

    public static final Preferences.Key longKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }

    public static final Preferences.Key stringSetKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }

    public static final Preferences.Key byteArrayKey(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Preferences.Key(name);
    }
}
