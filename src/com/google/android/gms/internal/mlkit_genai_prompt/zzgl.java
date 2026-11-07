package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserManager;
import android.util.Log;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class zzgl implements IBinder.DeathRecipient, zzdi {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final String zzc = "zzgl";
    private static final ComponentName zzd;
    private static final ComponentName zze;
    protected final Context zza;
    private final zzpc zzf;
    private final Executor zzg;
    private final boolean zzh;
    private final long zzi;
    private final ScheduledExecutorService zzj;
    private final UserManager zzk;
    private final boolean zzl;
    private final Object zzm = new Object();
    private zzgb zzn;
    private ScheduledFuture zzo;

    static {
        ComponentName componentName = new ComponentName("com.google.android.aicore", "com.google.android.apps.aicore.service.multiuser.AiCoreMultiUserService");
        zzd = componentName;
        zze = new ComponentName(componentName.getPackageName(), "com.google.android.apps.aicore.service.AiCoreService");
    }

    public zzgl(zzdn zzdnVar) {
        Context contextZza = zzdnVar.zza();
        this.zza = contextZza;
        this.zzf = zzpi.zzb(zzdnVar.zzb());
        this.zzg = zzdnVar.zzc();
        this.zzh = zzdnVar.zzd();
        this.zzi = zzdnVar.zze().toMillis();
        this.zzj = zzdnVar.zzf();
        this.zzk = (UserManager) contextZza.getSystemService("user");
        this.zzl = ((Boolean) zzdnVar.zzg().orElse(Boolean.TRUE)).booleanValue();
    }

    public static /* synthetic */ ListenableFuture zzk(int i, int i2, zzan zzanVar) {
        try {
            if (zzanVar.zzg() < 6) {
                return zzot.zzc(zzdo.zzc(8, "getFeatureOrControl is not supported before AICoreVersion V7", null));
            }
            zzn zznVarZzd = zzanVar.zzd(i, -1);
            return zznVarZzd == null ? zzot.zzc(zzdo.zzf(String.format(Locale.ENGLISH, "Feature %d is not available.", Integer.valueOf(i)))) : zzot.zza(zzdq.zzi(zznVarZzd));
        } catch (RemoteException e) {
            Log.e(zzc, "AiCore service failed to get feature.", e);
            return zzot.zzc(zzdo.zzc(6, "AiCore service failed to get feature.", e));
        }
    }

    public static /* synthetic */ ListenableFuture zzl(zzdq zzdqVar, zzan zzanVar) {
        try {
            return zzot.zza(Integer.valueOf(zzanVar.zze(zzdqVar.zzj())));
        } catch (RemoteException e) {
            Log.e(zzc, "AiCore service failed to get feature status for ".concat(zzdqVar.zza()), e);
            return zzot.zzc(zzdo.zzc(6, "AiCore service failed to get feature status for ".concat(zzdqVar.zza()), e));
        }
    }

    public static final ComponentName zzt() {
        return zzd;
    }

    private final void zzu() {
        long j = this.zzi;
        if (j <= 0) {
            return;
        }
        synchronized (this.zzm) {
            try {
                ScheduledFuture scheduledFuture = this.zzo;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.zzo = this.zzj.schedule(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgf
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        this.zza.zzm();
                    }
                }, j, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied(IBinder iBinder) {
        Log.i(zzc, "Binder died for component: ".concat(String.valueOf(iBinder)));
        zzj();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi, java.lang.AutoCloseable
    public final void close() {
        zzj();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final ListenableFuture zza(final int i, int i2) {
        final int i3 = -1;
        return zzot.zzf(zzi(), new zzoj(i, i3) { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgi
            private final /* synthetic */ int zza;

            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgl.zzk(this.zza, -1, (zzan) obj);
            }
        }, this.zzf);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final ListenableFuture zzb(final zzdq zzdqVar) {
        return zzot.zzf(zzi(), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgd
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgl.zzl(zzdqVar, (zzan) obj);
            }
        }, this.zzf);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final ListenableFuture zzc(final zzdq zzdqVar, final zzdy zzdyVar) {
        return zzot.zzf(zzd(), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzge
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                final zzgl zzglVar = this.zza;
                final zzdh zzdhVar = (zzdh) obj;
                final zzdq zzdqVar2 = zzdqVar;
                final zzdy zzdyVar2 = zzdyVar;
                return zzdhVar.zzb().zza(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgg
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        return zzglVar.zzn(zzdhVar, zzdqVar2, zzdyVar2, completer);
                    }
                }), zzgh.zza);
            }
        }, this.zzf);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final ListenableFuture zzd() {
        zzgb zzgkVar;
        zzpk zzpkVar;
        UserManager userManager = this.zzk;
        byte[] bArr = null;
        if (userManager == null || !userManager.isUserUnlocked()) {
            return zzot.zzc(zzdo.zze(601, "User is not unlocked.", null));
        }
        synchronized (this.zzm) {
            try {
                zzu();
                zzgkVar = this.zzn;
                if (zzgkVar == null) {
                    zzgkVar = new zzgk(this, bArr);
                    this.zzn = zzgkVar;
                    zzgkVar.zzb();
                }
            } finally {
            }
        }
        synchronized (zzgkVar.zza) {
            try {
                if (zzgkVar.zzb.isCancelled()) {
                    zzgkVar.zza();
                }
                zzpkVar = zzgkVar.zzb;
            } finally {
            }
        }
        return zzpkVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final zzpc zze() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final Executor zzf() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final Context zzg() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdi
    public final boolean zzh() {
        return this.zzl;
    }

    public final ListenableFuture zzi() {
        zzu();
        return (zzom) zzot.zzg(zzom.zzv(zzd()), zzgc.zza, zzpi.zza());
    }

    public final void zzj() {
        synchronized (this.zzm) {
            try {
                zzgb zzgbVar = this.zzn;
                if (zzgbVar != null) {
                    zzgbVar.zzc();
                    this.zzn = null;
                }
                ScheduledFuture scheduledFuture = this.zzo;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                    this.zzo = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzm() {
        Log.i(zzc, "Cleaning up due to autoUnbind.");
        zzj();
    }

    public final /* synthetic */ Object zzn(zzdh zzdhVar, zzdq zzdqVar, zzdy zzdyVar, CallbackToFutureAdapter.Completer completer) {
        try {
            zzdhVar.zza().zzf(zzdqVar.zzj(), new zzga(this, zzdyVar, zzdqVar, completer));
            return "requestDownloadableFeatureFuture";
        } catch (RemoteException e) {
            Log.e(zzc, "AiCore service failed to download feature ".concat(zzdqVar.zza()), e);
            completer.setException(zzdo.zza(6, "AICore service failed to download feature ".concat(zzdqVar.zza()), e));
            return "requestDownloadableFeatureFuture";
        } catch (RuntimeException e2) {
            Log.e(zzc, "AiCore service failed to download feature due to runtime error ".concat(zzdqVar.zza()), e2);
            completer.setException(zzdo.zza(0, "AICore service failed to download feature due to runtime error ".concat(zzdqVar.zza()), e2));
            return "requestDownloadableFeatureFuture";
        }
    }

    public final /* synthetic */ boolean zzo() {
        UserManager userManager = this.zzk;
        return userManager != null && userManager.isSystemUser();
    }

    public final /* synthetic */ Executor zzr() {
        return this.zzg;
    }

    public final /* synthetic */ boolean zzs() {
        return this.zzh;
    }
}
