package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.bd */
/* JADX INFO: loaded from: classes5.dex */
final class C1720bd {

    /* JADX INFO: renamed from: a */
    private final C1713ax f506a;

    C1720bd(C1713ax c1713ax) {
        this.f506a = c1713ax;
    }

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Task m414a(long j, long j2, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.f506a.m408c(standardIntegrityTokenRequest.mo382a(), j, j2);
    }
}
