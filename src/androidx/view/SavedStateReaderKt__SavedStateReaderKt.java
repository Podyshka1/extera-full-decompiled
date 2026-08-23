package androidx.view;

import kotlin.Metadata;
import kotlin.PublishedApi;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001¨\u0006\u0004"}, d2 = {"keyOrValueNotFoundError", _UrlKt.FRAGMENT_ENCODE_SET, "key", _UrlKt.FRAGMENT_ENCODE_SET, "savedstate"}, m754k = 5, mv = {2, 0, 0}, xi = 48, xs = "androidx/savedstate/SavedStateReaderKt")
abstract /* synthetic */ class SavedStateReaderKt__SavedStateReaderKt {
    @PublishedApi
    public static final Void keyOrValueNotFoundError(String str) {
        throw new IllegalArgumentException("No valid saved state was found for the key '" + str + "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly.");
    }
}
