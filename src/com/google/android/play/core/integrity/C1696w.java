package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.w */
/* JADX INFO: loaded from: classes5.dex */
final class C1696w implements IntegrityManager {

    /* JADX INFO: renamed from: a */
    private final ad f390a;

    public C1696w(ad adVar) {
        this.f390a = adVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.f390a.m357b(integrityTokenRequest);
    }
}
