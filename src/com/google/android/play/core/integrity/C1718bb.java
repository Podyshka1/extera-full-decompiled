package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.C1777q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.bb */
/* JADX INFO: loaded from: classes5.dex */
final class C1718bb extends StandardIntegrityManager.StandardIntegrityToken {

    /* JADX INFO: renamed from: a */
    private final String f501a;

    /* JADX INFO: renamed from: b */
    private final C1743u f502b;

    C1718bb(String str, C1777q c1777q, PendingIntent pendingIntent) {
        this.f501a = str;
        this.f502b = new C1743u(c1777q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final String token() {
        return this.f501a;
    }
}
