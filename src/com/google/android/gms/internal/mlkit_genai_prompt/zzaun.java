package com.google.android.gms.internal.mlkit_genai_prompt;

import android.annotation.SuppressLint;
import android.os.SystemClock;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.common.StreamingCallback;
import com.google.mlkit.genai.common.internal.GenAiUtils;
import j$.time.Duration;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaun implements AutoCloseable {
    private final zzdi zza;
    private final int zzb;
    private final zzaty zzc;
    private volatile zzdq zzd;
    private zzdp zze;
    private boolean zzf = true;

    public zzaun(ExecutorService executorService, int i, int i2, zzaty zzatyVar) {
        zzdk zzdkVarZzh = zzdn.zzh(MlKitContext.getInstance().getApplicationContext());
        zzdkVarZzh.zzd(Duration.ofMinutes(10L));
        if (executorService != null) {
            zzdkVarZzh.zza(executorService);
        }
        this.zza = new zzgl(zzdkVarZzh.zzi());
        this.zzb = i;
        this.zzc = zzatyVar;
        zzatyVar.zza();
    }

    private static int zza(zzdq zzdqVar) {
        if (zzdqVar != null) {
            return zzdqVar.zzf();
        }
        return -1;
    }

    private final synchronized ListenableFuture zzb() {
        if (this.zzd != null) {
            return zzot.zza(this.zzd);
        }
        zzdi zzdiVar = this.zza;
        if (GenAiUtils.isAiCoreCompatible(zzdiVar.zzg())) {
            return zzot.zzg(zzdiVar.zza(this.zzb, -1), new zzks() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzauk
                @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzks
                public final /* synthetic */ Object zza(Object obj) {
                    zzdq zzdqVar = (zzdq) obj;
                    this.zza.zzx(zzdqVar);
                    return zzdqVar;
                }
            }, zzdiVar.zze());
        }
        return zzot.zzc(new GenAiException(null, -101));
    }

    @SuppressLint({"WrongConstant"})
    private final ListenableFuture zzc(ListenableFuture listenableFuture, final zzaua zzauaVar) {
        return zzot.zze(listenableFuture, Throwable.class, new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzauc
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                GenAiException genAiException;
                GenAiException genAiException2;
                Throwable th = (Throwable) obj;
                if (th instanceof GenAiException) {
                    genAiException2 = (GenAiException) th;
                } else {
                    if (th instanceof zzdo) {
                        zzdo zzdoVar = (zzdo) th;
                        genAiException = new GenAiException(zzdoVar, zzdoVar.zzg(), zzdoVar.zzh());
                    } else {
                        genAiException = th instanceof CancellationException ? new GenAiException(zzlb.zza(th.getMessage()), th, 7) : new GenAiException(zzlb.zza(th.getMessage()), th, 0);
                    }
                    genAiException2 = genAiException;
                }
                zzauaVar.zza(genAiException2);
                return zzot.zzc(genAiException2);
            }
        }, this.zza.zze());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final /* synthetic */ ListenableFuture zzs(Object obj, zzdp zzdpVar) {
        try {
            return zzdpVar.zzc(zze(obj, null), true);
        } catch (GenAiException e) {
            return zzot.zzc(e);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.zza.close();
        this.zzf = true;
        this.zzc.zzc();
    }

    public abstract zzdp zzd(zzdi zzdiVar, zzdq zzdqVar);

    public abstract Object zze(Object obj, StreamingCallback streamingCallback);

    public abstract Object zzf(Object obj);

    public final ListenableFuture zzi() {
        return zzc(zzot.zzf(zzb(), zzaum.zza, this.zza.zze()), zzaua.zzb);
    }

    public final ListenableFuture zzj() {
        zzdi zzdiVar = this.zza;
        return !GenAiUtils.isAiCoreCompatible(zzdiVar.zzg()) ? zzot.zza(0) : zzc(zzot.zzf(zzb(), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzaub
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return this.zza.zzq((zzdq) obj);
            }
        }, zzdiVar.zze()), zzaua.zzb);
    }

    public final ListenableFuture zzk(final DownloadCallback downloadCallback) {
        return zzc(zzot.zzf(zzb(), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzaud
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return this.zza.zzr(downloadCallback, (zzdq) obj);
            }
        }, this.zza.zze()), zzaua.zzb);
    }

    public final ListenableFuture zzl() {
        return zzc(zzot.zzf(zzo(), zzatx.zza, this.zza.zze()), zzaua.zzb);
    }

    public final ListenableFuture zzm(final Object obj) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        ListenableFuture listenableFutureZzo = zzo();
        zzoj zzojVar = new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzaue
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                return this.zza.zzs(obj, (zzdp) obj2);
            }
        };
        zzdi zzdiVar = this.zza;
        return zzc(zzot.zzg(zzot.zzf(listenableFutureZzo, zzojVar, zzdiVar.zze()), new zzks() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzauf
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzks
            public final /* synthetic */ Object zza(Object obj2) {
                zzdz zzdzVar = (zzdz) obj2;
                this.zza.zzt(jElapsedRealtime, obj, zzdzVar);
                return zzdzVar;
            }
        }, zzdiVar.zze()), new zzaua() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzaug
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaua
            public final /* synthetic */ void zza(GenAiException genAiException) {
                this.zza.zzu(obj, genAiException);
            }
        });
    }

    public final ListenableFuture zzn(final Object obj, StreamingCallback streamingCallback) {
        final zzaun zzaunVar;
        final zzatw zzatwVar;
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final AtomicLong atomicLong = new AtomicLong();
        if (streamingCallback != null) {
            zzaunVar = this;
            zzatwVar = new zzatw(zzaunVar, atomicLong, jElapsedRealtime, streamingCallback);
        } else {
            zzaunVar = this;
            zzatwVar = null;
        }
        ListenableFuture listenableFutureZzo = zzaunVar.zzo();
        zzoj zzojVar = new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzauh
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                return ((zzdp) obj2).zzb(this.zza.zze(obj, zzatwVar));
            }
        };
        zzdi zzdiVar = zzaunVar.zza;
        return zzaunVar.zzc(zzot.zzg(zzot.zzf(listenableFutureZzo, zzojVar, zzdiVar.zze()), new zzks() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzaui
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzks
            public final /* synthetic */ Object zza(Object obj2) {
                return this.zza.zzv(atomicLong, jElapsedRealtime, obj, obj2);
            }
        }, zzdiVar.zze()), new zzaua() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzauj
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaua
            public final /* synthetic */ void zza(GenAiException genAiException) {
                this.zza.zzw(obj, genAiException);
            }
        });
    }

    public final ListenableFuture zzo() {
        zzdp zzdpVar = this.zze;
        return zzdpVar != null ? zzot.zza(zzdpVar) : zzot.zzg(zzb(), new zzks() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzaul
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzks
            public final /* synthetic */ Object zza(Object obj) {
                return this.zza.zzy((zzdq) obj);
            }
        }, this.zza.zze());
    }

    public final ExecutorService zzp() {
        return this.zza.zze();
    }

    public final /* synthetic */ ListenableFuture zzq(zzdq zzdqVar) {
        return zzdqVar != null ? this.zza.zzb(zzdqVar) : zzot.zza(0);
    }

    public final /* synthetic */ ListenableFuture zzr(DownloadCallback downloadCallback, zzdq zzdqVar) {
        return this.zza.zzc(zzdqVar, new zzatv(this, downloadCallback));
    }

    public final /* synthetic */ zzdz zzt(long j, Object obj, zzdz zzdzVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        zzars zzarsVar = new zzars();
        zzarsVar.zzb(zzant.NO_ERROR);
        zzarsVar.zza(Integer.valueOf(zza(this.zzd)));
        zzarsVar.zzc(Boolean.valueOf(this.zzf));
        zzarsVar.zzf(Long.valueOf(jElapsedRealtime));
        this.zzf = false;
        this.zzc.zzi(zzarsVar, obj, zzdzVar.zza(), Duration.ofMillis(jElapsedRealtime));
        return zzdzVar;
    }

    public final /* synthetic */ void zzu(Object obj, GenAiException genAiException) {
        this.zzc.zzj(obj, zza(this.zzd), genAiException.getErrorCode());
    }

    public final /* synthetic */ Object zzv(AtomicLong atomicLong, long j, Object obj, Object obj2) {
        zzars zzarsVar = new zzars();
        zzarsVar.zzb(zzant.NO_ERROR);
        zzarsVar.zza(Integer.valueOf(zza(this.zzd)));
        zzarsVar.zzc(Boolean.valueOf(this.zzf));
        zzarsVar.zzg(Long.valueOf(atomicLong.get()));
        zzarsVar.zzf(Long.valueOf(SystemClock.elapsedRealtime() - j));
        this.zzf = false;
        Object objZzf = zzf(obj2);
        this.zzc.zzd(zzarsVar, obj, objZzf);
        return objZzf;
    }

    public final /* synthetic */ void zzw(Object obj, GenAiException genAiException) {
        this.zzc.zzh(obj, zza(this.zzd), genAiException.getErrorCode());
    }

    public final /* synthetic */ zzdq zzx(zzdq zzdqVar) {
        this.zzd = zzdqVar;
        return zzdqVar;
    }

    public final /* synthetic */ zzdp zzy(zzdq zzdqVar) {
        zzdp zzdpVarZzd = zzd(this.zza, zzdqVar);
        this.zze = zzdpVarZzd;
        return zzdpVarZzd;
    }
}
