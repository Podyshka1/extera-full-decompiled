package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PlaybackException extends Exception {
    public final int errorCode;
    public final Bundle extras;
    public final long timestampMs;
    private static final String FIELD_INT_ERROR_CODE = Util.intToStringMaxRadix(0);
    private static final String FIELD_LONG_TIMESTAMP_MS = Util.intToStringMaxRadix(1);
    private static final String FIELD_STRING_MESSAGE = Util.intToStringMaxRadix(2);
    private static final String FIELD_STRING_CAUSE_CLASS_NAME = Util.intToStringMaxRadix(3);
    private static final String FIELD_STRING_CAUSE_MESSAGE = Util.intToStringMaxRadix(4);
    private static final String FIELD_BUNDLE_EXTRAS = Util.intToStringMaxRadix(5);

    public PlaybackException(String str, Throwable th, int i, Bundle bundle, long j) {
        super(str, th);
        this.errorCode = i;
        this.extras = bundle;
        this.timestampMs = j;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_INT_ERROR_CODE, this.errorCode);
        bundle.putLong(FIELD_LONG_TIMESTAMP_MS, this.timestampMs);
        bundle.putString(FIELD_STRING_MESSAGE, getMessage());
        bundle.putBundle(FIELD_BUNDLE_EXTRAS, this.extras);
        Throwable cause = getCause();
        if (cause != null) {
            bundle.putString(FIELD_STRING_CAUSE_CLASS_NAME, cause.getClass().getName());
            bundle.putString(FIELD_STRING_CAUSE_MESSAGE, cause.getMessage());
        }
        return bundle;
    }
}
