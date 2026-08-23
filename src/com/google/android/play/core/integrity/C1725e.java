package com.google.android.play.core.integrity;

import android.net.Network;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.e */
/* JADX INFO: loaded from: classes5.dex */
final class C1725e extends IntegrityTokenRequest {

    /* JADX INFO: renamed from: a */
    private final String f510a;

    /* JADX INFO: renamed from: b */
    private final Long f511b;

    /* synthetic */ C1725e(String str, Long l, Network network, C1724d c1724d) {
        this.f510a = str;
        this.f511b = l;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    /* JADX INFO: renamed from: a */
    public final Network mo380a() {
        return null;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final Long cloudProjectNumber() {
        return this.f511b;
    }

    public final boolean equals(Object obj) {
        Long l;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityTokenRequest) {
            IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
            if (this.f510a.equals(integrityTokenRequest.nonce()) && ((l = this.f511b) != null ? l.equals(integrityTokenRequest.cloudProjectNumber()) : integrityTokenRequest.cloudProjectNumber() == null)) {
                integrityTokenRequest.mo380a();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f510a.hashCode() ^ 1000003;
        Long l = this.f511b;
        return ((iHashCode * 1000003) ^ (l == null ? 0 : l.hashCode())) * 1000003;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final String nonce() {
        return this.f510a;
    }

    public final String toString() {
        return "IntegrityTokenRequest{nonce=" + this.f510a + ", cloudProjectNumber=" + this.f511b + ", network=null}";
    }
}
