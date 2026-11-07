package com.google.mlkit.genai.prompt.java;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.mlkit.genai.prompt.CachedContext;
import com.google.mlkit.genai.prompt.Caches;
import com.google.mlkit.genai.prompt.CreateCachedContextRequest;
import com.google.mlkit.genai.prompt.GenerativeModel;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes5.dex */
public final class zzm extends CachesFutures {
    private final GenerativeModel zza;
    private final Caches zzb;
    private final CoroutineScope zzc;
    private final ExecutorService zzd;

    public zzm(GenerativeModel generativeModel) {
        this.zza = generativeModel;
        this.zzb = generativeModel.getCaches();
        this.zzc = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(generativeModel.zzf()));
        this.zzd = generativeModel.zzf();
    }

    @Override // com.google.mlkit.genai.prompt.java.CachesFutures
    public final ListenableFuture<CachedContext> create(final CreateCachedContextRequest createCachedContextRequest) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzh
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzm.zzb(this.zza, createCachedContextRequest, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.java.CachesFutures
    public final ListenableFuture<Boolean> delete(final String str) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzc
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzm.zze(this.zza, str, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.java.CachesFutures
    public final ListenableFuture<List<CachedContext>> list() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zza
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzm.zzc(this.zza, completer);
            }
        });
    }

    public static /* synthetic */ Object zzb(zzm zzmVar, CreateCachedContextRequest createCachedContextRequest, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzmVar.zzc, null, null, new zzi(completer, zzmVar, createCachedContextRequest, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzd
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzmVar.zzd);
        return "create";
    }

    public static /* synthetic */ Object zzc(zzm zzmVar, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzmVar.zzc, null, null, new zzl(completer, zzmVar, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zze
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzmVar.zzd);
        return "list";
    }

    public static /* synthetic */ Object zze(zzm zzmVar, String str, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzmVar.zzc, null, null, new zzj(completer, zzmVar, str, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzg
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzmVar.zzd);
        return "delete";
    }
}
