package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class al implements StandardIntegrityManager {

    /* JADX INFO: renamed from: a */
    private final ax f323a;

    /* JADX INFO: renamed from: b */
    private final bd f324b;

    public al(ax axVar, bd bdVar) {
        this.f323a = axVar;
        this.f324b = bdVar;
    }

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Task m361a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l) {
        final bd bdVar = this.f324b;
        final long jMo345a = prepareIntegrityTokenRequest.mo345a();
        final long jLongValue = l.longValue();
        return Tasks.forResult(new StandardIntegrityManager.StandardIntegrityTokenProvider() { // from class: com.google.android.play.core.integrity.bc
            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final Task request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return bdVar.m378a(jMo345a, jLongValue, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        return this.f323a.m373d(prepareIntegrityTokenRequest.mo345a()).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.play.core.integrity.ak
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f321a.m361a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
