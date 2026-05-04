package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.integrity.internal.AbstractBinderC1773m;
import com.google.android.play.integrity.internal.AbstractC1756ag;
import com.google.android.play.integrity.internal.AbstractC1764d;
import com.google.android.play.integrity.internal.C1752ac;
import com.google.android.play.integrity.internal.C1777q;
import com.google.android.play.integrity.internal.InterfaceC1784x;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.ad */
/* JADX INFO: loaded from: classes5.dex */
final class C1693ad {

    /* JADX INFO: renamed from: a */
    final C1752ac f459a;

    /* JADX INFO: renamed from: b */
    private final C1777q f460b;

    /* JADX INFO: renamed from: c */
    private final String f461c;

    C1693ad(Context context, C1777q c1777q) {
        this.f461c = context.getPackageName();
        this.f460b = c1777q;
        if (AbstractC1756ag.m452a(context)) {
            this.f459a = new C1752ac(context, c1777q, "IntegrityService", C1694ae.f462a, new InterfaceC1784x() { // from class: com.google.android.play.core.integrity.aa
                @Override // com.google.android.play.integrity.internal.InterfaceC1784x
                /* JADX INFO: renamed from: a */
                public final Object mo387a(IBinder iBinder) {
                    return AbstractBinderC1773m.m469b(iBinder);
                }
            }, null);
        } else {
            c1777q.m471a("Phonesky is not installed.", new Object[0]);
            this.f459a = null;
        }
    }

    /* JADX INFO: renamed from: a */
    static /* bridge */ /* synthetic */ Bundle m391a(C1693ad c1693ad, byte[] bArr, Long l, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", c1693ad.f461c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 2);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        AbstractC1764d.m461b(3, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1764d.m460a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    public final Task m393b(IntegrityTokenRequest integrityTokenRequest) {
        if (this.f459a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, null));
        }
        try {
            byte[] bArrDecode = Base64.decode(integrityTokenRequest.nonce(), 10);
            Long lCloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
            integrityTokenRequest.mo380a();
            this.f460b.m473c("requestIntegrityToken(%s)", integrityTokenRequest);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f459a.m447t(new C1691ab(this, taskCompletionSource, bArrDecode, lCloudProjectNumber, null, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
            return taskCompletionSource.getTask();
        } catch (IllegalArgumentException e) {
            return Tasks.forException(new IntegrityServiceException(-13, e));
        }
    }
}
