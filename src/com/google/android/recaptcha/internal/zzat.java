package com.google.android.recaptcha.internal;

import android.app.Dialog;
import android.view.Window;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

/* JADX INFO: loaded from: classes5.dex */
public final class zzat extends FragmentManager.FragmentLifecycleCallbacks {
    private final zzav zza;
    private zzbd zzb;

    public zzat(zzav zzavVar) {
        this.zza = zzavVar;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public final void onFragmentDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        super.onFragmentDestroyed(fragmentManager, fragment);
        this.zzb = null;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public final void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        Dialog dialog;
        Window window;
        super.onFragmentResumed(fragmentManager, fragment);
        DialogFragment dialogFragment = fragment instanceof DialogFragment ? (DialogFragment) fragment : null;
        if (dialogFragment == null || (dialog = dialogFragment.getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        zzbd zzbdVar = new zzbd(window, fragment.getClass().getSimpleName(), this.zza);
        this.zzb = zzbdVar;
        zzbdVar.zza();
    }
}
