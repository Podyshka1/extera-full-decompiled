package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.w */
/* JADX INFO: loaded from: classes5.dex */
final class C1745w implements IntegrityManager {

    /* JADX INFO: renamed from: a */
    private final C1693ad f537a;

    C1745w(C1693ad c1693ad) {
        this.f537a = c1693ad;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.f537a.m393b(integrityTokenRequest);
    }
}
