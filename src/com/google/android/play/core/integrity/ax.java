package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1653h;
import com.google.android.play.integrity.internal.AbstractC1649d;
import com.google.android.play.integrity.internal.C1662q;
import com.google.android.play.integrity.internal.InterfaceC1669x;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
final class ax {

    /* JADX INFO: renamed from: a */
    final com.google.android.play.integrity.internal.ac f285a;

    /* JADX INFO: renamed from: b */
    private final C1662q f286b;

    /* JADX INFO: renamed from: c */
    private final String f287c;

    /* JADX INFO: renamed from: d */
    private final TaskCompletionSource f288d;

    ax(Context context, C1662q c1662q) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f288d = taskCompletionSource;
        this.f287c = context.getPackageName();
        this.f286b = c1662q;
        com.google.android.play.integrity.internal.ac acVar = new com.google.android.play.integrity.internal.ac(context, c1662q, "ExpressIntegrityService", ay.f289a, new InterfaceC1669x() { // from class: com.google.android.play.core.integrity.ap
            @Override // com.google.android.play.integrity.internal.InterfaceC1669x
            /* JADX INFO: renamed from: a */
            public final Object mo292a(IBinder iBinder) {
                return AbstractBinderC1653h.m372b(iBinder);
            }
        }, null);
        this.f285a = acVar;
        acVar.m350c().post(new aq(this, taskCompletionSource, context));
    }

    /* JADX INFO: renamed from: a */
    static /* bridge */ /* synthetic */ Bundle m308a(ax axVar, String str, long j, long j2) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", axVar.f287c);
        bundle.putLong("cloud.prj", j);
        bundle.putString("nonce", str);
        bundle.putLong("warm.up.sid", j2);
        ArrayList arrayList = new ArrayList();
        AbstractC1649d.m366b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1649d.m365a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    static /* bridge */ /* synthetic */ Bundle m309b(ax axVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", axVar.f287c);
        bundle.putLong("cloud.prj", j);
        ArrayList arrayList = new ArrayList();
        AbstractC1649d.m366b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1649d.m365a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: g */
    static /* bridge */ /* synthetic */ boolean m312g(ax axVar) {
        return axVar.f288d.getTask().isSuccessful() && !((Boolean) axVar.f288d.getTask().getResult()).booleanValue();
    }

    /* JADX INFO: renamed from: c */
    public final Task m313c(String str, long j, long j2) {
        this.f286b.m378c("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f285a.m352t(new as(this, taskCompletionSource, str, j, j2, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: d */
    public final Task m314d(long j) {
        this.f286b.m378c("warmUpIntegrityToken(%s)", Long.valueOf(j));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f285a.m352t(new ar(this, taskCompletionSource, j, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
