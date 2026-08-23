package androidx.camera.core;

import android.content.Context;
import android.view.OrientationEventListener;
import androidx.camera.core.RotationProvider;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class RotationProvider {
    private static final Companion Companion = new Companion(null);
    private final boolean ignoreCanDetectForTest;
    private boolean isShutdown;
    private final Map listeners;
    private final Object lock;
    private final OrientationEventListener orientationListener;
    private volatile int rotation;

    public interface Listener {
        void onRotationChanged(int i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RotationProvider(Context appContext) {
        this(appContext, false);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
    }

    public RotationProvider(Context appContext, boolean z) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.lock = new Object();
        this.listeners = new LinkedHashMap();
        this.rotation = -1;
        this.ignoreCanDetectForTest = z;
        this.orientationListener = new OrientationEventListener(appContext) { // from class: androidx.camera.core.RotationProvider.1
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                if (i == -1) {
                    return;
                }
                this.updateRotation(this.orientationToSurfaceRotation(i));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRotation(int i) {
        List list;
        if (this.rotation != i) {
            this.rotation = i;
            synchronized (this.lock) {
                list = CollectionsKt.toList(this.listeners.values());
                Unit unit = Unit.INSTANCE;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((ListenerWrapper) it.next()).onRotationChanged(i);
            }
        }
    }

    public final boolean addListener(Executor executor, Listener listener) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            if (!this.ignoreCanDetectForTest && !this.orientationListener.canDetectOrientation()) {
                return false;
            }
            ListenerWrapper listenerWrapper = new ListenerWrapper(listener, executor);
            this.listeners.put(listener, listenerWrapper);
            if (this.rotation != -1) {
                listenerWrapper.onRotationChanged(this.rotation);
            }
            if (this.listeners.size() == 1) {
                this.orientationListener.enable();
            }
            Unit unit = Unit.INSTANCE;
            return true;
        }
    }

    public final void removeListener(Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            try {
                ListenerWrapper listenerWrapper = (ListenerWrapper) this.listeners.get(listener);
                if (listenerWrapper != null) {
                    listenerWrapper.disable();
                    this.listeners.remove(listener);
                }
                if (this.listeners.isEmpty()) {
                    this.orientationListener.disable();
                    this.rotation = -1;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void shutdown() {
        synchronized (this.lock) {
            this.orientationListener.disable();
            this.listeners.clear();
            this.isShutdown = true;
            this.rotation = -1;
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int orientationToSurfaceRotation(int i) {
        if (this.rotation == -1) {
            if (i >= 0 && i < 45) {
                return 0;
            }
            if (45 <= i && i < 135) {
                return 3;
            }
            if (135 > i || i >= 225) {
                return (225 > i || i >= 315) ? 0 : 1;
            }
            return 2;
        }
        if ((i >= 0 && i < 40) || (320 <= i && i < 360)) {
            return 0;
        }
        if (50 <= i && i < 130) {
            return 3;
        }
        if (140 <= i && i < 220) {
            return 2;
        }
        if (230 > i || i >= 310) {
            return this.rotation;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ListenerWrapper {
        private final AtomicBoolean enabled;
        private final Executor executor;
        private final Listener listener;

        public ListenerWrapper(Listener listener, Executor executor) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(executor, "executor");
            this.listener = listener;
            this.executor = executor;
            this.enabled = new AtomicBoolean(true);
        }

        public final void onRotationChanged(final int i) {
            if (this.enabled.get()) {
                try {
                    this.executor.execute(new Runnable() { // from class: androidx.camera.core.RotationProvider$ListenerWrapper$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            RotationProvider.ListenerWrapper.onRotationChanged$lambda$0(this.f$0, i);
                        }
                    });
                } catch (RejectedExecutionException unused) {
                    Logger.m81w("RotationProvider", "Failed to execute the command. Maybe the executor has been shutdown.");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onRotationChanged$lambda$0(ListenerWrapper listenerWrapper, int i) {
            if (listenerWrapper.enabled.get()) {
                listenerWrapper.listener.onRotationChanged(i);
            }
        }

        public final void disable() {
            this.enabled.set(false);
        }
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
