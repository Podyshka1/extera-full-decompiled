package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.c */
/* JADX INFO: loaded from: classes5.dex */
final class C1784c extends StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private long f344a;

    /* JADX INFO: renamed from: b */
    private byte f345b;

    /* JADX INFO: renamed from: a */
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder m381a(int i) {
        this.f345b = (byte) (this.f345b | 2);
        return this;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest build() {
        AbstractC1785d abstractC1785d = null;
        if (this.f345b == 3) {
            return new C1786e(this.f344a, 0, abstractC1785d);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f345b & 1) == 0) {
            sb.append(" cloudProjectNumber");
        }
        if ((this.f345b & 2) == 0) {
            sb.append(" webViewRequestMode");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.f344a = j;
        this.f345b = (byte) (this.f345b | 1);
        return this;
    }
}
