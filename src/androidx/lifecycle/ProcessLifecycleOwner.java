package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.lifecycle.ReportFragment;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleOwner implements LifecycleOwner {
    public static final Companion Companion = new Companion(null);
    private static final ProcessLifecycleOwner newInstance = new ProcessLifecycleOwner();
    private Handler handler;
    private int resumedCounter;
    private int startedCounter;
    private boolean pauseSent = true;
    private boolean stopSent = true;
    private final LifecycleRegistry registry = new LifecycleRegistry(this);
    private final Runnable delayedPauseRunnable = new Runnable() { // from class: androidx.lifecycle.ProcessLifecycleOwner$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            ProcessLifecycleOwner.delayedPauseRunnable$lambda$0(this.f$0);
        }
    };
    private final ReportFragment.ActivityInitializationListener initializationListener = new ReportFragment.ActivityInitializationListener() { // from class: androidx.lifecycle.ProcessLifecycleOwner$initializationListener$1
        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onCreate() {
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onStart() {
            this.this$0.activityStarted$lifecycle_process();
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onResume() {
            this.this$0.activityResumed$lifecycle_process();
        }
    };

    private ProcessLifecycleOwner() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void delayedPauseRunnable$lambda$0(ProcessLifecycleOwner processLifecycleOwner) {
        processLifecycleOwner.dispatchPauseIfNeeded$lifecycle_process();
        processLifecycleOwner.dispatchStopIfNeeded$lifecycle_process();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final LifecycleOwner get() {
            return ProcessLifecycleOwner.newInstance;
        }

        public final void init$lifecycle_process(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ProcessLifecycleOwner.newInstance.attach$lifecycle_process(context);
        }
    }

    public final void activityStarted$lifecycle_process() {
        int i = this.startedCounter + 1;
        this.startedCounter = i;
        if (i == 1 && this.stopSent) {
            this.registry.handleLifecycleEvent(Lifecycle.Event.ON_START);
            this.stopSent = false;
        }
    }

    public final void activityResumed$lifecycle_process() {
        int i = this.resumedCounter + 1;
        this.resumedCounter = i;
        if (i == 1) {
            if (this.pauseSent) {
                this.registry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
                this.pauseSent = false;
            } else {
                Handler handler = this.handler;
                Intrinsics.checkNotNull(handler);
                handler.removeCallbacks(this.delayedPauseRunnable);
            }
        }
    }

    public final void activityPaused$lifecycle_process() {
        int i = this.resumedCounter - 1;
        this.resumedCounter = i;
        if (i == 0) {
            Handler handler = this.handler;
            Intrinsics.checkNotNull(handler);
            handler.postDelayed(this.delayedPauseRunnable, 700L);
        }
    }

    public final void activityStopped$lifecycle_process() {
        this.startedCounter--;
        dispatchStopIfNeeded$lifecycle_process();
    }

    public final void dispatchPauseIfNeeded$lifecycle_process() {
        if (this.resumedCounter == 0) {
            this.pauseSent = true;
            this.registry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
    }

    public final void dispatchStopIfNeeded$lifecycle_process() {
        if (this.startedCounter == 0 && this.pauseSent) {
            this.registry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
            this.stopSent = true;
        }
    }

    public final void attach$lifecycle_process(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.handler = new Handler();
        this.registry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPreCreated(Activity activity, Bundle bundle) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                final ProcessLifecycleOwner processLifecycleOwner = this.this$0;
                ProcessLifecycleOwner.Api29Impl.registerActivityLifecycleCallbacks(activity, new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(Activity activity2) {
                        Intrinsics.checkNotNullParameter(activity2, "activity");
                        processLifecycleOwner.activityStarted$lifecycle_process();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(Activity activity2) {
                        Intrinsics.checkNotNullParameter(activity2, "activity");
                        processLifecycleOwner.activityResumed$lifecycle_process();
                    }
                });
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.Companion.get(activity).setProcessListener(this.this$0.initializationListener);
                }
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                this.this$0.activityPaused$lifecycle_process();
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                this.this$0.activityStopped$lifecycle_process();
            }
        });
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.registry;
    }

    public static final class Api29Impl {
        public static final Api29Impl INSTANCE = new Api29Impl();

        private Api29Impl() {
        }

        public static final void registerActivityLifecycleCallbacks(Activity activity, Application.ActivityLifecycleCallbacks callback) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(callback, "callback");
            activity.registerActivityLifecycleCallbacks(callback);
        }
    }
}
