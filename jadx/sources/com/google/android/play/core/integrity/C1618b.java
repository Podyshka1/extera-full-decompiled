package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1662q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.b */
/* JADX INFO: loaded from: classes5.dex */
final class C1618b extends ba {

    /* JADX INFO: renamed from: a */
    private String f292a;

    /* JADX INFO: renamed from: b */
    private C1662q f293b;

    /* JADX INFO: renamed from: c */
    private PendingIntent f294c;

    C1618b() {
    }

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: a */
    final ba mo315a(PendingIntent pendingIntent) {
        this.f294c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: b */
    final ba mo316b(C1662q c1662q) {
        if (c1662q == null) {
            throw new NullPointerException("Null logger");
        }
        this.f293b = c1662q;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: c */
    final ba mo317c(String str) {
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.f292a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: d */
    final bb mo318d() {
        C1662q c1662q;
        String str = this.f292a;
        if (str != null && (c1662q = this.f293b) != null) {
            return new bb(str, c1662q, this.f294c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f292a == null) {
            sb.append(" token");
        }
        if (this.f293b == null) {
            sb.append(" logger");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
