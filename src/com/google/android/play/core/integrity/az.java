package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class az implements StandardIntegrityManager {

    /* JADX INFO: renamed from: a */
    private final bn f301a;

    /* JADX INFO: renamed from: b */
    private final bt f302b;

    public az(bn bnVar, bt btVar) {
        this.f301a = bnVar;
        this.f302b = btVar;
    }

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Task m358a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l) {
        final long jMo352b = prepareIntegrityTokenRequest.mo352b();
        final long jLongValue = l.longValue();
        prepareIntegrityTokenRequest.mo351a();
        final bt btVar = this.f302b;
        final int i = 0;
        return Tasks.forResult(new StandardIntegrityManager.StandardIntegrityTokenProvider(jMo352b, jLongValue, i) { // from class: com.google.android.play.core.integrity.bs

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ long f340b;

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ long f341c;

            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final Task request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return this.f339a.m380a(this.f340b, this.f341c, 0, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        long jMo352b = prepareIntegrityTokenRequest.mo352b();
        prepareIntegrityTokenRequest.mo351a();
        return this.f301a.m379e(jMo352b, 0).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.play.core.integrity.ay
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f299a.m358a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
