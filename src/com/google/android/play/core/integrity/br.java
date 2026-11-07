package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class br extends StandardIntegrityManager.StandardIntegrityToken {

    /* JADX INFO: renamed from: a */
    private final String f338a;

    /* JADX INFO: renamed from: b */
    private final AbstractC1920y f339b;

    public br(String str, AbstractC1920y abstractC1920y) {
        this.f338a = str;
        this.f339b = abstractC1920y;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final String token() {
        return this.f338a;
    }
}
