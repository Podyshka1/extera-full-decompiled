package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.k */
/* JADX INFO: loaded from: classes5.dex */
final class C1628k extends StandardIntegrityManager.StandardIntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final String f310a;

    /* synthetic */ C1628k(String str, C1627j c1627j) {
        this.f310a = str;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final String mo287a() {
        return this.f310a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StandardIntegrityManager.StandardIntegrityTokenRequest)) {
            return false;
        }
        StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = (StandardIntegrityManager.StandardIntegrityTokenRequest) obj;
        String str = this.f310a;
        return str == null ? standardIntegrityTokenRequest.mo287a() == null : str.equals(standardIntegrityTokenRequest.mo287a());
    }

    public final int hashCode() {
        String str = this.f310a;
        return (str == null ? 0 : str.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "StandardIntegrityTokenRequest{requestHash=" + this.f310a + "}";
    }
}
