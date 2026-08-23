package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.k */
/* JADX INFO: loaded from: classes5.dex */
final class C1682k extends StandardIntegrityManager.StandardIntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final String f369a;

    public /* synthetic */ C1682k(String str, C1681j c1681j) {
        this.f369a = str;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final String mo346a() {
        return this.f369a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StandardIntegrityManager.StandardIntegrityTokenRequest)) {
            return false;
        }
        StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = (StandardIntegrityManager.StandardIntegrityTokenRequest) obj;
        String str = this.f369a;
        return str == null ? standardIntegrityTokenRequest.mo346a() == null : str.equals(standardIntegrityTokenRequest.mo346a());
    }

    public final int hashCode() {
        String str = this.f369a;
        return (str == null ? 0 : str.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "StandardIntegrityTokenRequest{requestHash=" + this.f369a + "}";
    }
}
