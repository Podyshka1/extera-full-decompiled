package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1716q;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.a */
/* JADX INFO: loaded from: classes5.dex */
final class C1671a extends ag {

    /* JADX INFO: renamed from: a */
    private String f300a;

    /* JADX INFO: renamed from: b */
    private C1716q f301b;

    /* JADX INFO: renamed from: c */
    private PendingIntent f302c;

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: a */
    public final ag mo347a(PendingIntent pendingIntent) {
        this.f302c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: b */
    public final ag mo348b(C1716q c1716q) {
        if (c1716q != null) {
            this.f301b = c1716q;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m179m("Null logger");
        return null;
    }

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: c */
    public final ag mo349c(String str) {
        this.f300a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ag
    /* JADX INFO: renamed from: d */
    public final ah mo350d() {
        C1716q c1716q;
        String str = this.f300a;
        if (str != null && (c1716q = this.f301b) != null) {
            return new ah(str, c1716q, this.f302c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f300a == null) {
            sb.append(" token");
        }
        if (this.f301b == null) {
            sb.append(" logger");
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
