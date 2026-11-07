package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.integrity.internal.as;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public interface StandardIntegrityManager {

    public static abstract class PrepareIntegrityTokenRequest {

        public static abstract class Builder {
            public abstract PrepareIntegrityTokenRequest build();

            public abstract Builder setCloudProjectNumber(long j);
        }

        public static Builder builder() {
            C1784c c1784c = new C1784c();
            c1784c.m381a(0);
            return c1784c;
        }

        /* JADX INFO: renamed from: a */
        public abstract int mo351a();

        /* JADX INFO: renamed from: b */
        public abstract long mo352b();
    }

    public static abstract class StandardIntegrityToken {
        public abstract String token();
    }

    public interface StandardIntegrityTokenProvider {
        Task<StandardIntegrityToken> request(StandardIntegrityTokenRequest standardIntegrityTokenRequest);
    }

    public static abstract class StandardIntegrityTokenRequest {

        public static abstract class Builder {
            public abstract StandardIntegrityTokenRequest build();

            public abstract Builder setRequestHash(String str);
        }

        public static Builder builder() {
            C1787f c1787f = new C1787f();
            c1787f.setVerdictOptOut(as.m429h());
            return c1787f;
        }

        public abstract String requestHash();

        public abstract Set<Integer> verdictOptOut();
    }

    Task<StandardIntegrityTokenProvider> prepareIntegrityToken(PrepareIntegrityTokenRequest prepareIntegrityTokenRequest);
}
