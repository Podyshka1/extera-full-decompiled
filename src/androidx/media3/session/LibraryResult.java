package androidx.media3.session;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.core.app.BundleCompat;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Util;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class LibraryResult<V> {
    public final long completionTimeMs;
    public final MediaLibraryService$LibraryParams params;
    public final int resultCode;
    public final SessionError sessionError;
    public final V value;
    private final int valueType;
    private static final String FIELD_RESULT_CODE = Util.intToStringMaxRadix(0);
    private static final String FIELD_COMPLETION_TIME_MS = Util.intToStringMaxRadix(1);
    private static final String FIELD_PARAMS = Util.intToStringMaxRadix(2);
    private static final String FIELD_VALUE = Util.intToStringMaxRadix(3);
    private static final String FIELD_VALUE_TYPE = Util.intToStringMaxRadix(4);
    private static final String FIELD_SESSION_ERROR = Util.intToStringMaxRadix(5);

    @SuppressLint({"WrongConstant"})
    public static <V> LibraryResult<V> ofError(int i) {
        return ofError(new SessionError(i, "no error message provided", Bundle.EMPTY));
    }

    @SuppressLint({"WrongConstant"})
    public static <V> LibraryResult<V> ofError(SessionError sessionError) {
        return new LibraryResult<>(sessionError.code, SystemClock.elapsedRealtime(), null, sessionError, null, 4);
    }

    private LibraryResult(int i, long j, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, SessionError sessionError, V v, int i2) {
        this.resultCode = i;
        this.completionTimeMs = j;
        this.params = mediaLibraryService$LibraryParams;
        this.sessionError = sessionError;
        this.value = v;
        this.valueType = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0045, code lost:
    
        if (r2 != 4) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bundle toBundle(final int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_RESULT_CODE, this.resultCode);
        bundle.putLong(FIELD_COMPLETION_TIME_MS, this.completionTimeMs);
        MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = this.params;
        if (mediaLibraryService$LibraryParams != null) {
            bundle.putBundle(FIELD_PARAMS, mediaLibraryService$LibraryParams.toBundle());
        }
        SessionError sessionError = this.sessionError;
        if (sessionError != null) {
            bundle.putBundle(FIELD_SESSION_ERROR, sessionError.toBundle());
        }
        bundle.putInt(FIELD_VALUE_TYPE, this.valueType);
        V v = this.value;
        if (v != null) {
            int i2 = this.valueType;
            if (i2 != 1) {
                if (i2 == 2) {
                    bundle.putBundle(FIELD_VALUE, ((MediaItem) v).toBundle(i));
                    return bundle;
                }
                if (i2 == 3) {
                    BundleCompat.putBinder(bundle, FIELD_VALUE, new BundleListRetriever(BundleCollectionUtil.toBundleList((ImmutableList) this.value, new Function() { // from class: androidx.media3.session.LibraryResult$$ExternalSyntheticLambda0
                        @Override // com.google.common.base.Function
                        public final Object apply(Object obj) {
                            return ((MediaItem) obj).toBundle(i);
                        }
                    })));
                    return bundle;
                }
            }
            MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
            return null;
        }
        return bundle;
    }
}
