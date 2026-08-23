package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class al implements StandardIntegrityManager {

    /* JADX INFO: renamed from: a */
    private final ax f264a;

    /* JADX INFO: renamed from: b */
    private final bd f265b;

    al(ax axVar, bd bdVar) {
        this.f264a = axVar;
        this.f265b = bdVar;
    }

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Task m302a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l) {
        final bd bdVar = this.f265b;
        final long jMo286a = prepareIntegrityTokenRequest.mo286a();
        final long jLongValue = l.longValue();
        return Tasks.forResult(new StandardIntegrityManager.StandardIntegrityTokenProvider() { // from class: com.google.android.play.core.integrity.bc
            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final Task request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return bdVar.m319a(jMo286a, jLongValue, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        return this.f264a.m314d(prepareIntegrityTokenRequest.mo286a()).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.play.core.integrity.ak
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f262a.m302a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
