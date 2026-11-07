package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.Set;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.f */
/* JADX INFO: loaded from: classes5.dex */
final class C1787f extends StandardIntegrityManager.StandardIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private String f347a;

    /* JADX INFO: renamed from: b */
    private Set f348b;

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest build() {
        Set set = this.f348b;
        AbstractC1788g abstractC1788g = null;
        if (set != null) {
            return new C1789h(this.f347a, set, abstractC1788g);
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties: verdictOptOut");
        return null;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setRequestHash(String str) {
        this.f347a = str;
        return this;
    }

    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setVerdictOptOut(Set<Integer> set) {
        if (set != null) {
            this.f348b = set;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null verdictOptOut");
        return null;
    }
}
