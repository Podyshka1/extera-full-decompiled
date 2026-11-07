package com.google.android.play.core.integrity;

import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.b */
/* JADX INFO: loaded from: classes5.dex */
final class C1783b extends bq {

    /* JADX INFO: renamed from: a */
    private String f303a;

    /* JADX INFO: renamed from: b */
    private AbstractC1799y f304b;

    @Override // com.google.android.play.core.integrity.bq
    /* JADX INFO: renamed from: a */
    public final bq mo359a(AbstractC1799y abstractC1799y) {
        this.f304b = abstractC1799y;
        return this;
    }

    @Override // com.google.android.play.core.integrity.bq
    /* JADX INFO: renamed from: b */
    public final bq mo360b(String str) {
        if (str != null) {
            this.f303a = str;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null token");
        return null;
    }

    @Override // com.google.android.play.core.integrity.bq
    /* JADX INFO: renamed from: c */
    public final br mo361c() {
        AbstractC1799y abstractC1799y;
        String str = this.f303a;
        if (str != null && (abstractC1799y = this.f304b) != null) {
            return new br(str, abstractC1799y);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f303a == null) {
            sb.append(" token");
        }
        if (this.f304b == null) {
            sb.append(" integrityDialogWrapper");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
