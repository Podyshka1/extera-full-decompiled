package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1777q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.ah */
/* JADX INFO: loaded from: classes5.dex */
final class C1697ah extends IntegrityTokenResponse {

    /* JADX INFO: renamed from: a */
    private final String f465a;

    /* JADX INFO: renamed from: b */
    private final C1743u f466b;

    C1697ah(String str, C1777q c1777q, PendingIntent pendingIntent) {
        this.f465a = str;
        this.f466b = new C1743u(c1777q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenResponse
    public final String token() {
        return this.f465a;
    }
}
