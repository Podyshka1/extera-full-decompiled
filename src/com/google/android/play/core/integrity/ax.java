package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1707h;
import com.google.android.play.integrity.internal.AbstractC1703d;
import com.google.android.play.integrity.internal.C1716q;
import com.google.android.play.integrity.internal.InterfaceC1723x;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
final class ax {

    /* JADX INFO: renamed from: a */
    final com.google.android.play.integrity.internal.ac f344a;

    /* JADX INFO: renamed from: b */
    private final C1716q f345b;

    /* JADX INFO: renamed from: c */
    private final String f346c;

    /* JADX INFO: renamed from: d */
    private final TaskCompletionSource f347d;

    public ax(Context context, C1716q c1716q) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f347d = taskCompletionSource;
        this.f346c = context.getPackageName();
        this.f345b = c1716q;
        com.google.android.play.integrity.internal.ac acVar = new com.google.android.play.integrity.internal.ac(context, c1716q, "ExpressIntegrityService", ay.f348a, new InterfaceC1723x() { // from class: com.google.android.play.core.integrity.ap
            @Override // com.google.android.play.integrity.internal.InterfaceC1723x
            /* JADX INFO: renamed from: a */
            public final Object mo351a(IBinder iBinder) {
                return AbstractBinderC1707h.m431b(iBinder);
            }
        }, null);
        this.f344a = acVar;
        acVar.m409c().post(new aq(this, taskCompletionSource, context));
    }

    /* JADX INFO: renamed from: a */
    public static /* bridge */ /* synthetic */ Bundle m367a(ax axVar, String str, long j, long j2) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", axVar.f346c);
        bundle.putLong("cloud.prj", j);
        bundle.putString("nonce", str);
        bundle.putLong("warm.up.sid", j2);
        ArrayList arrayList = new ArrayList();
        AbstractC1703d.m425b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1703d.m424a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    public static /* bridge */ /* synthetic */ Bundle m368b(ax axVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", axVar.f346c);
        bundle.putLong("cloud.prj", j);
        ArrayList arrayList = new ArrayList();
        AbstractC1703d.m425b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1703d.m424a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: g */
    public static /* bridge */ /* synthetic */ boolean m371g(ax axVar) {
        return axVar.f347d.getTask().isSuccessful() && !((Boolean) axVar.f347d.getTask().getResult()).booleanValue();
    }

    /* JADX INFO: renamed from: c */
    public final Task m372c(String str, long j, long j2) {
        this.f345b.m437c("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f344a.m411t(new as(this, taskCompletionSource, str, j, j2, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: d */
    public final Task m373d(long j) {
        this.f345b.m437c("warmUpIntegrityToken(%s)", Long.valueOf(j));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f344a.m411t(new ar(this, taskCompletionSource, j, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
