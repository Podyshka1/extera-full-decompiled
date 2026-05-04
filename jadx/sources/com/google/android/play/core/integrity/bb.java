package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.C1662q;

/* JADX INFO: loaded from: classes5.dex */
final class bb extends StandardIntegrityManager.StandardIntegrityToken {

    /* JADX INFO: renamed from: a */
    private final String f295a;

    /* JADX INFO: renamed from: b */
    private final C1640u f296b;

    bb(String str, C1662q c1662q, PendingIntent pendingIntent) {
        this.f295a = str;
        this.f296b = new C1640u(c1662q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final String token() {
        return this.f295a;
    }
}
