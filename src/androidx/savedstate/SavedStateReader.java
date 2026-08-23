package androidx.savedstate;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SavedStateReader {
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Bundle m2164constructorimpl(Bundle source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source;
    }

    /* JADX INFO: renamed from: getStringListOrNull-impl, reason: not valid java name */
    public static final List m2168getStringListOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getStringArrayList(key);
    }

    /* JADX INFO: renamed from: getSavedState-impl, reason: not valid java name */
    public static final Bundle m2166getSavedStateimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Bundle bundle2 = bundle.getBundle(key);
        if (bundle2 != null) {
            return bundle2;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: renamed from: getSavedStateOrNull-impl, reason: not valid java name */
    public static final Bundle m2167getSavedStateOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getBundle(key);
    }

    /* JADX INFO: renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m2169isEmptyimpl(Bundle bundle) {
        return bundle.isEmpty();
    }

    /* JADX INFO: renamed from: contains-impl, reason: not valid java name */
    public static final boolean m2165containsimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.containsKey(key);
    }

    /* JADX INFO: renamed from: toMap-impl, reason: not valid java name */
    public static final Map m2170toMapimpl(Bundle bundle) {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder(bundle.size());
        for (String str : bundle.keySet()) {
            Intrinsics.checkNotNull(str);
            mapCreateMapBuilder.put(str, bundle.get(str));
        }
        return MapsKt.build(mapCreateMapBuilder);
    }
}
