package androidx.datastore.preferences.core;

import androidx.datastore.preferences.core.Preferences;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferencesFactory {
    public static final Preferences createEmpty() {
        return new MutablePreferences(null, true, 1, null);
    }

    public static final MutablePreferences createMutable(Preferences.Pair... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        MutablePreferences mutablePreferences = new MutablePreferences(null, false, 1, null);
        mutablePreferences.putAll((Preferences.Pair[]) Arrays.copyOf(pairs, pairs.length));
        return mutablePreferences;
    }
}
