package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C1716q;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.b */
/* JADX INFO: loaded from: classes5.dex */
final class C1672b extends ba {

    /* JADX INFO: renamed from: a */
    private String f351a;

    /* JADX INFO: renamed from: b */
    private C1716q f352b;

    /* JADX INFO: renamed from: c */
    private PendingIntent f353c;

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: a */
    public final ba mo374a(PendingIntent pendingIntent) {
        this.f353c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: b */
    public final ba mo375b(C1716q c1716q) {
        if (c1716q != null) {
            this.f352b = c1716q;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m179m("Null logger");
        return null;
    }

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: c */
    public final ba mo376c(String str) {
        if (str != null) {
            this.f351a = str;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m179m("Null token");
        return null;
    }

    @Override // com.google.android.play.core.integrity.ba
    /* JADX INFO: renamed from: d */
    public final bb mo377d() {
        C1716q c1716q;
        String str = this.f351a;
        if (str != null && (c1716q = this.f352b) != null) {
            return new bb(str, c1716q, this.f353c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f351a == null) {
            sb.append(" token");
        }
        if (this.f352b == null) {
            sb.append(" logger");
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
