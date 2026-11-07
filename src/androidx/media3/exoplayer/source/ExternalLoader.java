package androidx.media3.exoplayer.source;

import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public interface ExternalLoader {

    public static final class LoadRequest {
        public final Uri uri;

        public LoadRequest(Uri uri) {
            this.uri = uri;
        }
    }
}
