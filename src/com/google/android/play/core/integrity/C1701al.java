package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.al */
/* JADX INFO: loaded from: classes5.dex */
final class C1701al implements StandardIntegrityManager {

    /* JADX INFO: renamed from: a */
    private final C1713ax f470a;

    /* JADX INFO: renamed from: b */
    private final C1720bd f471b;

    C1701al(C1713ax c1713ax, C1720bd c1720bd) {
        this.f470a = c1713ax;
        this.f471b = c1720bd;
    }

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Task m397a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l) {
        final C1720bd c1720bd = this.f471b;
        final long jMo381a = prepareIntegrityTokenRequest.mo381a();
        final long jLongValue = l.longValue();
        return Tasks.forResult(new StandardIntegrityManager.StandardIntegrityTokenProvider() { // from class: com.google.android.play.core.integrity.bc
            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final Task request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return c1720bd.m414a(jMo381a, jLongValue, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        return this.f470a.m409d(prepareIntegrityTokenRequest.mo381a()).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.play.core.integrity.ak
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f468a.m397a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
