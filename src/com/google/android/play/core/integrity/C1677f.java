package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.f */
/* JADX INFO: loaded from: classes5.dex */
final class C1677f extends StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a */
    private long f365a;

    /* JADX INFO: renamed from: b */
    private byte f366b;

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest build() {
        if (this.f366b == 1) {
            return new C1679h(this.f365a, null);
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Missing required properties: cloudProjectNumber");
        return null;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setCloudProjectNumber(long j) {
        this.f365a = j;
        this.f366b = (byte) 1;
        return this;
    }
}
