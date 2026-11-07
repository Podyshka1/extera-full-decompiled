package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.common.StreamingCallback;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaak extends zzaur implements AutoCloseable {
    private final ConcurrentHashMap zza;

    public zzaak(int i, ExecutorService executorService, zzaty zzatyVar) {
        super(executorService, i, -1, zzatyVar);
        CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(zzp()));
        this.zza = new ConcurrentHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.google.mlkit.genai.prompt.GenerateContentRequest, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zzc(zzaak zzaakVar, zzaan zzaanVar, zzaal zzaalVar, StreamingCallback streamingCallback, Continuation continuation) {
        zzaaj zzaajVar;
        zzaan zzaanVar2;
        zzaak zzaakVar2;
        if (continuation instanceof zzaaj) {
            zzaajVar = (zzaaj) continuation;
            int i = zzaajVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaajVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzaajVar = new zzaaj(zzaakVar, continuation);
            }
        }
        Object objZzI = zzaajVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaajVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZzI);
                zzaakVar.zza.put(zzaanVar.zza(), zzaalVar);
                zzaajVar.zzd = zzaakVar;
                zzaajVar.zze = zzaanVar;
                zzaajVar.zzc = 1;
                objZzI = zzaakVar.zzI(zzaanVar, streamingCallback, zzaajVar);
                zzaakVar2 = zzaakVar;
                zzaanVar2 = zzaanVar;
                if (objZzI == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                zzaan zzaanVar3 = zzaajVar.zze;
                zzaak zzaakVar3 = zzaajVar.zzd;
                ResultKt.throwOnFailure(objZzI);
                zzaakVar2 = zzaakVar3;
                zzaanVar2 = zzaanVar3;
            }
            return objZzI;
        } finally {
            zzaakVar.zza.remove(zzaanVar.zza());
        }
    }

    private static final zzhu zzg(zzaal zzaalVar) throws GenAiException {
        String strZza = zzaalVar.zza();
        if (strZza.length() == 0) {
            throw new GenAiException("Prompt prefix is empty", (Throwable) null, 0);
        }
        if (strZza.length() > 32000) {
            throw new GenAiException("Prompt prefix length exceeds the limit. Please check the countTokens API.", (Throwable) null, 12);
        }
        ParcelFileDescriptor parcelFileDescriptorZzc = zzaalVar.zzc();
        if (zzaalVar.zzc() == null) {
            throw new GenAiException("File descriptor to read is null", (Throwable) null, -103);
        }
        zzhs zzhsVarZzj = zzhs.zzj(0, strZza);
        zzht zzhtVarZzc = zzhu.zzc();
        zzhtVarZzc.zza(CollectionsKt.listOf(zzhsVarZzj));
        zzhtVarZzc.zzb(parcelFileDescriptorZzc);
        return zzhtVarZzc.zzc();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaur
    public final Object zza(Continuation continuation) {
        return zzb(this, continuation);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final zzdp zzd(zzdi zzdiVar, zzdq zzdqVar) {
        zzii zziiVarZzd = zzij.zzd(zzdiVar);
        zziiVarZzd.zzc(zzdqVar);
        return zzig.zzd(zziiVarZzd.zzd());
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final /* bridge */ /* synthetic */ Object zze(Object obj, StreamingCallback streamingCallback) throws GenAiException {
        zzaan zzaanVar = (zzaan) obj;
        zzaal zzaalVar = (zzaal) this.zza.get(zzaanVar.zza());
        if (zzaalVar != null) {
            return zzys.zze(zzaanVar, streamingCallback, zzg(zzaalVar));
        }
        throw new GenAiException("Prefix parameters not found for request", (Throwable) null, -103);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final /* bridge */ /* synthetic */ Object zzf(Object obj) {
        return zzys.zzd((zzic) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zzb(zzaak zzaakVar, Continuation continuation) {
        zzaai zzaaiVar;
        if (continuation instanceof zzaai) {
            zzaaiVar = (zzaai) continuation;
            int i = zzaaiVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaaiVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzaaiVar = new zzaai(zzaakVar, continuation);
            }
        }
        Object obj = zzaaiVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaaiVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                zzaaiVar.zzc = 1;
                Object objZza = super.zza(zzaaiVar);
                return objZza == coroutine_suspended ? coroutine_suspended : objZza;
            }
            if (i2 == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        } catch (GenAiException unused) {
            return Boxing.boxInt(0);
        }
    }
}
