package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1662q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.a */
/* JADX INFO: loaded from: classes5.dex */
final class C1617a extends ag {

    /* JADX INFO: renamed from: a */
    private String f241a;

    /* JADX INFO: renamed from: b */
    private C1662q f242b;

    /* JADX INFO: renamed from: c */
    private PendingIntent f243c;

    C1617a() {
    }

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: a */
    final ag mo288a(PendingIntent pendingIntent) {
        this.f243c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: b */
    final ag mo289b(C1662q c1662q) {
        if (c1662q == null) {
            throw new NullPointerException("Null logger");
        }
        this.f242b = c1662q;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: c */
    final ag mo290c(String str) {
        this.f241a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: d */
    final ah mo291d() {
        C1662q c1662q;
        String str = this.f241a;
        if (str != null && (c1662q = this.f242b) != null) {
            return new ah(str, c1662q, this.f243c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f241a == null) {
            sb.append(" token");
        }
        if (this.f242b == null) {
            sb.append(" logger");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
