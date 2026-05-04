package com.google.android.play.core.integrity;

import android.net.Network;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1622e extends IntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final String f304a;

    /* JADX INFO: renamed from: b */
    private final Long f305b;

    /* synthetic */ C1622e(String str, Long l, Network network, C1621d c1621d) {
        this.f304a = str;
        this.f305b = l;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final Network mo285a() {
        return null;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final Long cloudProjectNumber() {
        return this.f305b;
    }

    public final boolean equals(Object obj) {
        Long l;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityTokenRequest) {
            IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
            if (this.f304a.equals(integrityTokenRequest.nonce()) && ((l = this.f305b) != null ? l.equals(integrityTokenRequest.cloudProjectNumber()) : integrityTokenRequest.cloudProjectNumber() == null)) {
                integrityTokenRequest.mo285a();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f304a.hashCode() ^ 1000003;
        Long l = this.f305b;
        return ((iHashCode * 1000003) ^ (l == null ? 0 : l.hashCode())) * 1000003;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final String nonce() {
        return this.f304a;
    }

    public final String toString() {
        return "IntegrityTokenRequest{nonce=" + this.f304a + ", cloudProjectNumber=" + this.f305b + ", network=null}";
    }
}
