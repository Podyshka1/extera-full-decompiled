package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class ae {

    /* JADX INFO: renamed from: a */
    private static final Map f371a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Context f372b;

    /* JADX INFO: renamed from: c */
    private final C1811s f373c;

    /* JADX INFO: renamed from: d */
    private final String f374d;

    /* JADX INFO: renamed from: h */
    private boolean f378h;

    /* JADX INFO: renamed from: i */
    private final Intent f379i;

    /* JADX INFO: renamed from: j */
    private final InterfaceC1818z f380j;

    /* JADX INFO: renamed from: n */
    private ServiceConnection f384n;

    /* JADX INFO: renamed from: o */
    private IInterface f385o;

    /* JADX INFO: renamed from: e */
    private final List f375e = new ArrayList();

    /* JADX INFO: renamed from: f */
    private final Set f376f = new HashSet();

    /* JADX INFO: renamed from: g */
    private final Object f377g = new Object();

    /* JADX INFO: renamed from: l */
    private final IBinder.DeathRecipient f382l = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.u
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            ae.m396k(this.f410a);
        }
    };

    /* JADX INFO: renamed from: m */
    private final AtomicInteger f383m = new AtomicInteger(0);

    /* JADX INFO: renamed from: k */
    private final WeakReference f381k = new WeakReference(null);

    public ae(Context context, C1811s c1811s, String str, Intent intent, InterfaceC1818z interfaceC1818z, InterfaceC1817y interfaceC1817y) {
        this.f372b = context;
        this.f373c = c1811s;
        this.f374d = str;
        this.f379i = intent;
        this.f380j = interfaceC1818z;
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m396k(ae aeVar) {
        aeVar.f373c.m450d("reportBinderDeath", new Object[0]);
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(aeVar.f381k.get());
        aeVar.f373c.m450d("%s : Binder has died.", aeVar.f374d);
        Iterator it = aeVar.f375e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1812t) it.next()).mo369a(aeVar.m405w());
        }
        aeVar.f375e.clear();
        synchronized (aeVar.f377g) {
            aeVar.m406x();
        }
    }

    /* JADX INFO: renamed from: o */
    public static /* bridge */ /* synthetic */ void m400o(final ae aeVar, final TaskCompletionSource taskCompletionSource) {
        aeVar.f376f.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.v
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f411a.m410u(taskCompletionSource, task);
            }
        });
    }

    /* JADX INFO: renamed from: r */
    public static /* bridge */ /* synthetic */ void m403r(ae aeVar) {
        aeVar.f373c.m450d("linkToDeath", new Object[0]);
        try {
            aeVar.f385o.asBinder().linkToDeath(aeVar.f382l, 0);
        } catch (RemoteException e) {
            aeVar.f373c.m449c(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: s */
    public static /* bridge */ /* synthetic */ void m404s(ae aeVar) {
        aeVar.f373c.m450d("unlinkToDeath", new Object[0]);
        aeVar.f385o.asBinder().unlinkToDeath(aeVar.f382l, 0);
    }

    /* JADX INFO: renamed from: w */
    private final RemoteException m405w() {
        return new RemoteException(String.valueOf(this.f374d).concat(" : Binder has died."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x */
    public final void m406x() {
        Iterator it = this.f376f.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(m405w());
        }
        this.f376f.clear();
    }

    /* JADX INFO: renamed from: c */
    public final Handler m407c() {
        Handler handler;
        Map map = f371a;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f374d)) {
                    HandlerThread handlerThread = new HandlerThread(this.f374d, 10);
                    handlerThread.start();
                    map.put(this.f374d, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f374d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* JADX INFO: renamed from: e */
    public final IInterface m408e() {
        return this.f385o;
    }

    /* JADX INFO: renamed from: t */
    public final void m409t(AbstractRunnableC1812t abstractRunnableC1812t, TaskCompletionSource taskCompletionSource) {
        m407c().post(new C1815w(this, abstractRunnableC1812t.m452c(), taskCompletionSource, abstractRunnableC1812t));
    }

    /* JADX INFO: renamed from: u */
    public final /* synthetic */ void m410u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f377g) {
            this.f376f.remove(taskCompletionSource);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m411v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f377g) {
            this.f376f.remove(taskCompletionSource);
        }
        m407c().post(new C1816x(this));
    }

    /* JADX INFO: renamed from: q */
    public static /* bridge */ /* synthetic */ void m402q(ae aeVar, AbstractRunnableC1812t abstractRunnableC1812t) {
        if (aeVar.f385o != null || aeVar.f378h) {
            if (!aeVar.f378h) {
                abstractRunnableC1812t.run();
                return;
            } else {
                aeVar.f373c.m450d("Waiting to bind to the service.", new Object[0]);
                aeVar.f375e.add(abstractRunnableC1812t);
                return;
            }
        }
        aeVar.f373c.m450d("Initiate binding to the service.", new Object[0]);
        aeVar.f375e.add(abstractRunnableC1812t);
        ad adVar = new ad(aeVar, null);
        aeVar.f384n = adVar;
        aeVar.f378h = true;
        if (aeVar.f372b.bindService(aeVar.f379i, adVar, 1)) {
            return;
        }
        aeVar.f373c.m450d("Failed to bind to the service.", new Object[0]);
        aeVar.f378h = false;
        Iterator it = aeVar.f375e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1812t) it.next()).mo369a(new af());
        }
        aeVar.f375e.clear();
    }
}
