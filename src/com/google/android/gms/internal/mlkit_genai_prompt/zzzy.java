package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.MlKitThreadPool;
import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.DownloadStatus;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.common.StreamingCallback;
import com.google.mlkit.genai.common.internal.GenAiUtils;
import com.google.mlkit.genai.prompt.Caches;
import com.google.mlkit.genai.prompt.CountTokensResponse;
import com.google.mlkit.genai.prompt.CreateCachedContextRequest;
import com.google.mlkit.genai.prompt.CreateCachedContextRequestKt;
import com.google.mlkit.genai.prompt.GenerateContentRequest;
import com.google.mlkit.genai.prompt.GenerateContentResponse;
import com.google.mlkit.genai.prompt.GenerationConfig;
import com.google.mlkit.genai.prompt.GenerativeModel;
import com.google.mlkit.genai.prompt.PromptPrefix;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.guava.ListenableFutureKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzzy implements GenerativeModel {
    public static final zzyt zza = new zzyt(null);
    private static final Lazy zzn;
    private final GenerationConfig zzb;
    private final zzaah zzc;
    private final zzwl zzd;
    private final zzaak zze;
    private final zzaah zzf;
    private final zzaak zzg;
    private final ExecutorService zzh;
    private final CoroutineScope zzi;
    private final zzyd zzj;
    private zzxs zzk;
    private zzaag zzl;
    private final Lazy zzm;

    static {
        LazyKt.lazy(zzza.zza);
        zzn = LazyKt.lazy(zzzb.zza);
    }

    public zzzy(GenerationConfig generationConfig, zzaah zzaahVar, zzwl zzwlVar, zzaak zzaakVar, zzaah zzaahVar2, zzaak zzaakVar2) {
        this.zzb = generationConfig;
        this.zzc = zzaahVar;
        this.zzd = zzwlVar;
        this.zze = zzaakVar;
        this.zzf = zzaahVar2;
        this.zzg = zzaakVar2;
        ExecutorService zza2 = generationConfig.getZza();
        zza2 = zza2 == null ? new MlKitThreadPool() : zza2;
        this.zzh = zza2;
        this.zzi = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(zza2));
        this.zzj = new zzyd(zzaahVar, CollectionsKt.listOf((Object[]) new zzaur[]{zzwlVar, zzaakVar, zzaahVar2, zzaakVar2}));
        zzxq zzxqVar = zzxs.zza;
        zzxs zzxsVar = zzxs.zzc;
        if (zzxsVar == null) {
            synchronized (zzxqVar) {
                zzxsVar = zzxs.zzc;
                if (zzxsVar == null) {
                    zzxsVar = new zzxs(new zzxg(zza2, ".mlkit_genai_prompt_explicit_prefix_cache", zzxu.zza), null);
                    zzxs.zzc = zzxsVar;
                }
            }
        }
        this.zzk = zzxsVar;
        zzzz zzzzVar = zzaag.zza;
        zzaag zzaagVar = zzaag.zzc;
        if (zzaagVar == null) {
            synchronized (zzzzVar) {
                zzaagVar = zzaag.zzc;
                if (zzaagVar == null) {
                    zzaag zzaagVar2 = new zzaag(new zzxg(zza2, ".mlkit_prefix_cache", zzaac.zza), 0, null, 6, null);
                    zzaag.zzc = zzaagVar2;
                    zzaagVar = zzaagVar2;
                }
            }
        }
        this.zzl = zzaagVar;
        this.zzm = LazyKt.lazy(new Function0() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzzc
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Object invoke() {
                return zzzy.zzq(this.zza);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzA(Continuation continuation) {
        zzze zzzeVar;
        if (continuation instanceof zzze) {
            zzzeVar = (zzze) continuation;
            int i = zzzeVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzzeVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzzeVar = new zzze(this, continuation);
            }
        }
        Object objZzD = zzzeVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzzeVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzD);
            zzzeVar.zzc = 1;
            objZzD = zzD(zzzeVar);
            if (objZzD == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZzD);
        }
        return Boxing.boxBoolean(((Number) objZzD).intValue() == 3);
    }

    private final Object zzC(Continuation continuation) {
        zzwl zzwlVar = this.zzd;
        return this.zzj.zzd(zzwlVar) ? Boxing.boxInt(0) : zzwl.zzb(zzwlVar, continuation);
    }

    private final Object zzD(Continuation continuation) {
        zzaak zzaakVar = this.zze;
        return this.zzj.zzd(zzaakVar) ? Boxing.boxInt(0) : zzaak.zzb(zzaakVar, continuation);
    }

    private static final int zzE(String str) {
        List<String> groupValues;
        String str2;
        Integer intOrNull;
        MatchResult matchResultFind$default = Regex.find$default(new Regex("nano-v(\\d+)"), str, 0, 2, null);
        if (matchResultFind$default == null || (groupValues = matchResultFind$default.getGroupValues()) == null || (str2 = groupValues.get(1)) == null || (intOrNull = StringsKt.toIntOrNull(str2)) == null) {
            return 0;
        }
        return intOrNull.intValue();
    }

    public static /* synthetic */ zzxo zzq(zzzy zzzyVar) {
        return new zzxo(zzyt.zza(zza), zzzyVar.zzd, zzzyVar.zzk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
    
        if (r7.zzE(r0) != r1) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006b A[Catch: GenAiException -> 0x007f, PHI: r8
  0x006b: PHI (r8v10 java.lang.Object) = (r8v9 java.lang.Object), (r8v1 java.lang.Object) binds: [B:31:0x0069, B:18:0x0039] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {GenAiException -> 0x007f, blocks: (B:14:0x002e, B:18:0x0039, B:32:0x006b, B:34:0x0073, B:19:0x003d, B:30:0x0063, B:20:0x0041, B:25:0x0050, B:27:0x0058, B:23:0x0048), top: B:42:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0073 A[Catch: GenAiException -> 0x007f, TRY_LEAVE, TryCatch #0 {GenAiException -> 0x007f, blocks: (B:14:0x002e, B:18:0x0039, B:32:0x006b, B:34:0x0073, B:19:0x003d, B:30:0x0063, B:20:0x0041, B:25:0x0050, B:27:0x0058, B:23:0x0048), top: B:42:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzu(Continuation continuation) {
        zzzv zzzvVar;
        if (continuation instanceof zzzv) {
            zzzvVar = (zzzv) continuation;
            int i = zzzvVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzzvVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzzvVar = new zzzv(this, continuation);
            }
        }
        Object objZzC = zzzvVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzzvVar.zzc;
        try {
        } catch (GenAiException e) {
            Log.w("GenerativeModel", "Failed to prepare inference engine for prefix caching", e);
        }
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzC);
            zzzvVar.zzc = 1;
            objZzC = zzC(zzzvVar);
            if (objZzC != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(objZzC);
                zzzvVar.zzc = 3;
                objZzC = zzD(zzzvVar);
                if (objZzC != coroutine_suspended) {
                    if (((Number) objZzC).intValue() != 0) {
                    }
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            if (i2 != 3) {
                if (i2 == 4) {
                    ResultKt.throwOnFailure(objZzC);
                    return Unit.INSTANCE;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZzC);
            if (((Number) objZzC).intValue() != 0) {
                zzaak zzaakVar = this.zze;
                zzzvVar.zzc = 4;
            }
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(objZzC);
        if (((Number) objZzC).intValue() != 0) {
            zzwl zzwlVar = this.zzd;
            zzzvVar.zzc = 2;
            if (zzwlVar.zzE(zzzvVar) == coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        zzzvVar.zzc = 3;
        objZzC = zzD(zzzvVar);
        if (objZzC != coroutine_suspended) {
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzv(GenerateContentRequest generateContentRequest, KClass kClass, boolean z, Continuation continuation) throws GenAiException {
        zzzi zzziVar;
        String cachedContextName;
        Object objZzz;
        Object objZza;
        KClass kClass2;
        String str;
        boolean z2;
        Object objZzG;
        zzys zzysVar;
        zzxt zzxtVar;
        zzys zzysVar2;
        if (continuation instanceof zzzi) {
            zzziVar = (zzzi) continuation;
            int i = zzziVar.zzf;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzziVar.zzf = i - Integer.MIN_VALUE;
            } else {
                zzziVar = new zzzi(this, continuation);
            }
        }
        Object objZzG2 = zzziVar.zzd;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzziVar.zzf;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzG2);
            cachedContextName = generateContentRequest.getZzh();
            if (cachedContextName == null) {
                cachedContextName = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (cachedContextName.length() > 0) {
                zzziVar.zza = generateContentRequest;
                zzziVar.zzb = kClass;
                zzziVar.zzg = cachedContextName;
                zzziVar.zzc = z;
                zzziVar.zzf = 1;
                objZzz = this.zzc.zzz(zzziVar);
                if (objZzz != coroutine_suspended) {
                }
            } else {
                zzaah zzaahVar = this.zzc;
                zzys zzysVar3 = zzys.zza;
                zzaan zzaanVar = new zzaan(generateContentRequest, kClass, z);
                zzziVar.zza = zzysVar3;
                zzziVar.zzb = null;
                zzziVar.zzg = null;
                zzziVar.zzf = 4;
                objZzG = zzaahVar.zzG(zzaanVar, zzziVar);
                if (objZzG != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    zzysVar2 = (zzys) zzziVar.zza;
                    ResultKt.throwOnFailure(objZzG2);
                    return zzysVar2.zza((zzdz) objZzG2);
                }
                if (i2 != 4) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                zzysVar = (zzys) zzziVar.zza;
                ResultKt.throwOnFailure(objZzG2);
                return zzysVar.zza((zzdz) objZzG2);
            }
            boolean z3 = zzziVar.zzc;
            str = zzziVar.zzg;
            kClass2 = (KClass) zzziVar.zzb;
            GenerateContentRequest generateContentRequest2 = (GenerateContentRequest) zzziVar.zza;
            ResultKt.throwOnFailure(objZzG2);
            z2 = z3;
            generateContentRequest = generateContentRequest2;
            objZza = objZzG2;
            zzxtVar = (zzxt) objZza;
            if (zzxtVar == null) {
                GenerateContentRequest.Builder builderZza = generateContentRequest.zza(null, null);
                builderZza.setPromptPrefix(new PromptPrefix(zzxtVar.zzd()));
                builderZza.setCachedContextName(null);
                GenerateContentRequest generateContentRequestBuild = builderZza.build();
                zzaah zzaahVar2 = this.zzc;
                zzys zzysVar4 = zzys.zza;
                zzaan zzaanVar2 = new zzaan(generateContentRequestBuild, kClass2, z2);
                zzziVar.zza = zzysVar4;
                zzziVar.zzb = null;
                zzziVar.zzg = null;
                zzziVar.zzf = 3;
                objZzG2 = zzaahVar2.zzG(zzaanVar2, zzziVar);
                if (objZzG2 != coroutine_suspended) {
                    zzysVar2 = zzysVar4;
                    return zzysVar2.zza((zzdz) objZzG2);
                }
                return coroutine_suspended;
            }
            Log.w("GenerativeModel", "Cached context not found for name: ".concat(String.valueOf(str)));
            kClass = kClass2;
            z = z2;
            zzaah zzaahVar3 = this.zzc;
            zzys zzysVar32 = zzys.zza;
            zzaan zzaanVar3 = new zzaan(generateContentRequest, kClass, z);
            zzziVar.zza = zzysVar32;
            zzziVar.zzb = null;
            zzziVar.zzg = null;
            zzziVar.zzf = 4;
            objZzG = zzaahVar3.zzG(zzaanVar3, zzziVar);
            if (objZzG != coroutine_suspended) {
                objZzG2 = objZzG;
                zzysVar = zzysVar32;
                return zzysVar.zza((zzdz) objZzG2);
            }
            return coroutine_suspended;
        }
        z = zzziVar.zzc;
        String str2 = zzziVar.zzg;
        kClass = (KClass) zzziVar.zzb;
        GenerateContentRequest generateContentRequest3 = (GenerateContentRequest) zzziVar.zza;
        ResultKt.throwOnFailure(objZzG2);
        cachedContextName = str2;
        generateContentRequest = generateContentRequest3;
        objZzz = objZzG2;
        zzxs zzxsVar = this.zzk;
        Context contextZza = zzyt.zza(zza);
        zzziVar.zza = generateContentRequest;
        zzziVar.zzb = kClass;
        zzziVar.zzg = cachedContextName;
        zzziVar.zzc = z;
        zzziVar.zzf = 2;
        objZza = zzxs.zza(zzxsVar, contextZza, cachedContextName, (String) objZzz, zzziVar);
        if (objZza != coroutine_suspended) {
            boolean z4 = z;
            kClass2 = kClass;
            str = cachedContextName;
            z2 = z4;
            zzxtVar = (zzxt) objZza;
            if (zzxtVar == null) {
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0160 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzw(GenerateContentRequest generateContentRequest, StreamingCallback streamingCallback, KClass kClass, boolean z, Continuation continuation) throws GenAiException {
        zzzn zzznVar;
        String str;
        String textString;
        KClass kClass2;
        int i;
        String str2;
        StreamingCallback streamingCallback2;
        String str3;
        GenerateContentRequest generateContentRequest2;
        boolean z2;
        KClass kClass3;
        GenerateContentRequest generateContentRequest3;
        StreamingCallback streamingCallback3;
        boolean z3;
        Object objZzI;
        GenerateContentResponse generateContentResponse;
        if (continuation instanceof zzzn) {
            zzznVar = (zzzn) continuation;
            int i2 = zzznVar.zzf;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                zzznVar.zzf = i2 - Integer.MIN_VALUE;
            } else {
                zzznVar = new zzzn(this, continuation);
            }
        }
        zzzn zzznVar2 = zzznVar;
        Object objZzA = zzznVar2.zzd;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = zzznVar2.zzf;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objZzA);
            PromptPrefix promptPrefix = generateContentRequest.getZzg();
            str = _UrlKt.FRAGMENT_ENCODE_SET;
            if (promptPrefix == null || (textString = promptPrefix.getTextString()) == null) {
                textString = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            String cachedContextName = generateContentRequest.getZzh();
            if (cachedContextName != null) {
                str = cachedContextName;
            }
            if (textString.length() > 0) {
                zzznVar2.zzg = generateContentRequest;
                zzznVar2.zza = streamingCallback;
                zzznVar2.zzb = kClass;
                zzznVar2.zzh = textString;
                zzznVar2.zzi = str;
                zzznVar2.zzc = z;
                zzznVar2.zzf = 1;
                Object objZzA2 = zzA(zzznVar2);
                if (objZzA2 != coroutine_suspended) {
                    kClass2 = kClass;
                    i = 2;
                    str2 = textString;
                    objZzA = objZzA2;
                }
            }
            kClass2 = kClass;
            streamingCallback2 = streamingCallback;
            str3 = str;
            if (str3.length() <= 0) {
                zzznVar2.zzg = generateContentRequest;
                zzznVar2.zza = streamingCallback2;
                zzznVar2.zzb = kClass2;
                zzznVar2.zzh = str3;
                zzznVar2.zzi = null;
                zzznVar2.zzc = z;
                zzznVar2.zzf = 3;
                objZzA = zzA(zzznVar2);
                if (objZzA != coroutine_suspended) {
                    generateContentRequest3 = generateContentRequest;
                    streamingCallback3 = streamingCallback2;
                    z3 = z;
                    String str4 = str3;
                    if (((Boolean) objZzA).booleanValue()) {
                    }
                }
            }
            boolean z4 = z;
            generateContentRequest2 = generateContentRequest;
            z2 = z4;
            kClass3 = kClass2;
            if (kClass3 != null) {
            }
            zzaan zzaanVar = new zzaan(generateContentRequest2, kClass3, z2);
            zzznVar2.zzg = null;
            zzznVar2.zza = null;
            zzznVar2.zzb = null;
            zzznVar2.zzh = null;
            zzznVar2.zzi = null;
            zzznVar2.zzf = 5;
            objZzI = zzaahVar.zzI(zzaanVar, streamingCallback2, zzznVar2);
            if (objZzI != coroutine_suspended) {
            }
        } else if (i3 == 1) {
            z = zzznVar2.zzc;
            String str5 = zzznVar2.zzi;
            String str6 = zzznVar2.zzh;
            KClass kClass4 = (KClass) zzznVar2.zzb;
            StreamingCallback streamingCallback4 = (StreamingCallback) zzznVar2.zza;
            GenerateContentRequest generateContentRequest4 = zzznVar2.zzg;
            ResultKt.throwOnFailure(objZzA);
            str = str5;
            generateContentRequest = generateContentRequest4;
            kClass2 = kClass4;
            i = 2;
            str2 = str6;
            streamingCallback = streamingCallback4;
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    if (i3 == 4) {
                        ResultKt.throwOnFailure(objZzA);
                        return objZzA;
                    }
                    if (i3 == 5) {
                        ResultKt.throwOnFailure(objZzA);
                        return objZzA;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                boolean z5 = zzznVar2.zzc;
                str3 = zzznVar2.zzh;
                KClass kClass5 = (KClass) zzznVar2.zzb;
                StreamingCallback streamingCallback5 = (StreamingCallback) zzznVar2.zza;
                generateContentRequest3 = zzznVar2.zzg;
                ResultKt.throwOnFailure(objZzA);
                z3 = z5;
                kClass2 = kClass5;
                streamingCallback3 = streamingCallback5;
                String str42 = str3;
                if (((Boolean) objZzA).booleanValue()) {
                    throw new GenAiException("Prefix Caching feature is not available.", (Throwable) null, -103);
                }
                zzznVar2.zzg = null;
                zzznVar2.zza = null;
                zzznVar2.zzb = null;
                zzznVar2.zzh = null;
                zzznVar2.zzf = 4;
                Object objZzy = zzy(generateContentRequest3, streamingCallback3, str42, kClass2, z3, zzznVar2);
                return objZzy == coroutine_suspended ? coroutine_suspended : objZzy;
            }
            z2 = zzznVar2.zzc;
            kClass3 = (KClass) zzznVar2.zzb;
            streamingCallback2 = (StreamingCallback) zzznVar2.zza;
            generateContentRequest2 = zzznVar2.zzg;
            ResultKt.throwOnFailure(objZzA);
            generateContentResponse = (GenerateContentResponse) objZzA;
            if (generateContentResponse != null) {
                return generateContentResponse;
            }
            zzaah zzaahVar = kClass3 != null ? this.zzf : this.zzc;
            zzaan zzaanVar2 = new zzaan(generateContentRequest2, kClass3, z2);
            zzznVar2.zzg = null;
            zzznVar2.zza = null;
            zzznVar2.zzb = null;
            zzznVar2.zzh = null;
            zzznVar2.zzi = null;
            zzznVar2.zzf = 5;
            objZzI = zzaahVar.zzI(zzaanVar2, streamingCallback2, zzznVar2);
            if (objZzI != coroutine_suspended) {
                return objZzI;
            }
        }
        boolean z6 = z;
        if (((Boolean) objZzA).booleanValue()) {
            zzznVar2.zzg = generateContentRequest;
            zzznVar2.zza = streamingCallback;
            zzznVar2.zzb = kClass2;
            zzznVar2.zzh = null;
            zzznVar2.zzi = null;
            zzznVar2.zzc = z6;
            zzznVar2.zzf = i;
            GenerateContentRequest generateContentRequest5 = generateContentRequest;
            StreamingCallback streamingCallback6 = streamingCallback;
            objZzA = zzx(generateContentRequest5, streamingCallback6, str2, kClass2, z6, zzznVar2);
            generateContentRequest2 = generateContentRequest5;
            streamingCallback2 = streamingCallback6;
            if (objZzA != coroutine_suspended) {
                kClass3 = kClass2;
                z2 = z6;
                generateContentResponse = (GenerateContentResponse) objZzA;
                if (generateContentResponse != null) {
                }
                if (kClass3 != null) {
                }
                zzaan zzaanVar22 = new zzaan(generateContentRequest2, kClass3, z2);
                zzznVar2.zzg = null;
                zzznVar2.zza = null;
                zzznVar2.zzb = null;
                zzznVar2.zzh = null;
                zzznVar2.zzi = null;
                zzznVar2.zzf = 5;
                objZzI = zzaahVar.zzI(zzaanVar22, streamingCallback2, zzznVar2);
                if (objZzI != coroutine_suspended) {
                }
            }
        }
        z = z6;
        streamingCallback2 = streamingCallback;
        str3 = str;
        if (str3.length() <= 0) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzy(GenerateContentRequest generateContentRequest, StreamingCallback streamingCallback, String str, KClass kClass, boolean z, Continuation continuation) throws GenAiException {
        zzzp zzzpVar;
        String str2;
        GenerateContentRequest generateContentRequest2;
        KClass kClass2;
        StreamingCallback streamingCallback2;
        boolean z2;
        KClass kClass3;
        String str3;
        StreamingCallback streamingCallback3;
        GenerateContentRequest generateContentRequest3;
        zzxt zzxtVar;
        zzxt zzxtVar2;
        ParcelFileDescriptor parcelFileDescriptor;
        if (continuation instanceof zzzp) {
            zzzpVar = (zzzp) continuation;
            int i = zzzpVar.zzf;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzzpVar.zzf = i - Integer.MIN_VALUE;
            } else {
                zzzpVar = new zzzp(this, continuation);
            }
        }
        Object objZza = zzzpVar.zzd;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzzpVar.zzf;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzzpVar.zzg = generateContentRequest;
            zzzpVar.zza = streamingCallback;
            str2 = str;
            zzzpVar.zzh = str2;
            zzzpVar.zzb = kClass;
            zzzpVar.zzc = z;
            zzzpVar.zzf = 1;
            Object objZzz = this.zzc.zzz(zzzpVar);
            if (objZzz != coroutine_suspended) {
                generateContentRequest2 = generateContentRequest;
                objZza = objZzz;
                kClass2 = kClass;
                streamingCallback2 = streamingCallback;
                z2 = z;
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                z2 = zzzpVar.zzc;
                kClass3 = (KClass) zzzpVar.zzb;
                str3 = zzzpVar.zzh;
                streamingCallback3 = (StreamingCallback) zzzpVar.zza;
                generateContentRequest3 = zzzpVar.zzg;
                ResultKt.throwOnFailure(objZza);
                zzxtVar = (zzxt) objZza;
                if (zzxtVar != null) {
                    throw new GenAiException("Cached context not found for name: ".concat(String.valueOf(str3)), (Throwable) null, -103);
                }
                zzxs zzxsVar = this.zzk;
                Context contextZza = zzyt.zza(zza);
                zzzpVar.zzg = generateContentRequest3;
                zzzpVar.zza = streamingCallback3;
                zzzpVar.zzh = str3;
                zzzpVar.zzb = kClass3;
                zzzpVar.zzi = zzxtVar;
                zzzpVar.zzc = z2;
                zzzpVar.zzf = 3;
                Object objZzc = zzxs.zzc(zzxsVar, contextZza, zzxtVar, zzzpVar);
                if (objZzc != coroutine_suspended) {
                    zzxtVar2 = zzxtVar;
                    objZza = objZzc;
                    parcelFileDescriptor = (ParcelFileDescriptor) objZza;
                    if (parcelFileDescriptor != null) {
                    }
                }
            }
            if (i2 != 3) {
                if (i2 == 4) {
                    ResultKt.throwOnFailure(objZza);
                    return objZza;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z2 = zzzpVar.zzc;
            zzxtVar2 = zzzpVar.zzi;
            kClass3 = (KClass) zzzpVar.zzb;
            str3 = zzzpVar.zzh;
            streamingCallback3 = (StreamingCallback) zzzpVar.zza;
            generateContentRequest3 = zzzpVar.zzg;
            ResultKt.throwOnFailure(objZza);
            parcelFileDescriptor = (ParcelFileDescriptor) objZza;
            if (parcelFileDescriptor != null) {
                throw new GenAiException("Failed to open cached context for name: ".concat(String.valueOf(str3)), (Throwable) null, -103);
            }
            zzaak zzaakVar = kClass3 != null ? this.zzg : this.zze;
            zzaan zzaanVar = new zzaan(generateContentRequest3, kClass3, z2);
            zzaal zzaalVar = new zzaal(zzxtVar2.zzd(), null, parcelFileDescriptor, 2, null);
            zzzpVar.zzg = null;
            zzzpVar.zza = null;
            zzzpVar.zzh = null;
            zzzpVar.zzb = null;
            zzzpVar.zzi = null;
            zzzpVar.zzf = 4;
            Object objZzc2 = zzaak.zzc(zzaakVar, zzaanVar, zzaalVar, streamingCallback3, zzzpVar);
            return objZzc2 == coroutine_suspended ? coroutine_suspended : objZzc2;
        }
        z2 = zzzpVar.zzc;
        kClass2 = (KClass) zzzpVar.zzb;
        str2 = zzzpVar.zzh;
        streamingCallback2 = (StreamingCallback) zzzpVar.zza;
        generateContentRequest2 = zzzpVar.zzg;
        ResultKt.throwOnFailure(objZza);
        zzxs zzxsVar2 = this.zzk;
        Context contextZza2 = zzyt.zza(zza);
        zzzpVar.zzg = generateContentRequest2;
        zzzpVar.zza = streamingCallback2;
        zzzpVar.zzh = str2;
        zzzpVar.zzb = kClass2;
        zzzpVar.zzc = z2;
        zzzpVar.zzf = 2;
        objZza = zzxs.zza(zzxsVar2, contextZza2, str2, (String) objZza, zzzpVar);
        if (objZza != coroutine_suspended) {
            kClass3 = kClass2;
            str3 = str2;
            streamingCallback3 = streamingCallback2;
            generateContentRequest3 = generateContentRequest2;
            zzxtVar = (zzxt) objZza;
            if (zzxtVar != null) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzz(Continuation continuation) {
        zzzd zzzdVar;
        if (continuation instanceof zzzd) {
            zzzdVar = (zzzd) continuation;
            int i = zzzdVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzzdVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzzdVar = new zzzd(this, continuation);
            }
        }
        Object objZzC = zzzdVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzzdVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzC);
            zzzdVar.zzc = 1;
            objZzC = zzC(zzzdVar);
            if (objZzC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZzC);
        }
        return Boxing.boxBoolean(((Number) objZzC).intValue() == 3);
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final Object checkStatus(Continuation<? super Integer> continuation) {
        return zzyd.zza(this.zzj, continuation);
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final void close() {
        this.zzd.close();
        this.zze.close();
        this.zzc.close();
        this.zzf.close();
        this.zzg.close();
    }

    public final Object countTokens(GenerateContentRequest generateContentRequest, Continuation<? super CountTokensResponse> continuation) {
        return zzv(generateContentRequest, null, true, continuation);
    }

    public final Flow<DownloadStatus> download() {
        return FlowKt.callbackFlow(new zzyo(this.zzi, new zzzj(this.zzj), null));
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final Object generateContent(GenerateContentRequest generateContentRequest, StreamingCallback streamingCallback, Continuation<? super GenerateContentResponse> continuation) {
        return zzw(generateContentRequest, streamingCallback, null, true, continuation);
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final Object getBaseModelName(Continuation<? super String> continuation) {
        return this.zzc.zzz(continuation);
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final Caches getCaches() {
        return (Caches) this.zzm.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
    
        if (r8 != r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object isSystemPromptAvailable(Continuation<? super Boolean> continuation) {
        zzzt zzztVar;
        if (continuation instanceof zzzt) {
            zzztVar = (zzzt) continuation;
            int i = zzztVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzztVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzztVar = new zzzt(this, continuation);
            }
        }
        Object objZza = zzztVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzztVar.zzc;
        try {
        } catch (Exception e) {
            Log.w("GenerativeModel", "Failed to get model name for capability check", e);
        }
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzztVar.zzc = 1;
            objZza = zzyd.zza(this.zzj, zzztVar);
            if (objZza != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZza);
            boolean z = zzE((String) objZza) >= 3;
            return Boxing.boxBoolean(z);
        }
        ResultKt.throwOnFailure(objZza);
        if (((Number) objZza).intValue() != 3) {
            return Boxing.boxBoolean(false);
        }
        if (!GenAiUtils.isSystemPromptSupported(MlKitContext.getInstance().getApplicationContext())) {
            return Boxing.boxBoolean(false);
        }
        zzztVar.zzc = 2;
        objZza = this.zzc.zzz(zzztVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
    
        if (r7 != r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object isThinkingModeAvailable(Continuation<? super Boolean> continuation) {
        zzzu zzzuVar;
        if (continuation instanceof zzzu) {
            zzzuVar = (zzzu) continuation;
            int i = zzzuVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzzuVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzzuVar = new zzzu(this, continuation);
            }
        }
        Object objZza = zzzuVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzzuVar.zzc;
        try {
        } catch (Exception e) {
            Log.w("GenerativeModel", "Failed to get model name for capability check", e);
        }
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzzuVar.zzc = 1;
            objZza = zzyd.zza(this.zzj, zzzuVar);
            if (objZza != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZza);
            boolean z = zzE((String) objZza) >= 4;
            return Boxing.boxBoolean(z);
        }
        ResultKt.throwOnFailure(objZza);
        if (((Number) objZza).intValue() != 3) {
            return Boxing.boxBoolean(false);
        }
        if (!GenAiUtils.isThinkingModeSupported(MlKitContext.getInstance().getApplicationContext())) {
            return Boxing.boxBoolean(false);
        }
        zzzuVar.zzc = 2;
        objZza = this.zzc.zzz(zzzuVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
    
        if (r5.zzE(r0) != r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object warmup(Continuation<? super Unit> continuation) {
        zzzw zzzwVar;
        if (continuation instanceof zzzw) {
            zzzwVar = (zzzw) continuation;
            int i = zzzwVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzzwVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzzwVar = new zzzw(this, continuation);
            }
        }
        Object obj = zzzwVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzzwVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            zzzwVar.zzc = 1;
            if (zzu(zzzwVar) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        zzaah zzaahVar = this.zzc;
        zzzwVar.zzc = 2;
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final ListenableFuture zza(final DownloadCallback downloadCallback) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzyu
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzzy.zzr(this.zza, downloadCallback, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final ListenableFuture zzb() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzyv
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzzy.zzs(this.zza, completer);
            }
        });
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final ListenableFuture zzc(GenerateContentRequest generateContentRequest) {
        return ListenableFutureKt.future$default(this.zzi, null, null, new zzzh(this, generateContentRequest, null), 3, null);
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final ListenableFuture zzd() {
        return ListenableFutureKt.future$default(this.zzi, null, null, new zzzr(this, null), 3, null);
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final ExecutorService zzf() {
        return this.zzh;
    }

    public static /* synthetic */ Object zzr(zzzy zzzyVar, DownloadCallback downloadCallback, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzzyVar.zzi, null, null, new zzzl(zzzyVar, completer, downloadCallback, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzyx
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzyt zzytVar = zzzy.zza;
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzzyVar.zzh);
        return "download";
    }

    public static /* synthetic */ Object zzs(zzzy zzzyVar, CallbackToFutureAdapter.Completer completer) {
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(zzzyVar.zzi, null, null, new zzzx(zzzyVar, completer, null), 3, null);
        completer.addCancellationListener(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzyy
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzyt zzytVar = zzzy.zza;
                Job.cancel$default(jobLaunch$default, null, 1, null);
            }
        }, zzzyVar.zzh);
        return "warmup";
    }

    @Override // com.google.mlkit.genai.prompt.GenerativeModel
    public final Object generateContent(GenerateContentRequest generateContentRequest, Continuation<? super GenerateContentResponse> continuation) {
        return zzw(generateContentRequest, null, null, true, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x03ab, code lost:
    
        if (r0 != r5) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x025e, code lost:
    
        if (r0 == r5) goto L138;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0347 A[Catch: GenAiException -> 0x031d, TRY_LEAVE, TryCatch #9 {GenAiException -> 0x031d, blocks: (B:109:0x0313, B:112:0x031a, B:116:0x0321, B:115:0x031f, B:120:0x0347), top: B:158:0x0313 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0201 A[Catch: GenAiException -> 0x026e, TryCatch #8 {GenAiException -> 0x026e, blocks: (B:68:0x01fb, B:70:0x0201, B:72:0x0209), top: B:156:0x01fb }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0280 A[Catch: GenAiException -> 0x0268, TRY_LEAVE, TryCatch #0 {GenAiException -> 0x0268, blocks: (B:76:0x0233, B:91:0x0278, B:92:0x027f, B:93:0x0280, B:65:0x01ef), top: B:142:0x01ef }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02c1  */
    /* JADX WARN: Type inference failed for: r24v0, types: [com.google.android.gms.internal.mlkit_genai_prompt.zzzy] */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v0, types: [int] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46 */
    /* JADX WARN: Type inference failed for: r6v48 */
    /* JADX WARN: Type inference failed for: r6v5, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzx(GenerateContentRequest generateContentRequest, StreamingCallback streamingCallback, String str, KClass kClass, boolean z, Continuation continuation) {
        zzzq zzzqVar;
        StreamingCallback streamingCallback2;
        GenerateContentRequest generateContentRequest2;
        KClass kClass2;
        String str2;
        zzaab zzaabVar;
        String str3;
        ?? r6;
        int i;
        GenerateContentRequest generateContentRequest3;
        String str4;
        String str5;
        ?? r62;
        int i2;
        String str6;
        ?? r63;
        KClass kClass3;
        String str7;
        String str8;
        ?? r4;
        StreamingCallback streamingCallback3;
        ParcelFileDescriptor parcelFileDescriptor;
        zzaab zzaabVar2;
        String str9;
        KClass kClass4;
        GenerateContentRequest generateContentRequest4;
        StreamingCallback streamingCallback4;
        boolean z2;
        Object objZza;
        StreamingCallback streamingCallback5;
        boolean z3;
        zzaab zzaabVar3;
        int i3;
        StreamingCallback streamingCallback6;
        boolean z4;
        boolean z5;
        String str10;
        ParcelFileDescriptor parcelFileDescriptor2;
        boolean z6;
        ?? r64;
        if (continuation instanceof zzzq) {
            zzzqVar = (zzzq) continuation;
            int i4 = zzzqVar.zzh;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                zzzqVar.zzh = i4 - Integer.MIN_VALUE;
            } else {
                zzzqVar = new zzzq(this, continuation);
            }
        }
        Object objZzA = zzzqVar.zzf;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r65 = zzzqVar.zzh;
        try {
            try {
            } catch (GenAiException e) {
                Log.w("GenerativeModel", "Failed to get base model name, falling back to major processor", e);
                return null;
            }
        } catch (GenAiException e2) {
            e = e2;
        }
        switch (r65) {
            case 0:
                ResultKt.throwOnFailure(objZzA);
                zzzqVar.zza = generateContentRequest;
                zzzqVar.zzb = streamingCallback;
                str9 = str;
                zzzqVar.zzi = str9;
                kClass4 = kClass;
                zzzqVar.zzc = kClass4;
                zzzqVar.zzd = z;
                zzzqVar.zzh = 1;
                Object objZzz = this.zzc.zzz(zzzqVar);
                if (objZzz == coroutine_suspended) {
                    return coroutine_suspended;
                }
                generateContentRequest4 = generateContentRequest;
                objZzA = objZzz;
                streamingCallback4 = streamingCallback;
                z2 = z;
                String str11 = (String) objZzA;
                zzaag zzaagVar = this.zzl;
                Context contextZza = zzyt.zza(zza);
                zzzqVar.zza = generateContentRequest4;
                zzzqVar.zzb = streamingCallback4;
                zzzqVar.zzi = str9;
                zzzqVar.zzc = kClass4;
                zzzqVar.zzj = str11;
                zzzqVar.zzd = z2;
                zzzqVar.zzh = 2;
                objZza = zzaag.zza(zzaagVar, contextZza, str9, str11, zzzqVar);
                if (objZza != coroutine_suspended) {
                    String str12 = str9;
                    str3 = str11;
                    objZzA = objZza;
                    generateContentRequest2 = generateContentRequest4;
                    streamingCallback5 = streamingCallback4;
                    str2 = str12;
                    z3 = z2;
                    zzaabVar3 = (zzaab) objZzA;
                    i3 = 0;
                    if (zzaabVar3 != null) {
                        zzzqVar.zza = generateContentRequest2;
                        zzzqVar.zzb = streamingCallback5;
                        zzzqVar.zzi = str2;
                        zzzqVar.zzc = kClass4;
                        zzzqVar.zzj = str3;
                        zzzqVar.zzk = null;
                        zzzqVar.zzd = z3;
                        zzzqVar.zze = 0;
                        zzzqVar.zzh = 3;
                        Object objZzz2 = zzz(zzzqVar);
                        if (objZzz2 != coroutine_suspended) {
                            KClass kClass5 = kClass4;
                            zzaabVar = zzaabVar3;
                            objZzA = objZzz2;
                            generateContentRequest3 = generateContentRequest2;
                            str4 = str2;
                            str5 = str3;
                            streamingCallback6 = streamingCallback5;
                            kClass2 = kClass5;
                            z4 = z3;
                            if (!((Boolean) objZzA).booleanValue()) {
                                try {
                                    zzaag zzaagVar2 = this.zzl;
                                    Context contextZza2 = zzyt.zza(zza);
                                    zzzqVar.zza = generateContentRequest3;
                                    zzzqVar.zzb = streamingCallback6;
                                    zzzqVar.zzi = str4;
                                    zzzqVar.zzc = kClass2;
                                    zzzqVar.zzj = str5;
                                    zzzqVar.zzk = zzaabVar;
                                    zzzqVar.zzd = z4;
                                    zzzqVar.zze = i3;
                                    z5 = z4;
                                    try {
                                        zzzqVar.zzh = 4;
                                        objZzA = zzaag.zzc(zzaagVar2, contextZza2, str4, str5, zzzqVar);
                                    } catch (GenAiException e3) {
                                        e = e3;
                                        streamingCallback2 = streamingCallback6;
                                        r65 = z5;
                                        Log.w("GenerativeModel", "Failed to create cache for prefix: ".concat(String.valueOf(str4)), e);
                                        str3 = str5;
                                        str2 = str4;
                                        generateContentRequest2 = generateContentRequest3;
                                        r6 = r65;
                                        i = 1;
                                        r62 = r6;
                                        if (zzaabVar == null) {
                                        }
                                    }
                                } catch (GenAiException e4) {
                                    e = e4;
                                    z5 = z4;
                                }
                                if (objZzA != coroutine_suspended) {
                                    str10 = str4;
                                    z4 = z5 ? 1 : 0;
                                    try {
                                        parcelFileDescriptor2 = (ParcelFileDescriptor) objZzA;
                                        if (parcelFileDescriptor2 == null) {
                                            zzwl zzwlVar = this.zzd;
                                            PromptPrefix promptPrefix = generateContentRequest3.getZzg();
                                            if (promptPrefix == null) {
                                                throw new IllegalArgumentException("Prompt prefix is not set.");
                                            }
                                            CreateCachedContextRequest createCachedContextRequest = CreateCachedContextRequestKt.createCachedContextRequest(promptPrefix.getTextString(), promptPrefix);
                                            zzaal zzaalVar = new zzaal(str10, parcelFileDescriptor2, null, 4, null);
                                            str4 = str10;
                                            zzzqVar.zza = generateContentRequest3;
                                            zzzqVar.zzb = streamingCallback6;
                                            zzzqVar.zzi = str4;
                                            zzzqVar.zzc = kClass2;
                                            zzzqVar.zzj = str5;
                                            zzzqVar.zzk = zzaabVar;
                                            zzzqVar.zzd = z4;
                                            zzzqVar.zze = i3;
                                            boolean z7 = z4;
                                            zzzqVar.zzh = 5;
                                            if (CoroutineScopeKt.coroutineScope(new zzwk(zzaalVar, zzwlVar, createCachedContextRequest, null), zzzqVar) != coroutine_suspended) {
                                                i = i3;
                                                z6 = z7 ? 1 : 0;
                                                streamingCallback2 = streamingCallback6;
                                                zzaag zzaagVar3 = this.zzl;
                                                Context contextZza3 = zzyt.zza(zza);
                                                zzzqVar.zza = generateContentRequest3;
                                                zzzqVar.zzb = streamingCallback2;
                                                zzzqVar.zzi = str4;
                                                zzzqVar.zzc = kClass2;
                                                zzzqVar.zzj = str5;
                                                zzzqVar.zzk = zzaabVar;
                                                zzzqVar.zzd = z6;
                                                zzzqVar.zze = i;
                                                zzzqVar.zzh = 6;
                                                objZzA = zzaag.zza(zzaagVar3, contextZza3, str4, str5, zzzqVar);
                                                r65 = z6;
                                            }
                                        } else {
                                            boolean z8 = z4;
                                            String str13 = str10;
                                            StringBuilder sb = new StringBuilder(String.valueOf(str13).length() + 59);
                                            sb.append("Failed to open file descriptor to create cache for prefix: ");
                                            sb.append(str13);
                                            Log.w("GenerativeModel", sb.toString());
                                            streamingCallback2 = streamingCallback6;
                                            str3 = str5;
                                            str2 = str13;
                                            generateContentRequest2 = generateContentRequest3;
                                            r6 = z8 ? 1 : 0;
                                        }
                                    } catch (GenAiException e5) {
                                        e = e5;
                                        z5 = z4;
                                        str4 = str10;
                                        streamingCallback2 = streamingCallback6;
                                        r65 = z5;
                                        Log.w("GenerativeModel", "Failed to create cache for prefix: ".concat(String.valueOf(str4)), e);
                                        str3 = str5;
                                        str2 = str4;
                                        generateContentRequest2 = generateContentRequest3;
                                        r6 = r65;
                                    }
                                    i = 1;
                                    r62 = r6;
                                    if (zzaabVar == null) {
                                        zzzqVar.zza = generateContentRequest2;
                                        zzzqVar.zzb = streamingCallback2;
                                        zzzqVar.zzi = str2;
                                        zzzqVar.zzc = kClass2;
                                        zzzqVar.zzj = str3;
                                        zzzqVar.zzk = zzaabVar;
                                        zzzqVar.zzd = r62;
                                        zzzqVar.zze = i;
                                        zzzqVar.zzh = 7;
                                        objZzA = zzA(zzzqVar);
                                        if (objZzA != coroutine_suspended) {
                                            i2 = i;
                                            str6 = str2;
                                            r63 = r62;
                                            zzaab zzaabVar4 = zzaabVar;
                                            kClass3 = kClass2;
                                            StreamingCallback streamingCallback7 = streamingCallback2;
                                            if (!((Boolean) objZzA).booleanValue()) {
                                                try {
                                                    zzaag zzaagVar4 = this.zzl;
                                                    Context contextZza4 = zzyt.zza(zza);
                                                    zzzqVar.zza = generateContentRequest2;
                                                    zzzqVar.zzb = streamingCallback7;
                                                    zzzqVar.zzi = str6;
                                                    zzzqVar.zzc = kClass3;
                                                    zzzqVar.zzj = str3;
                                                    zzzqVar.zzk = null;
                                                    zzzqVar.zzd = r63;
                                                    zzzqVar.zzh = 8;
                                                    objZzA = zzaag.zzb(zzaagVar4, contextZza4, zzaabVar4, zzzqVar);
                                                    break;
                                                } catch (GenAiException e6) {
                                                    e = e6;
                                                    str7 = str3;
                                                    Log.w("GenerativeModel", "Inference failed with prefix cache, retry without cache.", e);
                                                    str3 = str7;
                                                    str2 = str6;
                                                    i2 = 1;
                                                    if (i2 != 0) {
                                                    }
                                                }
                                                if (objZzA != coroutine_suspended) {
                                                    str8 = str6;
                                                    r4 = r63;
                                                    streamingCallback3 = streamingCallback7;
                                                    try {
                                                        parcelFileDescriptor = (ParcelFileDescriptor) objZzA;
                                                    } catch (GenAiException e7) {
                                                        e = e7;
                                                        str7 = str3;
                                                        str6 = str8;
                                                        Log.w("GenerativeModel", "Inference failed with prefix cache, retry without cache.", e);
                                                        str3 = str7;
                                                        str2 = str6;
                                                    }
                                                    if (parcelFileDescriptor == null) {
                                                        zzaak zzaakVar = kClass3 != null ? this.zzg : this.zze;
                                                        zzaan zzaanVar = new zzaan(generateContentRequest2, kClass3, r4);
                                                        zzaal zzaalVar2 = new zzaal(str8, null, parcelFileDescriptor, 2, null);
                                                        zzzqVar.zza = str8;
                                                        zzzqVar.zzb = str3;
                                                        zzzqVar.zzi = null;
                                                        zzzqVar.zzc = null;
                                                        zzzqVar.zzj = null;
                                                        zzzqVar.zzh = 9;
                                                        Object objZzc = zzaak.zzc(zzaakVar, zzaanVar, zzaalVar2, streamingCallback3, zzzqVar);
                                                        if (objZzc != coroutine_suspended) {
                                                            return objZzc;
                                                        }
                                                    } else {
                                                        StringBuilder sb2 = new StringBuilder(String.valueOf(str8).length() + 33);
                                                        sb2.append("Failed to open cache for prefix: ");
                                                        sb2.append(str8);
                                                        Log.w("GenerativeModel", sb2.toString());
                                                        str2 = str8;
                                                        i2 = 1;
                                                        if (i2 != 0) {
                                                            return null;
                                                        }
                                                        zzaag zzaagVar5 = this.zzl;
                                                        Context contextZza5 = zzyt.zza(zza);
                                                        zzzqVar.zza = null;
                                                        zzzqVar.zzb = null;
                                                        zzzqVar.zzi = null;
                                                        zzzqVar.zzc = null;
                                                        zzzqVar.zzj = null;
                                                        zzzqVar.zzk = null;
                                                        zzzqVar.zzh = 10;
                                                        objZzA = zzaag.zza(zzaagVar5, contextZza5, str2, str3, zzzqVar);
                                                        if (objZzA != coroutine_suspended) {
                                                            zzaabVar2 = (zzaab) objZzA;
                                                            if (zzaabVar2 != null) {
                                                                return null;
                                                            }
                                                            zzaag zzaagVar6 = this.zzl;
                                                            Context contextZza6 = zzyt.zza(zza);
                                                            zzzqVar.zzh = 11;
                                                            objZzA = zzaagVar6.zzb.zzw(contextZza6, zzaabVar2.zza(), zzzqVar);
                                                        }
                                                    }
                                                }
                                                break;
                                            } else {
                                                str2 = str6;
                                                if (i2 != 0) {
                                                }
                                            }
                                        }
                                    } else {
                                        i2 = i;
                                        if (i2 != 0) {
                                        }
                                    }
                                }
                                break;
                            } else {
                                i = i3;
                                streamingCallback2 = streamingCallback6;
                                r64 = z4;
                                str3 = str5;
                                str2 = str4;
                                generateContentRequest2 = generateContentRequest3;
                                r62 = r64;
                                if (zzaabVar == null) {
                                }
                            }
                        }
                    } else {
                        i = 0;
                        streamingCallback2 = streamingCallback5;
                        kClass2 = kClass4;
                        zzaabVar = zzaabVar3;
                        r62 = z3;
                        if (zzaabVar == null) {
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                boolean z9 = zzzqVar.zzd;
                KClass kClass6 = (KClass) zzzqVar.zzc;
                String str14 = zzzqVar.zzi;
                streamingCallback4 = (StreamingCallback) zzzqVar.zzb;
                generateContentRequest4 = (GenerateContentRequest) zzzqVar.zza;
                ResultKt.throwOnFailure(objZzA);
                kClass4 = kClass6;
                str9 = str14;
                z2 = z9;
                String str112 = (String) objZzA;
                zzaag zzaagVar7 = this.zzl;
                Context contextZza7 = zzyt.zza(zza);
                zzzqVar.zza = generateContentRequest4;
                zzzqVar.zzb = streamingCallback4;
                zzzqVar.zzi = str9;
                zzzqVar.zzc = kClass4;
                zzzqVar.zzj = str112;
                zzzqVar.zzd = z2;
                zzzqVar.zzh = 2;
                objZza = zzaag.zza(zzaagVar7, contextZza7, str9, str112, zzzqVar);
                if (objZza != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                boolean z10 = zzzqVar.zzd;
                str3 = zzzqVar.zzj;
                kClass4 = (KClass) zzzqVar.zzc;
                str2 = zzzqVar.zzi;
                streamingCallback5 = (StreamingCallback) zzzqVar.zzb;
                generateContentRequest2 = (GenerateContentRequest) zzzqVar.zza;
                ResultKt.throwOnFailure(objZzA);
                z3 = z10;
                zzaabVar3 = (zzaab) objZzA;
                i3 = 0;
                if (zzaabVar3 != null) {
                }
                break;
            case 3:
                int i5 = zzzqVar.zze;
                boolean z11 = zzzqVar.zzd;
                zzaabVar = zzzqVar.zzk;
                str5 = zzzqVar.zzj;
                kClass2 = (KClass) zzzqVar.zzc;
                str4 = zzzqVar.zzi;
                StreamingCallback streamingCallback8 = (StreamingCallback) zzzqVar.zzb;
                generateContentRequest3 = (GenerateContentRequest) zzzqVar.zza;
                ResultKt.throwOnFailure(objZzA);
                i3 = i5;
                z4 = z11;
                streamingCallback6 = streamingCallback8;
                if (!((Boolean) objZzA).booleanValue()) {
                }
                break;
            case 4:
                int i6 = zzzqVar.zze;
                boolean z12 = zzzqVar.zzd;
                zzaab zzaabVar5 = zzzqVar.zzk;
                String str15 = zzzqVar.zzj;
                KClass kClass7 = (KClass) zzzqVar.zzc;
                String str16 = zzzqVar.zzi;
                StreamingCallback streamingCallback9 = (StreamingCallback) zzzqVar.zzb;
                GenerateContentRequest generateContentRequest5 = (GenerateContentRequest) zzzqVar.zza;
                try {
                    ResultKt.throwOnFailure(objZzA);
                    generateContentRequest3 = generateContentRequest5;
                    streamingCallback6 = streamingCallback9;
                    str10 = str16;
                    i3 = i6;
                    z4 = z12;
                    zzaabVar = zzaabVar5;
                    str5 = str15;
                    kClass2 = kClass7;
                    parcelFileDescriptor2 = (ParcelFileDescriptor) objZzA;
                    if (parcelFileDescriptor2 == null) {
                    }
                } catch (GenAiException e8) {
                    e = e8;
                    r65 = z12;
                    zzaabVar = zzaabVar5;
                    str5 = str15;
                    kClass2 = kClass7;
                    str4 = str16;
                    streamingCallback2 = streamingCallback9;
                    generateContentRequest3 = generateContentRequest5;
                    Log.w("GenerativeModel", "Failed to create cache for prefix: ".concat(String.valueOf(str4)), e);
                    str3 = str5;
                    str2 = str4;
                    generateContentRequest2 = generateContentRequest3;
                    r6 = r65;
                }
                i = 1;
                r62 = r6;
                if (zzaabVar == null) {
                }
                break;
            case 5:
                i = zzzqVar.zze;
                boolean z13 = zzzqVar.zzd;
                zzaabVar = zzzqVar.zzk;
                str5 = zzzqVar.zzj;
                kClass2 = (KClass) zzzqVar.zzc;
                str4 = zzzqVar.zzi;
                streamingCallback2 = (StreamingCallback) zzzqVar.zzb;
                generateContentRequest3 = (GenerateContentRequest) zzzqVar.zza;
                ResultKt.throwOnFailure(objZzA);
                z6 = z13;
                zzaag zzaagVar32 = this.zzl;
                Context contextZza32 = zzyt.zza(zza);
                zzzqVar.zza = generateContentRequest3;
                zzzqVar.zzb = streamingCallback2;
                zzzqVar.zzi = str4;
                zzzqVar.zzc = kClass2;
                zzzqVar.zzj = str5;
                zzzqVar.zzk = zzaabVar;
                zzzqVar.zzd = z6;
                zzzqVar.zze = i;
                zzzqVar.zzh = 6;
                objZzA = zzaag.zza(zzaagVar32, contextZza32, str4, str5, zzzqVar);
                r65 = z6;
                break;
            case 6:
                i = zzzqVar.zze;
                boolean z14 = zzzqVar.zzd;
                zzaabVar = zzzqVar.zzk;
                str5 = zzzqVar.zzj;
                kClass2 = (KClass) zzzqVar.zzc;
                str4 = zzzqVar.zzi;
                streamingCallback2 = (StreamingCallback) zzzqVar.zzb;
                generateContentRequest3 = (GenerateContentRequest) zzzqVar.zza;
                ResultKt.throwOnFailure(objZzA);
                r65 = z14;
                zzaabVar = (zzaab) objZzA;
                r64 = r65;
                str3 = str5;
                str2 = str4;
                generateContentRequest2 = generateContentRequest3;
                r62 = r64;
                if (zzaabVar == null) {
                }
                break;
            case 7:
                int i7 = zzzqVar.zze;
                boolean z15 = zzzqVar.zzd;
                zzaabVar = zzzqVar.zzk;
                String str17 = zzzqVar.zzj;
                kClass2 = (KClass) zzzqVar.zzc;
                String str18 = zzzqVar.zzi;
                streamingCallback2 = (StreamingCallback) zzzqVar.zzb;
                GenerateContentRequest generateContentRequest6 = (GenerateContentRequest) zzzqVar.zza;
                ResultKt.throwOnFailure(objZzA);
                i2 = i7;
                str3 = str17;
                str6 = str18;
                generateContentRequest2 = generateContentRequest6;
                r63 = z15;
                zzaab zzaabVar42 = zzaabVar;
                kClass3 = kClass2;
                StreamingCallback streamingCallback72 = streamingCallback2;
                if (!((Boolean) objZzA).booleanValue()) {
                }
                break;
            case 8:
                boolean z16 = zzzqVar.zzd;
                String str19 = zzzqVar.zzj;
                kClass3 = (KClass) zzzqVar.zzc;
                String str20 = zzzqVar.zzi;
                StreamingCallback streamingCallback10 = (StreamingCallback) zzzqVar.zzb;
                generateContentRequest2 = (GenerateContentRequest) zzzqVar.zza;
                try {
                    ResultKt.throwOnFailure(objZzA);
                    str3 = str19;
                    streamingCallback3 = streamingCallback10;
                    str8 = str20;
                    r4 = z16;
                    parcelFileDescriptor = (ParcelFileDescriptor) objZzA;
                    if (parcelFileDescriptor == null) {
                    }
                } catch (GenAiException e9) {
                    e = e9;
                    str7 = str19;
                    str6 = str20;
                    Log.w("GenerativeModel", "Inference failed with prefix cache, retry without cache.", e);
                    str3 = str7;
                    str2 = str6;
                    i2 = 1;
                    if (i2 != 0) {
                    }
                }
                break;
            case 9:
                str7 = (String) zzzqVar.zzb;
                str6 = (String) zzzqVar.zza;
                try {
                    ResultKt.throwOnFailure(objZzA);
                    return objZzA;
                } catch (GenAiException e10) {
                    e = e10;
                    Log.w("GenerativeModel", "Inference failed with prefix cache, retry without cache.", e);
                    str3 = str7;
                    str2 = str6;
                    i2 = 1;
                    if (i2 != 0) {
                    }
                }
                break;
            case 10:
                ResultKt.throwOnFailure(objZzA);
                zzaabVar2 = (zzaab) objZzA;
                if (zzaabVar2 != null) {
                }
                break;
            case 11:
                ResultKt.throwOnFailure(objZzA);
                ((Boolean) objZzA).getClass();
                return null;
            default:
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
