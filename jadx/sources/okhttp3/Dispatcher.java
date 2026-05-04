package okhttp3;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class Dispatcher {
    private ExecutorService executorServiceOrNull;
    private Runnable idleCallback;
    private int maxRequests;
    private int maxRequestsPerHost;
    private final ArrayDeque<RealCall.AsyncCall> readyAsyncCalls;
    private final ArrayDeque<RealCall.AsyncCall> runningAsyncCalls;
    private final ArrayDeque<RealCall> runningSyncCalls;

    public Dispatcher() {
        this.maxRequests = 64;
        this.maxRequestsPerHost = 5;
        this.readyAsyncCalls = new ArrayDeque<>();
        this.runningAsyncCalls = new ArrayDeque<>();
        this.runningSyncCalls = new ArrayDeque<>();
    }

    public final synchronized int getMaxRequests() {
        return this.maxRequests;
    }

    public final void setMaxRequests(int i) {
        if (i < 1) {
            throw new IllegalArgumentException(("max < 1: " + i).toString());
        }
        synchronized (this) {
            this.maxRequests = i;
            Unit unit = Unit.INSTANCE;
        }
        promoteAndExecute$default(this, null, null, null, 7, null);
    }

    public final synchronized int getMaxRequestsPerHost() {
        return this.maxRequestsPerHost;
    }

    public final void setMaxRequestsPerHost(int i) {
        if (i < 1) {
            throw new IllegalArgumentException(("max < 1: " + i).toString());
        }
        synchronized (this) {
            this.maxRequestsPerHost = i;
            Unit unit = Unit.INSTANCE;
        }
        promoteAndExecute$default(this, null, null, null, 7, null);
    }

    public final synchronized Runnable getIdleCallback() {
        return this.idleCallback;
    }

    public final synchronized void setIdleCallback(Runnable runnable) {
        this.idleCallback = runnable;
    }

    public final synchronized ExecutorService executorService() {
        ExecutorService executorService;
        try {
            if (this.executorServiceOrNull == null) {
                this.executorServiceOrNull = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), _UtilJvmKt.threadFactory(_UtilJvmKt.okHttpName + " Dispatcher", false));
            }
            executorService = this.executorServiceOrNull;
            Intrinsics.checkNotNull(executorService);
        } catch (Throwable th) {
            throw th;
        }
        return executorService;
    }

    public Dispatcher(ExecutorService executorService) {
        this();
        this.executorServiceOrNull = executorService;
    }

    public final void enqueue$okhttp(RealCall.AsyncCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        promoteAndExecute$default(this, call, null, null, 6, null);
    }

    private final RealCall.AsyncCall findExistingCallWithHost(String str) {
        Iterator<RealCall.AsyncCall> it = this.runningAsyncCalls.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            RealCall.AsyncCall next = it.next();
            if (Intrinsics.areEqual(next.getHost(), str)) {
                return next;
            }
        }
        Iterator<RealCall.AsyncCall> it2 = this.readyAsyncCalls.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            RealCall.AsyncCall next2 = it2.next();
            if (Intrinsics.areEqual(next2.getHost(), str)) {
                return next2;
            }
        }
        return null;
    }

    public final synchronized void cancelAll() {
        try {
            Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                it.next().getCall().cancel();
            }
            Iterator<RealCall.AsyncCall> it2 = this.runningAsyncCalls.iterator();
            Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
            while (it2.hasNext()) {
                it2.next().getCall().cancel();
            }
            Iterator<RealCall> it3 = this.runningSyncCalls.iterator();
            Intrinsics.checkNotNullExpressionValue(it3, "iterator(...)");
            while (it3.hasNext()) {
                it3.next().cancel();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    static /* synthetic */ void promoteAndExecute$default(Dispatcher dispatcher, RealCall.AsyncCall asyncCall, RealCall realCall, RealCall.AsyncCall asyncCall2, int i, Object obj) {
        if ((i & 1) != 0) {
            asyncCall = null;
        }
        if ((i & 2) != 0) {
            realCall = null;
        }
        if ((i & 4) != 0) {
            asyncCall2 = null;
        }
        dispatcher.promoteAndExecute(asyncCall, realCall, asyncCall2);
    }

    private final void promoteAndExecute(RealCall.AsyncCall asyncCall, RealCall realCall, RealCall.AsyncCall asyncCall2) {
        Effects effects;
        RealCall.AsyncCall asyncCallFindExistingCallWithHost;
        _UtilJvmKt.assertLockNotHeld(this);
        boolean zIsShutdown = executorService().isShutdown();
        synchronized (this) {
            if (realCall != null) {
                try {
                    if (!this.runningSyncCalls.remove(realCall)) {
                        throw new IllegalStateException("Call wasn't in-flight!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (asyncCall2 != null) {
                asyncCall2.getCallsPerHost().decrementAndGet();
                if (!this.runningAsyncCalls.remove(asyncCall2)) {
                    throw new IllegalStateException("Call wasn't in-flight!");
                }
            }
            if (asyncCall != null) {
                this.readyAsyncCalls.add(asyncCall);
                if (!asyncCall.getCall().getForWebSocket() && (asyncCallFindExistingCallWithHost = findExistingCallWithHost(asyncCall.getHost())) != null) {
                    asyncCall.reuseCallsPerHostFrom(asyncCallFindExistingCallWithHost);
                }
            }
            Runnable runnable = (!(realCall == null && asyncCall2 == null) && (zIsShutdown || this.runningAsyncCalls.isEmpty()) && this.runningSyncCalls.isEmpty()) ? this.idleCallback : null;
            if (zIsShutdown) {
                List list = CollectionsKt.toList(this.readyAsyncCalls);
                this.readyAsyncCalls.clear();
                effects = new Effects(list, runnable);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                while (it.hasNext()) {
                    RealCall.AsyncCall next = it.next();
                    if (this.runningAsyncCalls.size() >= this.maxRequests) {
                        break;
                    }
                    if (next.getCallsPerHost().get() < this.maxRequestsPerHost) {
                        it.remove();
                        next.getCallsPerHost().incrementAndGet();
                        Intrinsics.checkNotNull(next);
                        arrayList.add(next);
                        this.runningAsyncCalls.add(next);
                    }
                }
                effects = new Effects(arrayList, runnable);
            }
        }
        int size = effects.getCallsToExecute().size();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            RealCall.AsyncCall asyncCall3 = effects.getCallsToExecute().get(i);
            if (asyncCall3 == asyncCall) {
                z = false;
            } else {
                asyncCall3.getCall().getEventListener$okhttp().dispatcherQueueEnd(asyncCall3.getCall(), this);
            }
            if (zIsShutdown) {
                RealCall.AsyncCall.failRejected$okhttp$default(asyncCall3, null, 1, null);
            } else {
                asyncCall3.executeOn(executorService());
            }
        }
        if (z && asyncCall != null) {
            asyncCall.getCall().getEventListener$okhttp().dispatcherQueueStart(asyncCall.getCall(), this);
        }
        Runnable idleCallbackToRun = effects.getIdleCallbackToRun();
        if (idleCallbackToRun != null) {
            idleCallbackToRun.run();
        }
    }

    public static final class Effects {
        private final List<RealCall.AsyncCall> callsToExecute;
        private final Runnable idleCallbackToRun;

        public Effects(List<RealCall.AsyncCall> callsToExecute, Runnable runnable) {
            Intrinsics.checkNotNullParameter(callsToExecute, "callsToExecute");
            this.callsToExecute = callsToExecute;
            this.idleCallbackToRun = runnable;
        }

        public final List<RealCall.AsyncCall> getCallsToExecute() {
            return this.callsToExecute;
        }

        public final Runnable getIdleCallbackToRun() {
            return this.idleCallbackToRun;
        }
    }

    public final synchronized boolean executed$okhttp(RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        return this.runningSyncCalls.add(call);
    }

    public final void finished$okhttp(RealCall.AsyncCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        promoteAndExecute$default(this, null, null, call, 3, null);
    }

    public final void finished$okhttp(RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        promoteAndExecute$default(this, null, call, null, 5, null);
    }

    public final synchronized List<Call> queuedCalls() {
        List<Call> listUnmodifiableList;
        try {
            ArrayDeque<RealCall.AsyncCall> arrayDeque = this.readyAsyncCalls;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayDeque, 10));
            Iterator<T> it = arrayDeque.iterator();
            while (it.hasNext()) {
                arrayList.add(((RealCall.AsyncCall) it.next()).getCall());
            }
            listUnmodifiableList = DesugarCollections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        } catch (Throwable th) {
            throw th;
        }
        return listUnmodifiableList;
    }

    public final synchronized List<Call> runningCalls() {
        List<Call> listUnmodifiableList;
        try {
            ArrayDeque<RealCall> arrayDeque = this.runningSyncCalls;
            ArrayDeque<RealCall.AsyncCall> arrayDeque2 = this.runningAsyncCalls;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayDeque2, 10));
            Iterator<T> it = arrayDeque2.iterator();
            while (it.hasNext()) {
                arrayList.add(((RealCall.AsyncCall) it.next()).getCall());
            }
            listUnmodifiableList = DesugarCollections.unmodifiableList(CollectionsKt.plus((Collection) arrayDeque, (Iterable) arrayList));
            Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        } catch (Throwable th) {
            throw th;
        }
        return listUnmodifiableList;
    }

    public final synchronized int queuedCallsCount() {
        return this.readyAsyncCalls.size();
    }

    public final synchronized int runningCallsCount() {
        return this.runningAsyncCalls.size() + this.runningSyncCalls.size();
    }

    /* JADX INFO: renamed from: -deprecated_executorService, reason: not valid java name */
    public final ExecutorService m3777deprecated_executorService() {
        return executorService();
    }
}
