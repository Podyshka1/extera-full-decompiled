package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.f */
/* JADX INFO: loaded from: classes5.dex */
final class C1623f extends StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private long f306a;

    /* JADX INFO: renamed from: b */
    private byte f307b;

    C1623f() {
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest build() {
        if (this.f307b == 1) {
            return new C1625h(this.f306a, null);
        }
        throw new IllegalStateException("Missing required properties: cloudProjectNumber");
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.f306a = j;
        this.f307b = (byte) 1;
        return this;
    }
}
