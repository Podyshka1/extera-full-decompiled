package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.f */
/* JADX INFO: loaded from: classes5.dex */
final class C1726f extends StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private long f512a;

    /* JADX INFO: renamed from: b */
    private byte f513b;

    C1726f() {
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest build() {
        if (this.f513b == 1) {
            return new C1728h(this.f512a, null);
        }
        throw new IllegalStateException("Missing required properties: cloudProjectNumber");
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.f512a = j;
        this.f513b = (byte) 1;
        return this;
    }
}
