package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1717r;
import com.google.android.play.integrity.internal.InterfaceC1713n;

/* JADX INFO: loaded from: classes5.dex */
final class ab extends AbstractRunnableC1717r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ byte[] f304a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ Long f305b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ TaskCompletionSource f306c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ IntegrityTokenRequest f307d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ ad f308e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab(ad adVar, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, Parcelable parcelable, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.f308e = adVar;
        this.f304a = bArr;
        this.f305b = l;
        this.f306c = taskCompletionSource2;
        this.f307d = integrityTokenRequest;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: a */
    public final void mo352a(Exception exc) {
        if (exc instanceof com.google.android.play.integrity.internal.ad) {
            super.mo352a(new IntegrityServiceException(-9, exc));
        } else {
            super.mo352a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: b */
    public final void mo353b() {
        try {
            ((InterfaceC1713n) this.f308e.f312a.m410e()).mo432c(ad.m355a(this.f308e, this.f304a, this.f305b, null), new ac(this.f308e, this.f306c));
        } catch (RemoteException e) {
            this.f308e.f313b.m436b(e, "requestIntegrityToken(%s)", this.f307d);
            this.f306c.trySetException(new IntegrityServiceException(-100, e));
        }
    }
}
