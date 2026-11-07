package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.Set;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.f */
/* JADX INFO: loaded from: classes5.dex */
final class C1908f extends StandardIntegrityManager.StandardIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private String f348a;

    /* JADX INFO: renamed from: b */
    private Set f349b;

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest build() {
        Set set = this.f349b;
        AbstractC1909g abstractC1909g = null;
        if (set != null) {
            return new C1910h(this.f348a, set, abstractC1909g);
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties: verdictOptOut");
        return null;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setRequestHash(String str) {
        this.f348a = str;
        return this;
    }

    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setVerdictOptOut(Set<Integer> set) {
        if (set != null) {
            this.f349b = set;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null verdictOptOut");
        return null;
    }
}
