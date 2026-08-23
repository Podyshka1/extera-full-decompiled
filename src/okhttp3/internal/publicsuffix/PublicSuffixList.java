package okhttp3.internal.publicsuffix;

import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
public interface PublicSuffixList {
    public static final Companion Companion = Companion.$$INSTANCE;

    void ensureLoaded();

    ByteString getBytes();

    ByteString getExceptionBytes();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
