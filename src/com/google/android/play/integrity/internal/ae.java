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
    private static final Map f372a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Context f373b;

    /* JADX INFO: renamed from: c */
    private final C1932s f374c;

    /* JADX INFO: renamed from: d */
    private final String f375d;

    /* JADX INFO: renamed from: h */
    private boolean f379h;

    /* JADX INFO: renamed from: i */
    private final Intent f380i;

    /* JADX INFO: renamed from: j */
    private final InterfaceC1939z f381j;

    /* JADX INFO: renamed from: n */
    private ServiceConnection f385n;

    /* JADX INFO: renamed from: o */
    private IInterface f386o;

    /* JADX INFO: renamed from: e */
    private final List f376e = new ArrayList();

    /* JADX INFO: renamed from: f */
    private final Set f377f = new HashSet();

    /* JADX INFO: renamed from: g */
    private final Object f378g = new Object();

    /* JADX INFO: renamed from: l */
    private final IBinder.DeathRecipient f383l = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.u
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            ae.m420k(this.f411a);
        }
    };

    /* JADX INFO: renamed from: m */
    private final AtomicInteger f384m = new AtomicInteger(0);

    /* JADX INFO: renamed from: k */
    private final WeakReference f382k = new WeakReference(null);

    public ae(Context context, C1932s c1932s, String str, Intent intent, InterfaceC1939z interfaceC1939z, InterfaceC1938y interfaceC1938y) {
        this.f373b = context;
        this.f374c = c1932s;
        this.f375d = str;
        this.f380i = intent;
        this.f381j = interfaceC1939z;
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m420k(ae aeVar) {
        aeVar.f374c.m474d("reportBinderDeath", new Object[0]);
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(aeVar.f382k.get());
        aeVar.f374c.m474d("%s : Binder has died.", aeVar.f375d);
        Iterator it = aeVar.f376e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1933t) it.next()).mo393a(aeVar.m429w());
        }
        aeVar.f376e.clear();
        synchronized (aeVar.f378g) {
            aeVar.m430x();
        }
    }

    /* JADX INFO: renamed from: o */
    public static /* bridge */ /* synthetic */ void m424o(final ae aeVar, final TaskCompletionSource taskCompletionSource) {
        aeVar.f377f.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.v
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f412a.m434u(taskCompletionSource, task);
            }
        });
    }

    /* JADX INFO: renamed from: r */
    public static /* bridge */ /* synthetic */ void m427r(ae aeVar) {
        aeVar.f374c.m474d("linkToDeath", new Object[0]);
        try {
            aeVar.f386o.asBinder().linkToDeath(aeVar.f383l, 0);
        } catch (RemoteException e) {
            aeVar.f374c.m473c(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: s */
    public static /* bridge */ /* synthetic */ void m428s(ae aeVar) {
        aeVar.f374c.m474d("unlinkToDeath", new Object[0]);
        aeVar.f386o.asBinder().unlinkToDeath(aeVar.f383l, 0);
    }

    /* JADX INFO: renamed from: w */
    private final RemoteException m429w() {
        return new RemoteException(String.valueOf(this.f375d).concat(" : Binder has died."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x */
    public final void m430x() {
        Iterator it = this.f377f.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(m429w());
        }
        this.f377f.clear();
    }

    /* JADX INFO: renamed from: c */
    public final Handler m431c() {
        Handler handler;
        Map map = f372a;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f375d)) {
                    HandlerThread handlerThread = new HandlerThread(this.f375d, 10);
                    handlerThread.start();
                    map.put(this.f375d, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f375d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* JADX INFO: renamed from: e */
    public final IInterface m432e() {
        return this.f386o;
    }

    /* JADX INFO: renamed from: t */
    public final void m433t(AbstractRunnableC1933t abstractRunnableC1933t, TaskCompletionSource taskCompletionSource) {
        m431c().post(new C1936w(this, abstractRunnableC1933t.m476c(), taskCompletionSource, abstractRunnableC1933t));
    }

    /* JADX INFO: renamed from: u */
    public final /* synthetic */ void m434u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f378g) {
            this.f377f.remove(taskCompletionSource);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m435v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f378g) {
            this.f377f.remove(taskCompletionSource);
        }
        m431c().post(new C1937x(this));
    }

    /* JADX INFO: renamed from: q */
    public static /* bridge */ /* synthetic */ void m426q(ae aeVar, AbstractRunnableC1933t abstractRunnableC1933t) {
        if (aeVar.f386o != null || aeVar.f379h) {
            if (!aeVar.f379h) {
                abstractRunnableC1933t.run();
                return;
            } else {
                aeVar.f374c.m474d("Waiting to bind to the service.", new Object[0]);
                aeVar.f376e.add(abstractRunnableC1933t);
                return;
            }
        }
        aeVar.f374c.m474d("Initiate binding to the service.", new Object[0]);
        aeVar.f376e.add(abstractRunnableC1933t);
        ad adVar = new ad(aeVar, null);
        aeVar.f385n = adVar;
        aeVar.f379h = true;
        if (aeVar.f373b.bindService(aeVar.f380i, adVar, 1)) {
            return;
        }
        aeVar.f374c.m474d("Failed to bind to the service.", new Object[0]);
        aeVar.f379h = false;
        Iterator it = aeVar.f376e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1933t) it.next()).mo393a(new af());
        }
        aeVar.f376e.clear();
    }
}
