package com.google.android.play.core.integrity;

import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC1778r;
import com.google.android.play.integrity.internal.C1753ad;
import com.google.android.play.integrity.internal.InterfaceC1774n;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.ab */
/* JADX INFO: loaded from: classes5.dex */
final class C1691ab extends AbstractRunnableC1778r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ byte[] f451a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ Long f452b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ TaskCompletionSource f453c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ IntegrityTokenRequest f454d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ C1693ad f455e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1691ab(C1693ad c1693ad, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, Parcelable parcelable, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.f455e = c1693ad;
        this.f451a = bArr;
        this.f452b = l;
        this.f453c = taskCompletionSource2;
        this.f454d = integrityTokenRequest;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: a */
    public final void mo388a(Exception exc) {
        if (exc instanceof C1753ad) {
            super.mo388a(new IntegrityServiceException(-9, exc));
        } else {
            super.mo388a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: b */
    protected final void mo389b() {
        try {
            ((InterfaceC1774n) this.f455e.f459a.m446e()).mo468c(C1693ad.m391a(this.f455e, this.f451a, this.f452b, null), new BinderC1692ac(this.f455e, this.f453c));
        } catch (RemoteException e) {
            this.f455e.f460b.m472b(e, "requestIntegrityToken(%s)", this.f454d);
            this.f453c.trySetException(new IntegrityServiceException(-100, e));
        }
    }
}
