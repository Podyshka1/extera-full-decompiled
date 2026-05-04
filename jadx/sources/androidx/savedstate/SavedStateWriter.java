package androidx.savedstate;

import android.os.Bundle;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SavedStateWriter {
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Bundle m2171constructorimpl(Bundle source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source;
    }

    /* JADX INFO: renamed from: putStringList-impl, reason: not valid java name */
    public static final void m2174putStringListimpl(Bundle bundle, String key, List value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putStringArrayList(key, SavedStateWriterKt.toArrayListUnsafe(value));
    }

    /* JADX INFO: renamed from: putSavedState-impl, reason: not valid java name */
    public static final void m2173putSavedStateimpl(Bundle bundle, String key, Bundle value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putBundle(key, value);
    }

    /* JADX INFO: renamed from: putAll-impl, reason: not valid java name */
    public static final void m2172putAllimpl(Bundle bundle, Bundle from) {
        Intrinsics.checkNotNullParameter(from, "from");
        bundle.putAll(from);
    }

    /* JADX INFO: renamed from: remove-impl, reason: not valid java name */
    public static final void m2175removeimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.remove(key);
    }
}
