package com.google.android.play.core.integrity;

import android.net.Network;
import com.google.android.play.core.integrity.IntegrityTokenRequest;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.c */
/* JADX INFO: loaded from: classes5.dex */
final class C1673c extends IntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private String f361a;

    /* JADX INFO: renamed from: b */
    private Long f362b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest build() {
        String str = this.f361a;
        Network network = null;
        Object[] objArr = 0;
        if (str != null) {
            return new C1676e(str, this.f362b, network, objArr == true ? 1 : 0);
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Missing required properties: nonce");
        return null;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.f362b = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setNonce(String str) {
        if (str != null) {
            this.f361a = str;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m179m("Null nonce");
        return null;
    }
}
