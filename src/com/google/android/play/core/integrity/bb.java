package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.C1716q;

/* JADX INFO: loaded from: classes5.dex */
final class bb extends StandardIntegrityManager.StandardIntegrityToken {

    /* JADX INFO: renamed from: a */
    private final String f354a;

    /* JADX INFO: renamed from: b */
    private final C1694u f355b;

    public bb(String str, C1716q c1716q, PendingIntent pendingIntent) {
        this.f354a = str;
        this.f355b = new C1694u(c1716q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final String token() {
        return this.f354a;
    }
}
