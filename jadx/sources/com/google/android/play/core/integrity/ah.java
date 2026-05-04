package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1662q;

/* JADX INFO: loaded from: classes5.dex */
final class ah extends IntegrityTokenResponse {

    /* JADX INFO: renamed from: a */
    private final String f259a;

    /* JADX INFO: renamed from: b */
    private final C1640u f260b;

    ah(String str, C1662q c1662q, PendingIntent pendingIntent) {
        this.f259a = str;
        this.f260b = new C1640u(c1662q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenResponse
    public final String token() {
        return this.f259a;
    }
}
