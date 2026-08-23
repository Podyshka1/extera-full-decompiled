package androidx.view;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.view.Lifecycle;
import androidx.view.ProcessLifecycleOwner;
import androidx.view.ReportFragment;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 '2\u00020\u0001:\u0002'(B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0014J\r\u0010\u0015\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0016J\r\u0010\u0017\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0018J\r\u0010\u0019\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u001aJ\r\u0010\u001b\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u001cJ\r\u0010\u001d\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u001eJ\u0015\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!H\u0000¢\u0006\u0002\b\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020$8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u0006)"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleOwner;", "Landroidx/lifecycle/LifecycleOwner;", "<init>", "()V", "startedCounter", _UrlKt.FRAGMENT_ENCODE_SET, "resumedCounter", "pauseSent", _UrlKt.FRAGMENT_ENCODE_SET, "stopSent", "handler", "Landroid/os/Handler;", "registry", "Landroidx/lifecycle/LifecycleRegistry;", "delayedPauseRunnable", "Ljava/lang/Runnable;", "initializationListener", "Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;", "activityStarted", _UrlKt.FRAGMENT_ENCODE_SET, "activityStarted$lifecycle_process", "activityResumed", "activityResumed$lifecycle_process", "activityPaused", "activityPaused$lifecycle_process", "activityStopped", "activityStopped$lifecycle_process", "dispatchPauseIfNeeded", "dispatchPauseIfNeeded$lifecycle_process", "dispatchStopIfNeeded", "dispatchStopIfNeeded$lifecycle_process", "attach", "context", "Landroid/content/Context;", "attach$lifecycle_process", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "getLifecycle", "()Landroidx/lifecycle/Lifecycle;", "Companion", "Api29Impl", "lifecycle-process"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProcessLifecycleOwner implements LifecycleOwner {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
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
            ProcessLifecycleOwner.m1721$r8$lambda$ArPpV1aF4irVIoizc48o3VfLys(this.f$0);
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

    /* JADX INFO: renamed from: $r8$lambda$ArPpV1aF4irVI-oizc48o3VfLys, reason: not valid java name */
    public static void m1721$r8$lambda$ArPpV1aF4irVIoizc48o3VfLys(ProcessLifecycleOwner processLifecycleOwner) {
        processLifecycleOwner.dispatchPauseIfNeeded$lifecycle_process();
        processLifecycleOwner.dispatchStopIfNeeded$lifecycle_process();
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0001¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleOwner$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/lifecycle/LifecycleOwner;", "get", "()Landroidx/lifecycle/LifecycleOwner;", "Landroid/content/Context;", "context", _UrlKt.FRAGMENT_ENCODE_SET, "init$lifecycle_process", "(Landroid/content/Context;)V", "init", "Landroidx/lifecycle/ProcessLifecycleOwner;", "newInstance", "Landroidx/lifecycle/ProcessLifecycleOwner;", "lifecycle-process"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LifecycleOwner get() {
            return ProcessLifecycleOwner.newInstance;
        }

        @JvmStatic
        public final void init$lifecycle_process(Context context) {
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
                this.handler.removeCallbacks(this.delayedPauseRunnable);
            }
        }
    }

    public final void activityPaused$lifecycle_process() {
        int i = this.resumedCounter - 1;
        this.resumedCounter = i;
        if (i == 0) {
            this.handler.postDelayed(this.delayedPauseRunnable, 700L);
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
        this.handler = new Handler();
        this.registry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPreCreated(Activity activity, Bundle savedInstanceState) {
                final ProcessLifecycleOwner processLifecycleOwner = this.this$0;
                ProcessLifecycleOwner.Api29Impl.registerActivityLifecycleCallbacks(activity, new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(Activity activity2) {
                        processLifecycleOwner.activityStarted$lifecycle_process();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(Activity activity2) {
                        processLifecycleOwner.activityResumed$lifecycle_process();
                    }
                });
            }

            @Override // androidx.view.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.INSTANCE.get(activity).setProcessListener(this.this$0.initializationListener);
                }
            }

            @Override // androidx.view.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                this.this$0.activityPaused$lifecycle_process();
            }

            @Override // androidx.view.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                this.this$0.activityStopped$lifecycle_process();
            }
        });
    }

    @Override // androidx.view.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.registry;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleOwner$Api29Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "registerActivityLifecycleCallbacks", _UrlKt.FRAGMENT_ENCODE_SET, "activity", "Landroid/app/Activity;", Callback.METHOD_NAME, "Landroid/app/Application$ActivityLifecycleCallbacks;", "lifecycle-process"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Api29Impl {
        public static final Api29Impl INSTANCE = new Api29Impl();

        private Api29Impl() {
        }

        @JvmStatic
        public static final void registerActivityLifecycleCallbacks(Activity activity, Application.ActivityLifecycleCallbacks callback) {
            activity.registerActivityLifecycleCallbacks(callback);
        }
    }
}
