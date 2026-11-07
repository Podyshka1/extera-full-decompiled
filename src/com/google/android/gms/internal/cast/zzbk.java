package com.google.android.gms.internal.cast;

import android.app.Activity;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.RelativeLayout;
import com.google.android.gms.cast.framework.C1443R;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.internal.featurehighlight.HelpTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbk extends RelativeLayout implements IntroductoryOverlay {
    private final boolean zza;
    private Activity zzb;
    private IntroductoryOverlay.OnOverlayDismissedListener zzc;
    private View zzd;
    private String zze;
    private boolean zzf;
    private int zzg;

    public zzbk(IntroductoryOverlay.Builder builder) {
        super(builder.zza());
        this.zzb = builder.zza();
        this.zza = builder.zze();
        this.zzc = builder.zzc();
        this.zzd = builder.zzb();
        this.zze = builder.zzf();
        this.zzg = builder.zzd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final void zza() {
        removeAllViews();
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        this.zzg = 0;
        this.zzf = false;
    }

    @Override // com.google.android.gms.cast.framework.IntroductoryOverlay
    public final void remove() {
        Activity activity;
        if (!this.zzf || (activity = this.zzb) == null) {
            return;
        }
        ((ViewGroup) activity.getWindow().getDecorView()).removeView(this);
        zza();
    }

    @Override // com.google.android.gms.cast.framework.IntroductoryOverlay
    public final void show() {
        View view;
        Activity activity = this.zzb;
        if (activity == null || (view = this.zzd) == null || this.zzf) {
            return;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) activity.getSystemService("accessibility");
        if (accessibilityManager != null && accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        if (this.zza && PreferenceManager.getDefaultSharedPreferences(activity).getBoolean("googlecast-introOverlayShown", false)) {
            zza();
            return;
        }
        com.google.android.gms.cast.framework.internal.featurehighlight.zzh zzhVar = new com.google.android.gms.cast.framework.internal.featurehighlight.zzh(activity);
        int i = this.zzg;
        if (i != 0) {
            zzhVar.zzf(i);
        }
        addView(zzhVar);
        HelpTextView helpTextView = (HelpTextView) activity.getLayoutInflater().inflate(C1443R.layout.cast_help_text, (ViewGroup) zzhVar, false);
        helpTextView.setText(this.zze, null);
        zzhVar.zzn(helpTextView);
        zzhVar.zza(view, null, true, new zzbj(this, activity, zzhVar));
        this.zzf = true;
        ((ViewGroup) activity.getWindow().getDecorView()).addView(this);
        zzhVar.zzb(null);
    }

    public final /* synthetic */ IntroductoryOverlay.OnOverlayDismissedListener zzb() {
        return this.zzc;
    }

    public final /* synthetic */ boolean zzc() {
        return this.zzf;
    }
}
