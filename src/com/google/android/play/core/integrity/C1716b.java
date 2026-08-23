package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1777q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.b */
/* JADX INFO: loaded from: classes5.dex */
final class C1716b extends AbstractC1717ba {

    /* JADX INFO: renamed from: a */
    private String f498a;

    /* JADX INFO: renamed from: b */
    private C1777q f499b;

    /* JADX INFO: renamed from: c */
    private PendingIntent f500c;

    C1716b() {
    }

    @Override // com.google.android.play.core.integrity.AbstractC1717ba
    /* JADX INFO: renamed from: a */
    final AbstractC1717ba mo410a(PendingIntent pendingIntent) {
        this.f500c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC1717ba
    /* JADX INFO: renamed from: b */
    final AbstractC1717ba mo411b(C1777q c1777q) {
        if (c1777q == null) {
            throw new NullPointerException("Null logger");
        }
        this.f499b = c1777q;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC1717ba
    /* JADX INFO: renamed from: c */
    final AbstractC1717ba mo412c(String str) {
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.f498a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC1717ba
    /* JADX INFO: renamed from: d */
    final C1718bb mo413d() {
        C1777q c1777q;
        String str = this.f498a;
        if (str != null && (c1777q = this.f499b) != null) {
            return new C1718bb(str, c1777q, this.f500c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f498a == null) {
            sb.append(" token");
        }
        if (this.f499b == null) {
            sb.append(" logger");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
