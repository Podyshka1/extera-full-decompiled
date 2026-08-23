package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.IntegrityTokenRequest;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.c */
/* JADX INFO: loaded from: classes5.dex */
final class C1619c extends IntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private String f302a;

    /* JADX INFO: renamed from: b */
    private Long f303b;

    C1619c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest build() {
        String str = this.f302a;
        if (str != null) {
            return new C1622e(str, this.f303b, null, 0 == true ? 1 : 0);
        }
        throw new IllegalStateException("Missing required properties: nonce");
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.f303b = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setNonce(String str) {
        if (str == null) {
            throw new NullPointerException("Null nonce");
        }
        this.f302a = str;
        return this;
    }
}
