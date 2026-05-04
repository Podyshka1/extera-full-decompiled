package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1663r;
import com.google.android.play.integrity.internal.InterfaceC1659n;

/* JADX INFO: loaded from: classes5.dex */
final class ab extends AbstractRunnableC1663r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ byte[] f245a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ Long f246b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ TaskCompletionSource f247c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ IntegrityTokenRequest f248d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ ad f249e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ab(ad adVar, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, Parcelable parcelable, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.f249e = adVar;
        this.f245a = bArr;
        this.f246b = l;
        this.f247c = taskCompletionSource2;
        this.f248d = integrityTokenRequest;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: a */
    public final void mo293a(Exception exc) {
        if (exc instanceof com.google.android.play.integrity.internal.ad) {
            super.mo293a(new IntegrityServiceException(-9, exc));
        } else {
            super.mo293a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: b */
    protected final void mo294b() {
        try {
            ((InterfaceC1659n) this.f249e.f253a.m351e()).mo373c(ad.m296a(this.f249e, this.f245a, this.f246b, null), new ac(this.f249e, this.f247c));
        } catch (RemoteException e) {
            this.f249e.f254b.m377b(e, "requestIntegrityToken(%s)", this.f248d);
            this.f247c.trySetException(new IntegrityServiceException(-100, e));
        }
    }
}
