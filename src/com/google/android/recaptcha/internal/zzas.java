package com.google.android.recaptcha.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.Window;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;

/* JADX INFO: loaded from: classes5.dex */
public final class zzas implements Application.ActivityLifecycleCallbacks {
    private final zzav zza;
    private zzbd zzb;
    private zzat zzc;

    public zzas(zzav zzavVar) {
        this.zza = zzavVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        FragmentManager supportFragmentManager;
        Window window = activity.getWindow();
        String simpleName = activity.getClass().getSimpleName();
        zzav zzavVar = this.zza;
        zzbd zzbdVar = new zzbd(window, simpleName, zzavVar);
        this.zzb = zzbdVar;
        zzbdVar.zza();
        zzat zzatVar = new zzat(zzavVar);
        this.zzc = zzatVar;
        FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        supportFragmentManager.registerFragmentLifecycleCallbacks(zzatVar, true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        FragmentManager supportFragmentManager;
        zzat zzatVar = this.zzc;
        if (zzatVar != null) {
            FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
            if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
                return;
            }
            supportFragmentManager.unregisterFragmentLifecycleCallbacks(zzatVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
