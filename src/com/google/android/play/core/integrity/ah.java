package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1716q;

/* JADX INFO: loaded from: classes5.dex */
final class ah extends IntegrityTokenResponse {

    /* JADX INFO: renamed from: a */
    private final String f318a;

    /* JADX INFO: renamed from: b */
    private final C1694u f319b;

    public ah(String str, C1716q c1716q, PendingIntent pendingIntent) {
        this.f318a = str;
        this.f319b = new C1694u(c1716q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenResponse
    public final String token() {
        return this.f318a;
    }
}
