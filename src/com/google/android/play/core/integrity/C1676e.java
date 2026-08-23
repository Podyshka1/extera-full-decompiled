package com.google.android.play.core.integrity;

import android.net.Network;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1676e extends IntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final String f363a;

    /* JADX INFO: renamed from: b */
    private final Long f364b;

    public /* synthetic */ C1676e(String str, Long l, Network network, C1675d c1675d) {
        this.f363a = str;
        this.f364b = l;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final Network mo344a() {
        return null;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final Long cloudProjectNumber() {
        return this.f364b;
    }

    public final boolean equals(Object obj) {
        Long l;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityTokenRequest) {
            IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
            if (this.f363a.equals(integrityTokenRequest.nonce()) && ((l = this.f364b) != null ? l.equals(integrityTokenRequest.cloudProjectNumber()) : integrityTokenRequest.cloudProjectNumber() == null)) {
                integrityTokenRequest.mo344a();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f363a.hashCode() ^ 1000003;
        Long l = this.f364b;
        return ((l == null ? 0 : l.hashCode()) ^ (iHashCode * 1000003)) * 1000003;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final String nonce() {
        return this.f363a;
    }

    public final String toString() {
        return "IntegrityTokenRequest{nonce=" + this.f363a + ", cloudProjectNumber=" + this.f364b + ", network=null}";
    }
}
