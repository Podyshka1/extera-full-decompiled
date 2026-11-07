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
            C1905c c1905c = new C1905c();
            c1905c.m405a(0);
            return c1905c;
        }

        /* JADX INFO: renamed from: a */
        public abstract int mo375a();

        /* JADX INFO: renamed from: b */
        public abstract long mo376b();
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
            C1908f c1908f = new C1908f();
            c1908f.setVerdictOptOut(as.m453h());
            return c1908f;
        }

        public abstract String requestHash();

        public abstract Set<Integer> verdictOptOut();
    }

    Task<StandardIntegrityTokenProvider> prepareIntegrityToken(PrepareIntegrityTokenRequest prepareIntegrityTokenRequest);
}
