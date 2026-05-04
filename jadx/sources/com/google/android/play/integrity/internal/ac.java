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

/* JADX INFO: loaded from: classes5.dex */
public final class ac {

    /* JADX INFO: renamed from: a */
    private static final Map f337a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Context f338b;

    /* JADX INFO: renamed from: c */
    private final C1662q f339c;

    /* JADX INFO: renamed from: d */
    private final String f340d;

    /* JADX INFO: renamed from: h */
    private boolean f344h;

    /* JADX INFO: renamed from: i */
    private final Intent f345i;

    /* JADX INFO: renamed from: j */
    private final InterfaceC1669x f346j;

    /* JADX INFO: renamed from: n */
    private ServiceConnection f350n;

    /* JADX INFO: renamed from: o */
    private IInterface f351o;

    /* JADX INFO: renamed from: e */
    private final List f341e = new ArrayList();

    /* JADX INFO: renamed from: f */
    private final Set f342f = new HashSet();

    /* JADX INFO: renamed from: g */
    private final Object f343g = new Object();

    /* JADX INFO: renamed from: l */
    private final IBinder.DeathRecipient f348l = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.t
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            ac.m339k(this.f365a);
        }
    };

    /* JADX INFO: renamed from: m */
    private final AtomicInteger f349m = new AtomicInteger(0);

    /* JADX INFO: renamed from: k */
    private final WeakReference f347k = new WeakReference(null);

    public ac(Context context, C1662q c1662q, String str, Intent intent, InterfaceC1669x interfaceC1669x, InterfaceC1668w interfaceC1668w) {
        this.f338b = context;
        this.f339c = c1662q;
        this.f340d = str;
        this.f345i = intent;
        this.f346j = interfaceC1669x;
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m339k(ac acVar) {
        acVar.f339c.m378c("reportBinderDeath", new Object[0]);
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(acVar.f347k.get());
        acVar.f339c.m378c("%s : Binder has died.", acVar.f340d);
        Iterator it = acVar.f341e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1663r) it.next()).mo293a(acVar.m348w());
        }
        acVar.f341e.clear();
        synchronized (acVar.f343g) {
            acVar.m349x();
        }
    }

    /* JADX INFO: renamed from: o */
    static /* bridge */ /* synthetic */ void m343o(final ac acVar, final TaskCompletionSource taskCompletionSource) {
        acVar.f342f.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.s
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f363a.m353u(taskCompletionSource, task);
            }
        });
    }

    /* JADX INFO: renamed from: r */
    static /* bridge */ /* synthetic */ void m346r(ac acVar) {
        acVar.f339c.m378c("linkToDeath", new Object[0]);
        try {
            acVar.f351o.asBinder().linkToDeath(acVar.f348l, 0);
        } catch (RemoteException e) {
            acVar.f339c.m377b(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: s */
    static /* bridge */ /* synthetic */ void m347s(ac acVar) {
        acVar.f339c.m378c("unlinkToDeath", new Object[0]);
        acVar.f351o.asBinder().unlinkToDeath(acVar.f348l, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x */
    public final void m349x() {
        Iterator it = this.f342f.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(m348w());
        }
        this.f342f.clear();
    }

    /* JADX INFO: renamed from: c */
    public final Handler m350c() {
        Handler handler;
        Map map = f337a;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f340d)) {
                    HandlerThread handlerThread = new HandlerThread(this.f340d, 10);
                    handlerThread.start();
                    map.put(this.f340d, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f340d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* JADX INFO: renamed from: e */
    public final IInterface m351e() {
        return this.f351o;
    }

    /* JADX INFO: renamed from: t */
    public final void m352t(AbstractRunnableC1663r abstractRunnableC1663r, TaskCompletionSource taskCompletionSource) {
        m350c().post(new C1666u(this, abstractRunnableC1663r.m380c(), taskCompletionSource, abstractRunnableC1663r));
    }

    /* JADX INFO: renamed from: u */
    final /* synthetic */ void m353u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f343g) {
            this.f342f.remove(taskCompletionSource);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m354v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f343g) {
            this.f342f.remove(taskCompletionSource);
        }
        m350c().post(new C1667v(this));
    }

    /* JADX INFO: renamed from: w */
    private final RemoteException m348w() {
        return new RemoteException(String.valueOf(this.f340d).concat(" : Binder has died."));
    }

    /* JADX INFO: renamed from: q */
    static /* bridge */ /* synthetic */ void m345q(ac acVar, AbstractRunnableC1663r abstractRunnableC1663r) {
        if (acVar.f351o != null || acVar.f344h) {
            if (!acVar.f344h) {
                abstractRunnableC1663r.run();
                return;
            } else {
                acVar.f339c.m378c("Waiting to bind to the service.", new Object[0]);
                acVar.f341e.add(abstractRunnableC1663r);
                return;
            }
        }
        acVar.f339c.m378c("Initiate binding to the service.", new Object[0]);
        acVar.f341e.add(abstractRunnableC1663r);
        ab abVar = new ab(acVar, null);
        acVar.f350n = abVar;
        acVar.f344h = true;
        if (acVar.f338b.bindService(acVar.f345i, abVar, 1)) {
            return;
        }
        acVar.f339c.m378c("Failed to bind to the service.", new Object[0]);
        acVar.f344h = false;
        Iterator it = acVar.f341e.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC1663r) it.next()).mo293a(new ad());
        }
        acVar.f341e.clear();
    }
}
