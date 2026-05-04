package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.h */
/* JADX INFO: loaded from: classes5.dex */
final class C1625h extends StandardIntegrityManager.PrepareIntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final long f308a;

    /* synthetic */ C1625h(long j, C1624g c1624g) {
        this.f308a = j;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final long mo286a() {
        return this.f308a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof StandardIntegrityManager.PrepareIntegrityTokenRequest) && this.f308a == ((StandardIntegrityManager.PrepareIntegrityTokenRequest) obj).mo286a();
    }

    public final int hashCode() {
        long j = this.f308a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public final String toString() {
        return "PrepareIntegrityTokenRequest{cloudProjectNumber=" + this.f308a + "}";
    }
}
