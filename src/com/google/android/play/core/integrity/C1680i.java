package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.i */
/* JADX INFO: loaded from: classes5.dex */
final class C1680i extends StandardIntegrityManager.StandardIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private String f368a;

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest build() {
        return new C1682k(this.f368a, null);
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setRequestHash(String str) {
        this.f368a = str;
        return this;
    }
}
