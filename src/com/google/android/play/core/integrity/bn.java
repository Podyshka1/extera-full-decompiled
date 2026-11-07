package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.AbstractBinderC1928h;
import com.google.android.play.integrity.internal.AbstractC1924d;
import com.google.android.play.integrity.internal.C1932s;
import com.google.android.play.integrity.internal.InterfaceC1939z;
import com.google.android.play.integrity.internal.ae;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
final class bn {

    /* JADX INFO: renamed from: a */
    final ae f328a;

    /* JADX INFO: renamed from: b */
    private final C1932s f329b;

    /* JADX INFO: renamed from: c */
    private final String f330c;

    /* JADX INFO: renamed from: d */
    private final TaskCompletionSource f331d;

    /* JADX INFO: renamed from: e */
    private final at f332e;

    /* JADX INFO: renamed from: f */
    private final InterfaceC1912k f333f;

    public bn(Context context, C1932s c1932s, at atVar, InterfaceC1912k interfaceC1912k) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f331d = taskCompletionSource;
        this.f330c = context.getPackageName();
        this.f329b = c1932s;
        this.f332e = atVar;
        this.f333f = interfaceC1912k;
        ae aeVar = new ae(context, c1932s, "ExpressIntegrityService", bo.f334a, new InterfaceC1939z() { // from class: com.google.android.play.core.integrity.bd
            @Override // com.google.android.play.integrity.internal.InterfaceC1939z
            /* JADX INFO: renamed from: a */
            public final Object mo387a(IBinder iBinder) {
                return AbstractBinderC1928h.m471b(iBinder);
            }
        }, null);
        this.f328a = aeVar;
        aeVar.m431c().post(new be(this, taskCompletionSource, context));
    }

    /* JADX INFO: renamed from: a */
    public static /* bridge */ /* synthetic */ Bundle m394a(bn bnVar, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.f330c);
        bundle.putLong("cloud.prj", j);
        bundle.putString("nonce", standardIntegrityTokenRequest.requestHash());
        bundle.putLong("warm.up.sid", j2);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        bundle.putIntegerArrayList("request.verdict.opt.out", new ArrayList<>(standardIntegrityTokenRequest.verdictOptOut()));
        ArrayList arrayList = new ArrayList();
        AbstractC1924d.m465b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1924d.m464a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: b */
    public static /* bridge */ /* synthetic */ Bundle m395b(bn bnVar, long j, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.f330c);
        bundle.putLong("cloud.prj", j);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        ArrayList arrayList = new ArrayList();
        AbstractC1924d.m465b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(AbstractC1924d.m464a(arrayList)));
        return bundle;
    }

    /* JADX INFO: renamed from: k */
    public static /* bridge */ /* synthetic */ boolean m400k(bn bnVar, int i) {
        return bnVar.f331d.getTask().isSuccessful() && ((Integer) bnVar.f331d.getTask().getResult()).intValue() < 83420000;
    }

    /* JADX INFO: renamed from: l */
    public static /* bridge */ /* synthetic */ boolean m401l(bn bnVar) {
        return bnVar.f331d.getTask().isSuccessful() && ((Integer) bnVar.f331d.getTask().getResult()).intValue() == 0;
    }

    /* JADX INFO: renamed from: d */
    public final Task m402d(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        this.f329b.m474d("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f328a.m433t(new bg(this, taskCompletionSource, 0, standardIntegrityTokenRequest, j, j2, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: e */
    public final Task m403e(long j, int i) {
        this.f329b.m474d("warmUpIntegrityToken(%s)", Long.valueOf(j));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f328a.m433t(new bf(this, taskCompletionSource, 0, j, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
