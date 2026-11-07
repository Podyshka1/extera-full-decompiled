package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.c */
/* JADX INFO: loaded from: classes5.dex */
final class C1905c extends StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private long f345a;

    /* JADX INFO: renamed from: b */
    private byte f346b;

    /* JADX INFO: renamed from: a */
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder m405a(int i) {
        this.f346b = (byte) (this.f346b | 2);
        return this;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest build() {
        AbstractC1906d abstractC1906d = null;
        if (this.f346b == 3) {
            return new C1907e(this.f345a, 0, abstractC1906d);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f346b & 1) == 0) {
            sb.append(" cloudProjectNumber");
        }
        if ((this.f346b & 2) == 0) {
            sb.append(" webViewRequestMode");
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.f345a = j;
        this.f346b = (byte) (this.f346b | 1);
        return this;
    }
}
