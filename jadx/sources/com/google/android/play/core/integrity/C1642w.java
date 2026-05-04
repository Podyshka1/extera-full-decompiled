package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.w */
/* JADX INFO: loaded from: classes5.dex */
final class C1642w implements IntegrityManager {

    /* JADX INFO: renamed from: a */
    private final ad f331a;

    C1642w(ad adVar) {
        this.f331a = adVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.f331a.m298b(integrityTokenRequest);
    }
}
