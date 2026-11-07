package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class zzn {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzb = new Logger("ApplicationAnalytics");
    private final zzj zzc;
    private final zzax zzd;
    private final zzp zze;
    private final SharedPreferences zzh;
    private zzo zzi;
    private CastSession zzj;
    private boolean zzk;
    private final Handler zzg = new zzfk(Looper.getMainLooper());
    private final Runnable zzf = new Runnable() { // from class: com.google.android.gms.internal.cast.zzk
        @Override // java.lang.Runnable
        public final /* synthetic */ void run() {
            this.zza.zza();
        }
    };

    public zzn(SharedPreferences sharedPreferences, zzj zzjVar, zzax zzaxVar, Bundle bundle, String str) {
        this.zzh = sharedPreferences;
        this.zzc = zzjVar;
        this.zzd = zzaxVar;
        this.zze = new zzp(bundle, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public final void zzb() {
        ((Handler) Preconditions.checkNotNull(this.zzg)).postDelayed((Runnable) Preconditions.checkNotNull(this.zzf), 300000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public final void zzc() {
        this.zzg.removeCallbacks(this.zzf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNull({"analyticsSession"})
    /* JADX INFO: renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public final void zzd() {
        zzb.m287d("Create a new ApplicationAnalyticsSession based on CastSession", new Object[0]);
        zzo zzoVarZza = zzo.zza(this.zzd);
        this.zzi = zzoVarZza;
        zzo zzoVar = (zzo) Preconditions.checkNotNull(zzoVarZza);
        CastSession castSession = this.zzj;
        zzoVar.zzo = castSession != null && castSession.zzd();
        ((zzo) Preconditions.checkNotNull(this.zzi)).zzb = zzx();
        CastSession castSession2 = this.zzj;
        CastDevice castDevice = castSession2 == null ? null : castSession2.getCastDevice();
        if (castDevice != null) {
            zzu(castDevice);
        }
        zzo zzoVar2 = (zzo) Preconditions.checkNotNull(this.zzi);
        CastSession castSession3 = this.zzj;
        zzoVar2.zzp = castSession3 != null ? castSession3.zzm() : 0;
        Preconditions.checkNotNull(this.zzi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNull({"analyticsSession"})
    /* JADX INFO: renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public final void zze() {
        if (!zzv()) {
            zzb.m294w("The analyticsSession should not be null for logging. Create a dummy one.", new Object[0]);
            zzd();
            return;
        }
        CastSession castSession = this.zzj;
        CastDevice castDevice = castSession != null ? castSession.getCastDevice() : null;
        if (castDevice != null && !TextUtils.equals(this.zzi.zzc, castDevice.zza())) {
            zzu(castDevice);
        }
        Preconditions.checkNotNull(this.zzi);
    }

    private final void zzu(CastDevice castDevice) {
        zzo zzoVar = this.zzi;
        if (zzoVar == null) {
            return;
        }
        zzoVar.zzc = castDevice.zza();
        zzoVar.zzg = castDevice.zzc();
        zzoVar.zzh = castDevice.getModelName();
        zzoVar.zzn = castDevice.zzd();
        com.google.android.gms.cast.internal.zzaa zzaaVarZzb = castDevice.zzb();
        if (zzaaVarZzb != null) {
            String strZza = zzaaVarZzb.zza();
            if (strZza != null) {
                zzoVar.zzi = strZza;
            }
            String strZzb = zzaaVarZzb.zzb();
            if (strZzb != null) {
                zzoVar.zzj = strZzb;
            }
            String strZzc = zzaaVarZzb.zzc();
            if (strZzc != null) {
                zzoVar.zzk = strZzc;
            }
            String strZzd = zzaaVarZzb.zzd();
            if (strZzd != null) {
                zzoVar.zzl = strZzd;
            }
            String strZze = zzaaVarZzb.zze();
            if (strZze != null) {
                zzoVar.zzm = strZze;
            }
        }
    }

    @EnsuresNonNullIf(expression = {"analyticsSession"}, result = true)
    private final boolean zzv() {
        String str;
        if (this.zzi == null) {
            zzb.m287d("The analytics session is null when matching with application ID.", new Object[0]);
            return false;
        }
        String strZzx = zzx();
        if (strZzx == null || (str = this.zzi.zzb) == null || !TextUtils.equals(str, strZzx)) {
            zzb.m287d("The analytics session doesn't match the application ID %s", strZzx);
            return false;
        }
        Preconditions.checkNotNull(this.zzi);
        return true;
    }

    private final boolean zzw(String str) {
        String str2;
        if (!zzv()) {
            return false;
        }
        Preconditions.checkNotNull(this.zzi);
        if (str != null && (str2 = this.zzi.zzf) != null && TextUtils.equals(str2, str)) {
            return true;
        }
        zzb.m287d("The analytics session doesn't match the receiver session ID %s.", str);
        return false;
    }

    @Pure
    private static String zzx() {
        return ((CastContext) Preconditions.checkNotNull(CastContext.getSharedInstance())).getCastOptions().getReceiverApplicationId();
    }

    public final /* synthetic */ void zza() {
        zzo zzoVar = this.zzi;
        if (zzoVar != null) {
            this.zzc.zzd(this.zze.zza(zzoVar), Opcodes.XOR_INT_LIT8);
        }
        zzb();
    }

    public final /* synthetic */ void zzf(SharedPreferences sharedPreferences, String str) {
        boolean z = false;
        if (zzw(str)) {
            zzb.m287d("Use the existing ApplicationAnalyticsSession if it is available and valid.", new Object[0]);
            Preconditions.checkNotNull(this.zzi);
            return;
        }
        zzax zzaxVar = this.zzd;
        this.zzi = zzo.zzc(sharedPreferences, zzaxVar);
        if (zzw(str)) {
            zzb.m287d("Use the restored ApplicationAnalyticsSession if it is valid.", new Object[0]);
            Preconditions.checkNotNull(this.zzi);
            zzo.zza = this.zzi.zzd + 1;
            return;
        }
        zzb.m287d("The restored ApplicationAnalyticsSession is not valid, create a new one.", new Object[0]);
        zzo zzoVarZza = zzo.zza(zzaxVar);
        this.zzi = zzoVarZza;
        zzo zzoVar = (zzo) Preconditions.checkNotNull(zzoVarZza);
        CastSession castSession = this.zzj;
        if (castSession != null && castSession.zzd()) {
            z = true;
        }
        zzoVar.zzo = z;
        ((zzo) Preconditions.checkNotNull(this.zzi)).zzb = zzx();
        ((zzo) Preconditions.checkNotNull(this.zzi)).zzf = str;
    }

    public final /* synthetic */ void zzg() {
        this.zzi.zzd(this.zzh);
    }

    public final /* synthetic */ void zzh(int i) {
        zzb.m287d("log session ended with error = %d", Integer.valueOf(i));
        zze();
        this.zzc.zzd(this.zze.zze(this.zzi, i), 228);
        zzc();
        if (this.zzk) {
            return;
        }
        this.zzi = null;
    }

    public final /* synthetic */ zzj zzj() {
        return this.zzc;
    }

    public final /* synthetic */ zzp zzk() {
        return this.zze;
    }

    public final /* synthetic */ SharedPreferences zzl() {
        return this.zzh;
    }

    public final /* synthetic */ zzo zzm() {
        return this.zzi;
    }

    public final /* synthetic */ void zzn(zzo zzoVar) {
        this.zzi = null;
    }

    public final /* synthetic */ void zzo(CastSession castSession) {
        this.zzj = castSession;
    }

    public final /* synthetic */ void zzp(boolean z) {
        this.zzk = z;
    }
}
