package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class br extends StandardIntegrityManager.StandardIntegrityToken {

    /* JADX INFO: renamed from: a */
    private final String f337a;

    /* JADX INFO: renamed from: b */
    private final AbstractC1799y f338b;

    public br(String str, AbstractC1799y abstractC1799y) {
        this.f337a = str;
        this.f338b = abstractC1799y;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final String token() {
        return this.f337a;
    }
}
