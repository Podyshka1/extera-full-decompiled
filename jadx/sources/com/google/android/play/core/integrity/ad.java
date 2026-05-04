package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.integrity.internal.AbstractBinderC1658m;
import com.google.android.play.integrity.internal.AbstractC1649d;
import com.google.android.play.integrity.internal.C1662q;
import com.google.android.play.integrity.internal.InterfaceC1669x;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
final class ad {

    /* JADX INFO: renamed from: a */
    final com.google.android.play.integrity.internal.ac f253a;

    /* JADX INFO: renamed from: b */
    private final C1662q f254b;

    /* JADX INFO: renamed from: c */
    private final String f255c;

    ad(Context context, C1662q c1662q) {
        this.f255c = context.getPackageName();
        this.f254b = c1662q;
        if (com.google.android.play.integrity.internal.ag.m357a(context)) {
            this.f253a = new com.google.android.play.integrity.internal.ac(context, c1662q, "IntegrityService", ae.f256a, new InterfaceC1669x() { // from class: com.google.android.play.core.integrity.aa
                @Override // com.google.android.play.integrity.internal.InterfaceC1669x
                /* JADX INFO: renamed from: a */
                public final Object mo292a(IBinder iBinder) {
                    return AbstractBinderC1658m.m374b(iBinder);
                }
            }, null);
        } else {
            c1662q.m376a("Phonesky is not installed.", new Object[0]);
            this.f253a = null;
        }
    }

    /* JADX INFO: renamed from: a */
    static /* bridge */ /* synthetic */ Bundle m296a(ad adVar, byte[] bArr, Long l, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", adVar.f255c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 2);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        AbstractC1649d.m366b(3, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1649d.m365a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    public final Task m298b(IntegrityTokenRequest integrityTokenRequest) {
        if (this.f253a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, null));
        }
        try {
            byte[] bArrDecode = Base64.decode(integrityTokenRequest.nonce(), 10);
            Long lCloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
            integrityTokenRequest.mo285a();
            this.f254b.m378c("requestIntegrityToken(%s)", integrityTokenRequest);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f253a.m352t(new ab(this, taskCompletionSource, bArrDecode, lCloudProjectNumber, null, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
            return taskCompletionSource.getTask();
        } catch (IllegalArgumentException e) {
            return Tasks.forException(new IntegrityServiceException(-13, e));
        }
    }
}
