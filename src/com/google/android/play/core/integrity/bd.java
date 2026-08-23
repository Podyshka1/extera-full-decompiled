package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class bd {

    /* JADX INFO: renamed from: a */
    private final ax f300a;

    bd(ax axVar) {
        this.f300a = axVar;
    }

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Task m319a(long j, long j2, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.f300a.m313c(standardIntegrityTokenRequest.mo287a(), j, j2);
    }
}
