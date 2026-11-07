package androidx.media3.session;

import android.media.session.MediaSession;
import android.os.Bundle;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionToken {
    private static final String FIELD_IMPL;
    private static final String FIELD_IMPL_TYPE;
    private final SessionTokenImpl impl;

    public interface SessionTokenImpl {
        Bundle getExtras();

        Bundle toBundle();
    }

    static {
        MediaLibraryInfo.registerModule("media3.session");
        FIELD_IMPL_TYPE = Util.intToStringMaxRadix(0);
        FIELD_IMPL = Util.intToStringMaxRadix(1);
    }

    public SessionToken(int i, int i2, int i3, int i4, String str, IMediaSession iMediaSession, Bundle bundle, MediaSession.Token token) {
        this.impl = new SessionTokenImplBase(i, i2, i3, i4, str, iMediaSession, bundle, token);
    }

    public int hashCode() {
        return this.impl.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof SessionToken) {
            return this.impl.equals(((SessionToken) obj).impl);
        }
        return false;
    }

    public String toString() {
        return this.impl.toString();
    }

    public Bundle getExtras() {
        return this.impl.getExtras();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.impl instanceof SessionTokenImplBase) {
            bundle.putInt(FIELD_IMPL_TYPE, 0);
        } else {
            bundle.putInt(FIELD_IMPL_TYPE, 1);
        }
        bundle.putBundle(FIELD_IMPL, this.impl.toBundle());
        return bundle;
    }
}
