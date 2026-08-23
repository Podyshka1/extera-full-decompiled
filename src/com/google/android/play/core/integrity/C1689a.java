package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1777q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.a */
/* JADX INFO: loaded from: classes5.dex */
final class C1689a extends AbstractC1696ag {

    /* JADX INFO: renamed from: a */
    private String f447a;

    /* JADX INFO: renamed from: b */
    private C1777q f448b;

    /* JADX INFO: renamed from: c */
    private PendingIntent f449c;

    C1689a() {
    }

    @Override // com.google.android.play.core.integrity.AbstractC1696ag
    /* JADX INFO: renamed from: a */
    final AbstractC1696ag mo383a(PendingIntent pendingIntent) {
        this.f449c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC1696ag
    /* JADX INFO: renamed from: b */
    final AbstractC1696ag mo384b(C1777q c1777q) {
        if (c1777q == null) {
            throw new NullPointerException("Null logger");
        }
        this.f448b = c1777q;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC1696ag
    /* JADX INFO: renamed from: c */
    final AbstractC1696ag mo385c(String str) {
        this.f447a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC1696ag
    /* JADX INFO: renamed from: d */
    final C1697ah mo386d() {
        C1777q c1777q;
        String str = this.f447a;
        if (str != null && (c1777q = this.f448b) != null) {
            return new C1697ah(str, c1777q, this.f449c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f447a == null) {
            sb.append(" token");
        }
        if (this.f448b == null) {
            sb.append(" logger");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
