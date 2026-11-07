package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.AbstractBinderC1807h;
import com.google.android.play.integrity.internal.AbstractC1803d;
import com.google.android.play.integrity.internal.C1811s;
import com.google.android.play.integrity.internal.InterfaceC1818z;
import com.google.android.play.integrity.internal.ae;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
final class bn {

    /* JADX INFO: renamed from: a */
    final ae f327a;

    /* JADX INFO: renamed from: b */
    private final C1811s f328b;

    /* JADX INFO: renamed from: c */
    private final String f329c;

    /* JADX INFO: renamed from: d */
    private final TaskCompletionSource f330d;

    /* JADX INFO: renamed from: e */
    private final at f331e;

    /* JADX INFO: renamed from: f */
    private final InterfaceC1791k f332f;

    public bn(Context context, C1811s c1811s, at atVar, InterfaceC1791k interfaceC1791k) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f330d = taskCompletionSource;
        this.f329c = context.getPackageName();
        this.f328b = c1811s;
        this.f331e = atVar;
        this.f332f = interfaceC1791k;
        ae aeVar = new ae(context, c1811s, "ExpressIntegrityService", bo.f333a, new InterfaceC1818z() { // from class: com.google.android.play.core.integrity.bd
            @Override // com.google.android.play.integrity.internal.InterfaceC1818z
            /* JADX INFO: renamed from: a */
            public final Object mo363a(IBinder iBinder) {
                return AbstractBinderC1807h.m447b(iBinder);
            }
        }, null);
        this.f327a = aeVar;
        aeVar.m407c().post(new be(this, taskCompletionSource, context));
    }

    /* JADX INFO: renamed from: a */
    public static /* bridge */ /* synthetic */ Bundle m370a(bn bnVar, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.f329c);
        bundle.putLong("cloud.prj", j);
        bundle.putString("nonce", standardIntegrityTokenRequest.requestHash());
        bundle.putLong("warm.up.sid", j2);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        bundle.putIntegerArrayList("request.verdict.opt.out", new ArrayList<>(standardIntegrityTokenRequest.verdictOptOut()));
        ArrayList arrayList = new ArrayList();
        AbstractC1803d.m441b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1803d.m440a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    public static /* bridge */ /* synthetic */ Bundle m371b(bn bnVar, long j, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.f329c);
        bundle.putLong("cloud.prj", j);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        ArrayList arrayList = new ArrayList();
        AbstractC1803d.m441b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1803d.m440a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: k */
    public static /* bridge */ /* synthetic */ boolean m376k(bn bnVar, int i) {
        return bnVar.f330d.getTask().isSuccessful() && ((Integer) bnVar.f330d.getTask().getResult()).intValue() < 83420000;
    }

    /* JADX INFO: renamed from: l */
    public static /* bridge */ /* synthetic */ boolean m377l(bn bnVar) {
        return bnVar.f330d.getTask().isSuccessful() && ((Integer) bnVar.f330d.getTask().getResult()).intValue() == 0;
    }

    /* JADX INFO: renamed from: d */
    public final Task m378d(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        this.f328b.m450d("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f327a.m409t(new bg(this, taskCompletionSource, 0, standardIntegrityTokenRequest, j, j2, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: e */
    public final Task m379e(long j, int i) {
        this.f328b.m450d("warmUpIntegrityToken(%s)", Long.valueOf(j));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f327a.m409t(new bf(this, taskCompletionSource, 0, j, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
