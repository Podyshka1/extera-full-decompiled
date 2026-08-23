package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.h */
/* JADX INFO: loaded from: classes5.dex */
final class C1679h extends StandardIntegrityManager.PrepareIntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final long f367a;

    public /* synthetic */ C1679h(long j, C1678g c1678g) {
        this.f367a = j;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final long mo345a() {
        return this.f367a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof StandardIntegrityManager.PrepareIntegrityTokenRequest) && this.f367a == ((StandardIntegrityManager.PrepareIntegrityTokenRequest) obj).mo345a();
    }

    public final int hashCode() {
        long j = this.f367a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public final String toString() {
        return "PrepareIntegrityTokenRequest{cloudProjectNumber=" + this.f367a + "}";
    }
}
