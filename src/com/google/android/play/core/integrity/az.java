package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: loaded from: classes5.dex */
final class az implements StandardIntegrityManager {

    /* JADX INFO: renamed from: a */
    private final bn f302a;

    /* JADX INFO: renamed from: b */
    private final bt f303b;

    public az(bn bnVar, bt btVar) {
        this.f302a = bnVar;
        this.f303b = btVar;
    }

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Task m382a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l) {
        final long jMo376b = prepareIntegrityTokenRequest.mo376b();
        final long jLongValue = l.longValue();
        prepareIntegrityTokenRequest.mo375a();
        final bt btVar = this.f303b;
        final int i = 0;
        return Tasks.forResult(new StandardIntegrityManager.StandardIntegrityTokenProvider(jMo376b, jLongValue, i) { // from class: com.google.android.play.core.integrity.bs

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ long f341b;

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ long f342c;

            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final Task request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return this.f340a.m404a(this.f341b, this.f342c, 0, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        long jMo376b = prepareIntegrityTokenRequest.mo376b();
        prepareIntegrityTokenRequest.mo375a();
        return this.f302a.m403e(jMo376b, 0).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.play.core.integrity.ay
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f300a.m382a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
