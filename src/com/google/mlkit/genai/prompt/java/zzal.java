package com.google.mlkit.genai.prompt.java;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.StreamingCallback;
import com.google.mlkit.genai.prompt.CountTokensResponse;
import com.google.mlkit.genai.prompt.GenerateContentRequest;
import com.google.mlkit.genai.prompt.GenerateContentResponse;
import com.google.mlkit.genai.prompt.GenerativeModel;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes5.dex */
public final class zzal extends GenerativeModelFutures {
    private final GenerativeModel zza;
    private final CoroutineScope zzb;

    public zzal(GenerativeModel generativeModel) {
        this.zza = generativeModel;
        this.zzb = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(generativeModel.zzf()));
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<Integer> checkStatus() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzn
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzal.zzc(this.zza, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<CountTokensResponse> countTokens(GenerateContentRequest generateContentRequest) {
        return this.zza.zzc(generateContentRequest);
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<Void> download(DownloadCallback downloadCallback) {
        return this.zza.zza(downloadCallback);
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<GenerateContentResponse> generateContent(final GenerateContentRequest generateContentRequest) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzv
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzal.zzf(this.zza, generateContentRequest, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<String> getBaseModelName() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzac
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzal.zzb(this.zza, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<Integer> getTokenLimit() {
        return this.zza.zzd();
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<Boolean> isSystemPromptAvailable() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzt
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzal.zzd(this.zza, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<Boolean> isThinkingModeAvailable() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzu
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzal.zze(this.zza, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<Void> warmup() {
        return this.zza.zzb();
    }

    public static /* synthetic */ Object zzb(zzal zzalVar, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzalVar.zzb, null, null, new zzai(completer, zzalVar, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzz
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzalVar.zza.zzf());
        return "getBaseModelName";
    }

    public static /* synthetic */ Object zzc(zzal zzalVar, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzalVar.zzb, null, null, new zzad(completer, zzalVar, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzaa
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzalVar.zza.zzf());
        return "checkStatus";
    }

    public static /* synthetic */ Object zzd(zzal zzalVar, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzalVar.zzb, null, null, new zzaj(completer, zzalVar, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzab
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzalVar.zza.zzf());
        return "isSystemPromptAvailable";
    }

    public static /* synthetic */ Object zze(zzal zzalVar, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzalVar.zzb, null, null, new zzak(completer, zzalVar, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzo
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzalVar.zza.zzf());
        return "isThinkingModeAvailable";
    }

    public static /* synthetic */ Object zzf(zzal zzalVar, GenerateContentRequest generateContentRequest, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzalVar.zzb, null, null, new zzae(completer, zzalVar, generateContentRequest, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzp
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzalVar.zza.zzf());
        return "generateContent";
    }

    public static /* synthetic */ Object zzg(zzal zzalVar, GenerateContentRequest generateContentRequest, StreamingCallback streamingCallback, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzalVar.zzb, null, null, new zzaf(completer, zzalVar, generateContentRequest, streamingCallback, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.mlkit.genai.prompt.java.zzq
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzalVar.zza.zzf());
        return "generateContentStream";
    }

    @Override // com.google.mlkit.genai.prompt.java.GenerativeModelFutures
    public final ListenableFuture<GenerateContentResponse> generateContent(final GenerateContentRequest generateContentRequest, final StreamingCallback streamingCallback) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.mlkit.genai.prompt.java.zzw
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzal.zzg(this.zza, generateContentRequest, streamingCallback, completer);
            }
        });
    }
}
