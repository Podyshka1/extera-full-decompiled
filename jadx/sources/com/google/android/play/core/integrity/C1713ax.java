package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1768h;
import com.google.android.play.integrity.internal.AbstractC1764d;
import com.google.android.play.integrity.internal.C1752ac;
import com.google.android.play.integrity.internal.C1777q;
import com.google.android.play.integrity.internal.InterfaceC1784x;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.ax */
/* JADX INFO: loaded from: classes5.dex */
final class C1713ax {

    /* JADX INFO: renamed from: a */
    final C1752ac f491a;

    /* JADX INFO: renamed from: b */
    private final C1777q f492b;

    /* JADX INFO: renamed from: c */
    private final String f493c;

    /* JADX INFO: renamed from: d */
    private final TaskCompletionSource f494d;

    C1713ax(Context context, C1777q c1777q) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f494d = taskCompletionSource;
        this.f493c = context.getPackageName();
        this.f492b = c1777q;
        C1752ac c1752ac = new C1752ac(context, c1777q, "ExpressIntegrityService", C1714ay.f495a, new InterfaceC1784x() { // from class: com.google.android.play.core.integrity.ap
            @Override // com.google.android.play.integrity.internal.InterfaceC1784x
            /* JADX INFO: renamed from: a */
            public final Object mo387a(IBinder iBinder) {
                return AbstractBinderC1768h.m467b(iBinder);
            }
        }, null);
        this.f491a = c1752ac;
        c1752ac.m445c().post(new C1706aq(this, taskCompletionSource, context));
    }

    /* JADX INFO: renamed from: a */
    static /* bridge */ /* synthetic */ Bundle m403a(C1713ax c1713ax, String str, long j, long j2) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", c1713ax.f493c);
        bundle.putLong("cloud.prj", j);
        bundle.putString("nonce", str);
        bundle.putLong("warm.up.sid", j2);
        ArrayList arrayList = new ArrayList();
        AbstractC1764d.m461b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1764d.m460a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    static /* bridge */ /* synthetic */ Bundle m404b(C1713ax c1713ax, long j) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", c1713ax.f493c);
        bundle.putLong("cloud.prj", j);
        ArrayList arrayList = new ArrayList();
        AbstractC1764d.m461b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1764d.m460a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: g */
    static /* bridge */ /* synthetic */ boolean m407g(C1713ax c1713ax) {
        return c1713ax.f494d.getTask().isSuccessful() && !((Boolean) c1713ax.f494d.getTask().getResult()).booleanValue();
    }

    /* JADX INFO: renamed from: c */
    public final Task m408c(String str, long j, long j2) {
        this.f492b.m473c("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f491a.m447t(new C1708as(this, taskCompletionSource, str, j, j2, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: d */
    public final Task m409d(long j) {
        this.f492b.m473c("warmUpIntegrityToken(%s)", Long.valueOf(j));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f491a.m447t(new C1707ar(this, taskCompletionSource, j, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
