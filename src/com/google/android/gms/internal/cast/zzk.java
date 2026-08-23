package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.p003dx.p006io.Opcodes;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzk {
    private static final Logger zza = new Logger("ApplicationAnalytics");
    private final zzg zzb;
    private final zzaf zzc;
    private final zzm zzd;
    private final SharedPreferences zzg;
    private zzl zzh;
    private CastSession zzi;
    private boolean zzj;
    private final Handler zzf = new zzed(Looper.getMainLooper());
    private final Runnable zze = new Runnable() { // from class: com.google.android.gms.internal.cast.zzh
        @Override // java.lang.Runnable
        public final void run() {
            zzk.zzf(this.zza);
        }
    };

    public zzk(SharedPreferences sharedPreferences, zzg zzgVar, zzaf zzafVar, Bundle bundle, String str) {
        this.zzg = sharedPreferences;
        this.zzb = zzgVar;
        this.zzc = zzafVar;
        this.zzd = new zzm(bundle, str);
    }

    public static /* synthetic */ void zzf(zzk zzkVar) {
        zzl zzlVar = zzkVar.zzh;
        if (zzlVar != null) {
            zzkVar.zzb.zze(zzkVar.zzd.zza(zzlVar), Opcodes.XOR_INT_LIT8);
        }
        zzkVar.zzu();
    }

    static /* bridge */ /* synthetic */ void zzm(zzk zzkVar, int i) {
        zza.m336d("log session ended with error = %d", Integer.valueOf(i));
        zzkVar.zzs();
        zzkVar.zzb.zze(zzkVar.zzd.zze(zzkVar.zzh, i), 228);
        zzkVar.zzr();
        if (zzkVar.zzj) {
            return;
        }
        zzkVar.zzh = null;
    }

    static /* bridge */ /* synthetic */ void zzn(zzk zzkVar, SharedPreferences sharedPreferences, String str) {
        boolean z = false;
        if (zzkVar.zzx(str)) {
            zza.m336d("Use the existing ApplicationAnalyticsSession if it is available and valid.", new Object[0]);
            Preconditions.checkNotNull(zzkVar.zzh);
            return;
        }
        zzkVar.zzh = zzl.zzb(sharedPreferences, zzkVar.zzc);
        if (zzkVar.zzx(str)) {
            zza.m336d("Use the restored ApplicationAnalyticsSession if it is valid.", new Object[0]);
            Preconditions.checkNotNull(zzkVar.zzh);
            zzl.zza = zzkVar.zzh.zzd + 1;
            return;
        }
        zza.m336d("The restored ApplicationAnalyticsSession is not valid, create a new one.", new Object[0]);
        zzl zzlVarZza = zzl.zza(zzkVar.zzc);
        zzkVar.zzh = zzlVarZza;
        zzl zzlVar = (zzl) Preconditions.checkNotNull(zzlVarZza);
        CastSession castSession = zzkVar.zzi;
        if (castSession != null && castSession.zzl()) {
            z = true;
        }
        zzlVar.zzi = z;
        ((zzl) Preconditions.checkNotNull(zzkVar.zzh)).zzb = zzq();
        ((zzl) Preconditions.checkNotNull(zzkVar.zzh)).zzf = str;
    }

    private static String zzq() {
        return ((CastContext) Preconditions.checkNotNull(CastContext.getSharedInstance())).getCastOptions().getReceiverApplicationId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzr() {
        this.zzf.removeCallbacks(this.zze);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzs() {
        if (!zzw()) {
            zza.m341w("The analyticsSession should not be null for logging. Create a dummy one.", new Object[0]);
            zzt();
            return;
        }
        CastSession castSession = this.zzi;
        CastDevice castDevice = castSession != null ? castSession.getCastDevice() : null;
        if (castDevice != null && !TextUtils.equals(this.zzh.zzc, castDevice.zzc())) {
            zzv(castDevice);
        }
        Preconditions.checkNotNull(this.zzh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzt() {
        zza.m336d("Create a new ApplicationAnalyticsSession based on CastSession", new Object[0]);
        zzl zzlVarZza = zzl.zza(this.zzc);
        this.zzh = zzlVarZza;
        zzl zzlVar = (zzl) Preconditions.checkNotNull(zzlVarZza);
        CastSession castSession = this.zzi;
        zzlVar.zzi = castSession != null && castSession.zzl();
        ((zzl) Preconditions.checkNotNull(this.zzh)).zzb = zzq();
        CastSession castSession2 = this.zzi;
        CastDevice castDevice = castSession2 == null ? null : castSession2.getCastDevice();
        if (castDevice != null) {
            zzv(castDevice);
        }
        zzl zzlVar2 = (zzl) Preconditions.checkNotNull(this.zzh);
        CastSession castSession3 = this.zzi;
        zzlVar2.zzj = castSession3 != null ? castSession3.zzm() : 0;
        Preconditions.checkNotNull(this.zzh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzu() {
        ((Handler) Preconditions.checkNotNull(this.zzf)).postDelayed((Runnable) Preconditions.checkNotNull(this.zze), 300000L);
    }

    private final void zzv(CastDevice castDevice) {
        zzl zzlVar = this.zzh;
        if (zzlVar == null) {
            return;
        }
        zzlVar.zzc = castDevice.zzc();
        zzlVar.zzg = castDevice.zza();
        zzlVar.zzh = castDevice.getModelName();
    }

    private final boolean zzw() {
        String str;
        if (this.zzh == null) {
            zza.m336d("The analytics session is null when matching with application ID.", new Object[0]);
            return false;
        }
        String strZzq = zzq();
        if (strZzq == null || (str = this.zzh.zzb) == null || !TextUtils.equals(str, strZzq)) {
            zza.m336d("The analytics session doesn't match the application ID %s", strZzq);
            return false;
        }
        Preconditions.checkNotNull(this.zzh);
        return true;
    }

    private final boolean zzx(String str) {
        String str2;
        if (!zzw()) {
            return false;
        }
        Preconditions.checkNotNull(this.zzh);
        if (str != null && (str2 = this.zzh.zzf) != null && TextUtils.equals(str2, str)) {
            return true;
        }
        zza.m336d("The analytics session doesn't match the receiver session ID %s.", str);
        return false;
    }
}
