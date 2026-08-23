package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class bd {

    /* JADX INFO: renamed from: a */
    private final ax f359a;

    public bd(ax axVar) {
        this.f359a = axVar;
    }

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Task m378a(long j, long j2, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.f359a.m372c(standardIntegrityTokenRequest.mo346a(), j, j2);
    }
}
