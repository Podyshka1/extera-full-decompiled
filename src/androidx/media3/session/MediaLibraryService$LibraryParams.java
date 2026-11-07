package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaLibraryService$LibraryParams {
    public final Bundle extras;
    public final boolean isOffline;
    public final boolean isRecent;
    public final boolean isSuggested;
    private static final String FIELD_EXTRAS = Util.intToStringMaxRadix(0);
    private static final String FIELD_RECENT = Util.intToStringMaxRadix(1);
    private static final String FIELD_OFFLINE = Util.intToStringMaxRadix(2);
    private static final String FIELD_SUGGESTED = Util.intToStringMaxRadix(3);

    private MediaLibraryService$LibraryParams(Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.extras = new Bundle(bundle);
        this.isRecent = z;
        this.isOffline = z2;
        this.isSuggested = z3;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(FIELD_EXTRAS, this.extras);
        bundle.putBoolean(FIELD_RECENT, this.isRecent);
        bundle.putBoolean(FIELD_OFFLINE, this.isOffline);
        bundle.putBoolean(FIELD_SUGGESTED, this.isSuggested);
        return bundle;
    }

    public static MediaLibraryService$LibraryParams fromBundle(Bundle bundle) {
        Bundle bundleConvertToNullIfInvalid = Util.convertToNullIfInvalid(bundle.getBundle(FIELD_EXTRAS));
        boolean z = bundle.getBoolean(FIELD_RECENT, false);
        boolean z2 = bundle.getBoolean(FIELD_OFFLINE, false);
        boolean z3 = bundle.getBoolean(FIELD_SUGGESTED, false);
        if (bundleConvertToNullIfInvalid == null) {
            bundleConvertToNullIfInvalid = Bundle.EMPTY;
        }
        return new MediaLibraryService$LibraryParams(bundleConvertToNullIfInvalid, z, z2, z3);
    }
}
