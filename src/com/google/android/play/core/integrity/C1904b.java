package com.google.android.play.core.integrity;

import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.b */
/* JADX INFO: loaded from: classes5.dex */
final class C1904b extends bq {

    /* JADX INFO: renamed from: a */
    private String f304a;

    /* JADX INFO: renamed from: b */
    private AbstractC1920y f305b;

    @Override // com.google.android.play.core.integrity.bq
    /* JADX INFO: renamed from: a */
    public final bq mo383a(AbstractC1920y abstractC1920y) {
        this.f305b = abstractC1920y;
        return this;
    }

    @Override // com.google.android.play.core.integrity.bq
    /* JADX INFO: renamed from: b */
    public final bq mo384b(String str) {
        if (str != null) {
            this.f304a = str;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null token");
        return null;
    }

    @Override // com.google.android.play.core.integrity.bq
    /* JADX INFO: renamed from: c */
    public final br mo385c() {
        AbstractC1920y abstractC1920y;
        String str = this.f304a;
        if (str != null && (abstractC1920y = this.f305b) != null) {
            return new br(str, abstractC1920y);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f304a == null) {
            sb.append(" token");
        }
        if (this.f305b == null) {
            sb.append(" integrityDialogWrapper");
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
