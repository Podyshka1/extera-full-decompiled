package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
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

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.ac */
/* JADX INFO: loaded from: classes5.dex */
public final class C1752ac {

    /* JADX INFO: renamed from: a */
    private static final Map f543a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Context f544b;

    /* JADX INFO: renamed from: c */
    private final C1777q f545c;

    /* JADX INFO: renamed from: d */
    private final String f546d;

    /* JADX INFO: renamed from: h */
    private boolean f550h;

    /* JADX INFO: renamed from: i */
    private final Intent f551i;

    /* JADX INFO: renamed from: j */
    private final InterfaceC1784x f552j;

    /* JADX INFO: renamed from: n */
    private ServiceConnection f556n;

    /* JADX INFO: renamed from: o */
    private IInterface f557o;

    /* JADX INFO: renamed from: e */
    private final List f547e = new ArrayList();

    /* JADX INFO: renamed from: f */
    private final Set f548f = new HashSet();

    /* JADX INFO: renamed from: g */
    private final Object f549g = new Object();

    /* JADX INFO: renamed from: l */
    private final IBinder.DeathRecipient f554l = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.t
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C1752ac.m434k(this.f571a);
        }
    };

    /* JADX INFO: renamed from: m */
    private final AtomicInteger f555m = new AtomicInteger(0);

    /* JADX INFO: renamed from: k */
    private final WeakReference f553k = new WeakReference(null);

    public C1752ac(Context context, C1777q c1777q, String str, Intent intent, InterfaceC1784x interfaceC1784x, InterfaceC1783w interfaceC1783w) {
        this.f544b = context;
        this.f545c = c1777q;
        this.f546d = str;
        this.f551i = intent;
        this.f552j = interfaceC1784x;
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m434k(C1752ac c1752ac) {
        c1752ac.f545c.m473c("reportBinderDeath", new Object[0]);
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(c1752ac.f553k.get());
        c1752ac.f545c.m473c("%s : Binder has died.", c1752ac.f546d);
        Iterator it = c1752ac.f547e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1778r) it.next()).mo388a(c1752ac.m443w());
        }
        c1752ac.f547e.clear();
        synchronized (c1752ac.f549g) {
            c1752ac.m444x();
        }
    }

    /* JADX INFO: renamed from: o */
    static /* bridge */ /* synthetic */ void m438o(final C1752ac c1752ac, final TaskCompletionSource taskCompletionSource) {
        c1752ac.f548f.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.s
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f569a.m448u(taskCompletionSource, task);
            }
        });
    }

    /* JADX INFO: renamed from: r */
    static /* bridge */ /* synthetic */ void m441r(C1752ac c1752ac) {
        c1752ac.f545c.m473c("linkToDeath", new Object[0]);
        try {
            c1752ac.f557o.asBinder().linkToDeath(c1752ac.f554l, 0);
        } catch (RemoteException e) {
            c1752ac.f545c.m472b(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: s */
    static /* bridge */ /* synthetic */ void m442s(C1752ac c1752ac) {
        c1752ac.f545c.m473c("unlinkToDeath", new Object[0]);
        c1752ac.f557o.asBinder().unlinkToDeath(c1752ac.f554l, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x */
    public final void m444x() {
        Iterator it = this.f548f.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(m443w());
        }
        this.f548f.clear();
    }

    /* JADX INFO: renamed from: c */
    public final Handler m445c() {
        Handler handler;
        Map map = f543a;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f546d)) {
                    HandlerThread handlerThread = new HandlerThread(this.f546d, 10);
                    handlerThread.start();
                    map.put(this.f546d, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f546d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* JADX INFO: renamed from: e */
    public final IInterface m446e() {
        return this.f557o;
    }

    /* JADX INFO: renamed from: t */
    public final void m447t(AbstractRunnableC1778r abstractRunnableC1778r, TaskCompletionSource taskCompletionSource) {
        m445c().post(new C1781u(this, abstractRunnableC1778r.m475c(), taskCompletionSource, abstractRunnableC1778r));
    }

    /* JADX INFO: renamed from: u */
    final /* synthetic */ void m448u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f549g) {
            this.f548f.remove(taskCompletionSource);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m449v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f549g) {
            this.f548f.remove(taskCompletionSource);
        }
        m445c().post(new C1782v(this));
    }

    /* JADX INFO: renamed from: w */
    private final RemoteException m443w() {
        return new RemoteException(String.valueOf(this.f546d).concat(" : Binder has died."));
    }

    /* JADX INFO: renamed from: q */
    static /* bridge */ /* synthetic */ void m440q(C1752ac c1752ac, AbstractRunnableC1778r abstractRunnableC1778r) {
        if (c1752ac.f557o != null || c1752ac.f550h) {
            if (!c1752ac.f550h) {
                abstractRunnableC1778r.run();
                return;
            } else {
                c1752ac.f545c.m473c("Waiting to bind to the service.", new Object[0]);
                c1752ac.f547e.add(abstractRunnableC1778r);
                return;
            }
        }
        c1752ac.f545c.m473c("Initiate binding to the service.", new Object[0]);
        c1752ac.f547e.add(abstractRunnableC1778r);
        ServiceConnectionC1751ab serviceConnectionC1751ab = new ServiceConnectionC1751ab(c1752ac, null);
        c1752ac.f556n = serviceConnectionC1751ab;
        c1752ac.f550h = true;
        if (c1752ac.f544b.bindService(c1752ac.f551i, serviceConnectionC1751ab, 1)) {
            return;
        }
        c1752ac.f545c.m473c("Failed to bind to the service.", new Object[0]);
        c1752ac.f550h = false;
        Iterator it = c1752ac.f547e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1778r) it.next()).mo388a(new C1753ad());
        }
        c1752ac.f547e.clear();
    }
}
