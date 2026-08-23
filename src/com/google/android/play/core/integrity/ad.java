package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.integrity.internal.AbstractBinderC1712m;
import com.google.android.play.integrity.internal.AbstractC1703d;
import com.google.android.play.integrity.internal.C1716q;
import com.google.android.play.integrity.internal.InterfaceC1723x;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
final class ad {

    /* JADX INFO: renamed from: a */
    final com.google.android.play.integrity.internal.ac f312a;

    /* JADX INFO: renamed from: b */
    private final C1716q f313b;

    /* JADX INFO: renamed from: c */
    private final String f314c;

    public ad(Context context, C1716q c1716q) {
        this.f314c = context.getPackageName();
        this.f313b = c1716q;
        if (com.google.android.play.integrity.internal.ag.m416a(context)) {
            this.f312a = new com.google.android.play.integrity.internal.ac(context, c1716q, "IntegrityService", ae.f315a, new InterfaceC1723x() { // from class: com.google.android.play.core.integrity.aa
                @Override // com.google.android.play.integrity.internal.InterfaceC1723x
                /* JADX INFO: renamed from: a */
                public final Object mo351a(IBinder iBinder) {
                    return AbstractBinderC1712m.m433b(iBinder);
                }
            }, null);
        } else {
            c1716q.m435a("Phonesky is not installed.", new Object[0]);
            this.f312a = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public static /* bridge */ /* synthetic */ Bundle m355a(ad adVar, byte[] bArr, Long l, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", adVar.f314c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 2);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        AbstractC1703d.m425b(3, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1703d.m424a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    public final Task m357b(IntegrityTokenRequest integrityTokenRequest) {
        if (this.f312a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, null));
        }
        try {
            byte[] bArrDecode = Base64.decode(integrityTokenRequest.nonce(), 10);
            Long lCloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
            integrityTokenRequest.mo344a();
            this.f313b.m437c("requestIntegrityToken(%s)", integrityTokenRequest);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f312a.m411t(new ab(this, taskCompletionSource, bArrDecode, lCloudProjectNumber, null, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
            return taskCompletionSource.getTask();
        } catch (IllegalArgumentException e) {
            return Tasks.forException(new IntegrityServiceException(-13, e));
        }
    }
}
