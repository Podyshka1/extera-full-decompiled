package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.RemoteException;
import android.util.Log;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzfv implements zzdp {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final String zzd = "zzfv";
    protected final zzdq zza;
    protected final zzpc zzb;
    private final zzdi zze;
    private final zzdy zzf;
    private final Executor zzg;
    private final Object zzh = new Object();
    private ListenableFuture zzi;
    private ListenableFuture zzj;
    private ListenableFuture zzk;

    public zzfv(zzdi zzdiVar, zzdq zzdqVar, zzdy zzdyVar) {
        this.zze = zzdiVar;
        this.zza = zzdqVar;
        this.zzf = zzdyVar;
        this.zzb = zzdiVar.zze();
        this.zzg = zzdiVar.zzf();
    }

    private final ListenableFuture zzd() {
        ListenableFuture listenableFutureZzb;
        ListenableFuture listenableFuture;
        synchronized (this.zzh) {
            try {
                ListenableFuture listenableFuture2 = this.zzj;
                zzdi zzdiVar = this.zze;
                if (listenableFuture2 == zzdiVar.zzd() && (listenableFuture = this.zzk) != null) {
                    return listenableFuture;
                }
                final zzdy zzdyVar = this.zzf;
                if (zzdiVar.zzh()) {
                    listenableFutureZzb = (zzom) zzot.zzf(zzom.zzv(zzdiVar.zzb(this.zza)), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfo
                        @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
                        public final /* synthetic */ ListenableFuture zza(Object obj) {
                            return this.zza.zzm(zzdyVar, (Integer) obj);
                        }
                    }, this.zzb);
                } else {
                    Log.i(zzd, "Auto-download is disabled, skipping download.");
                    listenableFutureZzb = zzot.zzb();
                }
                zzom zzomVarZzv = zzom.zzv(listenableFutureZzb);
                zzoj zzojVar = new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfm
                    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
                    public final /* synthetic */ ListenableFuture zza(Object obj) {
                        return this.zza.zzk((Void) obj);
                    }
                };
                zzpc zzpcVar = this.zzb;
                zzom zzomVar = (zzom) zzot.zzf((zzom) zzot.zzf(zzomVarZzv, zzojVar, zzpcVar), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfn
                    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
                    public final /* synthetic */ ListenableFuture zza(Object obj) {
                        return this.zza.zzl((zzdh) obj);
                    }
                }, zzpcVar);
                this.zzk = zzomVar;
                this.zzj = zzdiVar.zzd();
                zzot.zzh(zzomVar, new zzey(this), zzpi.zza());
                return zzomVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void zzp(zzav zzavVar) {
        if (zzavVar != null) {
            try {
                zzavVar.zzd();
            } catch (RemoteException e) {
                Log.w(zzd, "Failed to cancel inference", e);
            }
        }
    }

    public static /* synthetic */ void zzr(zzav zzavVar) {
        if (zzavVar != null) {
            try {
                zzavVar.zzd();
            } catch (RemoteException e) {
                Log.w(zzd, "Failed to cancel preparation of inference engine", e);
            }
        }
    }

    public static /* synthetic */ void zzt(zzav zzavVar) {
        try {
            zzavVar.zzd();
        } catch (RemoteException e) {
            Log.w(zzd, "Failed to cancel tokenization request", e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdp
    public final ListenableFuture zza() {
        return zzot.zzf(zzi(), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzez
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                final zzfv zzfvVar = this.zza;
                final zzfu zzfuVar = (zzfu) obj;
                return zzfuVar.zzb().zza(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfd
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        return zzfvVar.zzq(zzfuVar, completer);
                    }
                }), zzfe.zza);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdp
    public final ListenableFuture zzb(final Object obj) {
        return zzot.zzf(zzi(), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfj
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                final zzfv zzfvVar = this.zza;
                final zzfu zzfuVar = (zzfu) obj2;
                final Object obj3 = obj;
                return zzfuVar.zzb().zza(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfa
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        return zzfvVar.zzo(zzfuVar, obj3, completer);
                    }
                }), zzfb.zza);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdp
    public final ListenableFuture zzc(final Object obj, boolean z) {
        final boolean z2 = true;
        return zzot.zzf(zzi(), new zzoj(obj, z2) { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfs
            private final /* synthetic */ Object zzb;

            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                zzfu zzfuVar = (zzfu) obj2;
                return zzfuVar.zzb().zza(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this.zzb, true, zzfuVar) { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfg
                    private final /* synthetic */ Object zzb;
                    private final /* synthetic */ zzfu zzc;

                    {
                        this.zzc = zzfuVar;
                    }

                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        return this.zza.zzs(this.zzb, true, this.zzc, completer);
                    }
                }), zzfh.zza);
            }
        }, this.zzb);
    }

    public abstract Object zze(zzan zzanVar);

    public abstract zzav zzf(Object obj, Object obj2, zzgw zzgwVar);

    public abstract zzav zzg(Object obj, zzbn zzbnVar);

    public zzav zzh(Object obj, boolean z, Object obj2, zzbp zzbpVar) {
        Log.w(zzd, "getTokenInfo() is not supported.");
        zzbpVar.zzc(8);
        return new zzgv();
    }

    public final ListenableFuture zzi() {
        synchronized (this.zzh) {
            try {
                ListenableFuture listenableFuture = this.zzj;
                zzdi zzdiVar = this.zze;
                if (listenableFuture != zzdiVar.zzd() || this.zzi == null) {
                    this.zzi = (zzom) zzot.zzf(zzom.zzv(zzdiVar.zzd()), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfl
                        @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
                        public final /* synthetic */ ListenableFuture zza(Object obj) {
                            try {
                                return zzot.zza(Integer.valueOf(((zzdh) obj).zza().zzh(this.zza.zza.zzj())));
                            } catch (RemoteException e) {
                                return zzot.zzc(zzdo.zze(6, "Failed to connect to AICore service.", e));
                            }
                        }
                    }, this.zzb);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (zzom) zzot.zzf(zzom.zzv(this.zzi), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfk
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return this.zza.zzj((Integer) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ ListenableFuture zzj(Integer num) {
        return (num.intValue() == 0 || num.intValue() == 2147483646) ? zzd() : (zzom) zzot.zzf(zzom.zzv(zzed.zza(num.intValue(), this.zze.zze())), new zzoj() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfr
            @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return this.zza.zzn((Boolean) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ ListenableFuture zzk(Void r1) {
        return this.zze.zzd();
    }

    public final /* synthetic */ ListenableFuture zzl(zzdh zzdhVar) {
        try {
            return zzot.zza(new zzgm(zze(zzdhVar.zza()), zzdhVar.zzb()));
        } catch (RemoteException e) {
            Log.e(zzd, "Failed to initialize service.", e);
            return zzot.zzc(zzdo.zzb(6, "Failed to initialize service.", e));
        } catch (RuntimeException e2) {
            Log.e(zzd, "Failed to initialize service.", e2);
            return zzot.zzc(zzdo.zzb(0, "Failed to initialize service.", e2));
        }
    }

    public final /* synthetic */ ListenableFuture zzm(final zzdy zzdyVar, Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            Executor executor = this.zzg;
            final zzdo zzdoVarZza = zzdo.zza(0, "Feature is unavailable.", null);
            executor.execute(new Runnable(this, zzdyVar, zzdoVarZza) { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfp
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                }
            });
            return zzot.zzc(zzdoVarZza);
        }
        if (iIntValue == 1 || iIntValue == 2) {
            return this.zze.zzc(this.zza, zzdyVar);
        }
        if (iIntValue != 3) {
            new StringBuilder(String.valueOf(num).length() + 27);
            return zzot.zzc(zzdo.zza(0, "Unexpected feature status: ".concat(String.valueOf(num)), null));
        }
        zzdq zzdqVar = this.zza;
        String str = zzd;
        String strZza = zzdqVar.zza();
        StringBuilder sb = new StringBuilder(strZza.length() + 33);
        sb.append("Feature ");
        sb.append(strZza);
        sb.append(" is downloaded and ready.");
        Log.i(str, sb.toString());
        this.zzg.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfq
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdyVar.zzd(this.zza.zza);
            }
        });
        return zzot.zzb();
    }

    public final /* synthetic */ ListenableFuture zzn(Boolean bool) {
        return !bool.booleanValue() ? zzot.zzc(zzdo.zze(30, "Request blocked due to background use.", null)) : zzd();
    }

    public final /* synthetic */ Object zzo(zzfu zzfuVar, Object obj, CallbackToFutureAdapter.Completer completer) {
        try {
            final zzav zzavVarZzf = zzf(zzfuVar.zza(), obj, new zzft(this, completer));
            completer.addCancellationListener(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfc
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfv.zzp(zzavVarZzf);
                }
            }, this.zzb);
            return "runInferenceFuture";
        } catch (RemoteException e) {
            Log.e(zzd, "Failed to run inference.", e);
            completer.setException(zzdo.zzb(6, "Failed to run inference.", e));
            return null;
        } catch (RuntimeException e2) {
            Log.e(zzd, "Failed to run inference.", e2);
            completer.setException(zzdo.zzb(0, "Failed to run inference.", e2));
            return null;
        }
    }

    public final /* synthetic */ Object zzq(zzfu zzfuVar, CallbackToFutureAdapter.Completer completer) {
        try {
            final zzav zzavVarZzg = zzg(zzfuVar.zza(), new zzex(this, completer));
            completer.addCancellationListener(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzff
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfv.zzr(zzavVarZzg);
                }
            }, this.zzb);
            return "prepareInferenceEngineFuture";
        } catch (RemoteException e) {
            Log.e(zzd, "Failed to prepare inference engine.", e);
            completer.setException(zzdo.zzc(6, "Failed to prepare inference engine.", e));
            return null;
        } catch (RuntimeException e2) {
            Log.e(zzd, "Failed to prepare inference engine.", e2);
            completer.setException(zzdo.zzc(0, "Failed to prepare inference engine.", e2));
            return null;
        }
    }

    public final /* synthetic */ Object zzs(Object obj, boolean z, zzfu zzfuVar, CallbackToFutureAdapter.Completer completer) {
        try {
            final zzav zzavVarZzh = zzh(obj, true, zzfuVar.zza(), new zzew(this, completer));
            completer.addCancellationListener(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfi
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfv.zzt(zzavVarZzh);
                }
            }, this.zzb);
            return "getTokenInfoFuture";
        } catch (RemoteException e) {
            Log.e(zzd, "Failed to tokenize the input query.", e);
            completer.setException(zzdo.zzd(6, "Failed to tokenize the input query.", e));
            return null;
        } catch (RuntimeException e2) {
            Log.e(zzd, "Failed to tokenize the input query.", e2);
            completer.setException(zzdo.zzd(0, "Failed to tokenize the input query.", e2));
            return null;
        }
    }

    public final /* synthetic */ Object zzu() {
        return this.zzh;
    }

    public final /* synthetic */ void zzv(ListenableFuture listenableFuture) {
        this.zzk = null;
    }
}
