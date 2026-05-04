package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.h */
/* JADX INFO: loaded from: classes5.dex */
final class C1728h extends StandardIntegrityManager.PrepareIntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final long f514a;

    /* synthetic */ C1728h(long j, C1727g c1727g) {
        this.f514a = j;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final long mo381a() {
        return this.f514a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof StandardIntegrityManager.PrepareIntegrityTokenRequest) && this.f514a == ((StandardIntegrityManager.PrepareIntegrityTokenRequest) obj).mo381a();
    }

    public final int hashCode() {
        long j = this.f514a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public final String toString() {
        return "PrepareIntegrityTokenRequest{cloudProjectNumber=" + this.f514a + "}";
    }
}
