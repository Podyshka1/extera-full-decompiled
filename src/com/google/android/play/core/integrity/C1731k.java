package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.k */
/* JADX INFO: loaded from: classes5.dex */
final class C1731k extends StandardIntegrityManager.StandardIntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final String f516a;

    /* synthetic */ C1731k(String str, C1730j c1730j) {
        this.f516a = str;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final String mo382a() {
        return this.f516a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StandardIntegrityManager.StandardIntegrityTokenRequest)) {
            return false;
        }
        StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = (StandardIntegrityManager.StandardIntegrityTokenRequest) obj;
        String str = this.f516a;
        return str == null ? standardIntegrityTokenRequest.mo382a() == null : str.equals(standardIntegrityTokenRequest.mo382a());
    }

    public final int hashCode() {
        String str = this.f516a;
        return (str == null ? 0 : str.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "StandardIntegrityTokenRequest{requestHash=" + this.f516a + "}";
    }
}
