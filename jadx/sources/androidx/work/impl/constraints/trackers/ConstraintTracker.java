package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConstraintTracker {
    private final Context appContext;
    private Object currentState;
    private final LinkedHashSet listeners;
    private final Object lock;
    private final TaskExecutor taskExecutor;

    public abstract Object readSystemState();

    public abstract void startTracking();

    public abstract void stopTracking();

    protected ConstraintTracker(Context context, TaskExecutor taskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        this.taskExecutor = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.appContext = applicationContext;
        this.lock = new Object();
        this.listeners = new LinkedHashSet();
    }

    protected final Context getAppContext() {
        return this.appContext;
    }

    public final void addListener(ConstraintListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            try {
                if (this.listeners.add(listener)) {
                    if (this.listeners.size() == 1) {
                        this.currentState = readSystemState();
                        Logger.get().debug(ConstraintTrackerKt.TAG, getClass().getSimpleName() + ": initial state = " + this.currentState);
                        startTracking();
                    }
                    listener.onConstraintChanged(this.currentState);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void removeListener(ConstraintListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            try {
                if (this.listeners.remove(listener) && this.listeners.isEmpty()) {
                    stopTracking();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object getState() {
        Object obj = this.currentState;
        return obj == null ? readSystemState() : obj;
    }

    public final void setState(Object obj) {
        synchronized (this.lock) {
            Object obj2 = this.currentState;
            if (obj2 == null || !Intrinsics.areEqual(obj2, obj)) {
                this.currentState = obj;
                final List list = CollectionsKt.toList(this.listeners);
                this.taskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: androidx.work.impl.constraints.trackers.ConstraintTracker$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConstraintTracker._set_state_$lambda$4$lambda$3(list, this);
                    }
                });
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _set_state_$lambda$4$lambda$3(List list, ConstraintTracker constraintTracker) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ConstraintListener) it.next()).onConstraintChanged(constraintTracker.currentState);
        }
    }
}
