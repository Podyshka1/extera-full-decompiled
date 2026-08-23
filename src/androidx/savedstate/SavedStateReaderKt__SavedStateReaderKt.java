package androidx.savedstate;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
abstract /* synthetic */ class SavedStateReaderKt__SavedStateReaderKt {
    public static final Void keyOrValueNotFoundError(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        throw new IllegalArgumentException("No valid saved state was found for the key '" + key + "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly.");
    }
}
