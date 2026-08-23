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
public final class ac {

    /* JADX INFO: renamed from: a */
    private static final Map f396a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Context f397b;

    /* JADX INFO: renamed from: c */
    private final C1716q f398c;

    /* JADX INFO: renamed from: d */
    private final String f399d;

    /* JADX INFO: renamed from: h */
    private boolean f403h;

    /* JADX INFO: renamed from: i */
    private final Intent f404i;

    /* JADX INFO: renamed from: j */
    private final InterfaceC1723x f405j;

    /* JADX INFO: renamed from: n */
    private ServiceConnection f409n;

    /* JADX INFO: renamed from: o */
    private IInterface f410o;

    /* JADX INFO: renamed from: e */
    private final List f400e = new ArrayList();

    /* JADX INFO: renamed from: f */
    private final Set f401f = new HashSet();

    /* JADX INFO: renamed from: g */
    private final Object f402g = new Object();

    /* JADX INFO: renamed from: l */
    private final IBinder.DeathRecipient f407l = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.t
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            ac.m398k(this.f424a);
        }
    };

    /* JADX INFO: renamed from: m */
    private final AtomicInteger f408m = new AtomicInteger(0);

    /* JADX INFO: renamed from: k */
    private final WeakReference f406k = new WeakReference(null);

    public ac(Context context, C1716q c1716q, String str, Intent intent, InterfaceC1723x interfaceC1723x, InterfaceC1722w interfaceC1722w) {
        this.f397b = context;
        this.f398c = c1716q;
        this.f399d = str;
        this.f404i = intent;
        this.f405j = interfaceC1723x;
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m398k(ac acVar) {
        acVar.f398c.m437c("reportBinderDeath", new Object[0]);
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(acVar.f406k.get());
        acVar.f398c.m437c("%s : Binder has died.", acVar.f399d);
        Iterator it = acVar.f400e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1717r) it.next()).mo352a(acVar.m407w());
        }
        acVar.f400e.clear();
        synchronized (acVar.f402g) {
            acVar.m408x();
        }
    }

    /* JADX INFO: renamed from: o */
    public static /* bridge */ /* synthetic */ void m402o(final ac acVar, final TaskCompletionSource taskCompletionSource) {
        acVar.f401f.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.s
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f422a.m412u(taskCompletionSource, task);
            }
        });
    }

    /* JADX INFO: renamed from: r */
    public static /* bridge */ /* synthetic */ void m405r(ac acVar) {
        acVar.f398c.m437c("linkToDeath", new Object[0]);
        try {
            acVar.f410o.asBinder().linkToDeath(acVar.f407l, 0);
        } catch (RemoteException e) {
            acVar.f398c.m436b(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: s */
    public static /* bridge */ /* synthetic */ void m406s(ac acVar) {
        acVar.f398c.m437c("unlinkToDeath", new Object[0]);
        acVar.f410o.asBinder().unlinkToDeath(acVar.f407l, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x */
    public final void m408x() {
        Iterator it = this.f401f.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(m407w());
        }
        this.f401f.clear();
    }

    /* JADX INFO: renamed from: c */
    public final Handler m409c() {
        Handler handler;
        Map map = f396a;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f399d)) {
                    HandlerThread handlerThread = new HandlerThread(this.f399d, 10);
                    handlerThread.start();
                    map.put(this.f399d, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f399d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* JADX INFO: renamed from: e */
    public final IInterface m410e() {
        return this.f410o;
    }

    /* JADX INFO: renamed from: t */
    public final void m411t(AbstractRunnableC1717r abstractRunnableC1717r, TaskCompletionSource taskCompletionSource) {
        m409c().post(new C1720u(this, abstractRunnableC1717r.m439c(), taskCompletionSource, abstractRunnableC1717r));
    }

    /* JADX INFO: renamed from: u */
    public final /* synthetic */ void m412u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f402g) {
            this.f401f.remove(taskCompletionSource);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m413v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f402g) {
            this.f401f.remove(taskCompletionSource);
        }
        m409c().post(new C1721v(this));
    }

    /* JADX INFO: renamed from: w */
    private final RemoteException m407w() {
        return new RemoteException(String.valueOf(this.f399d).concat(" : Binder has died."));
    }

    /* JADX INFO: renamed from: q */
    public static /* bridge */ /* synthetic */ void m404q(ac acVar, AbstractRunnableC1717r abstractRunnableC1717r) {
        if (acVar.f410o != null || acVar.f403h) {
            if (!acVar.f403h) {
                abstractRunnableC1717r.run();
                return;
            } else {
                acVar.f398c.m437c("Waiting to bind to the service.", new Object[0]);
                acVar.f400e.add(abstractRunnableC1717r);
                return;
            }
        }
        acVar.f398c.m437c("Initiate binding to the service.", new Object[0]);
        acVar.f400e.add(abstractRunnableC1717r);
        ab abVar = new ab(acVar, null);
        acVar.f409n = abVar;
        acVar.f403h = true;
        if (acVar.f397b.bindService(acVar.f404i, abVar, 1)) {
            return;
        }
        acVar.f398c.m437c("Failed to bind to the service.", new Object[0]);
        acVar.f403h = false;
        Iterator it = acVar.f400e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1717r) it.next()).mo352a(new ad());
        }
        acVar.f400e.clear();
    }
}
