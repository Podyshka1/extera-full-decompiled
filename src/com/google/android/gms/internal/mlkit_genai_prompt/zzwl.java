package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.common.StreamingCallback;
import com.google.mlkit.genai.prompt.CreateCachedContextRequest;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwl extends zzaur implements AutoCloseable {
    private final ConcurrentHashMap zza;
    private final ConcurrentHashMap zzb;

    public zzwl(int i, ExecutorService executorService, zzaty zzatyVar) {
        super(executorService, i, -1, zzatyVar);
        this.zza = new ConcurrentHashMap();
        this.zzb = new ConcurrentHashMap();
        CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(zzp()));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaur
    public final Object zza(Continuation continuation) {
        return zzb(this, continuation);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final zzdp zzd(zzdi zzdiVar, zzdq zzdqVar) {
        zzet zzetVarZzd = zzeu.zzd(zzdiVar);
        zzetVarZzd.zzc(zzdqVar);
        return zzer.zzd(zzetVarZzd.zzd());
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final /* bridge */ /* synthetic */ Object zze(Object obj, StreamingCallback streamingCallback) throws GenAiException {
        CreateCachedContextRequest createCachedContextRequest = (CreateCachedContextRequest) obj;
        zzaal zzaalVar = (zzaal) this.zzb.get(createCachedContextRequest);
        if (zzaalVar == null) {
            throw new GenAiException("Prefix parameters not found for request", (Throwable) null, -103);
        }
        String strZza = zzaalVar.zza();
        if (strZza.length() == 0) {
            throw new GenAiException("Prompt prefix is empty", (Throwable) null, 0);
        }
        if (strZza.length() > 32000) {
            throw new GenAiException("Prompt prefix length exceeds the limit. Please check the countTokens API.", (Throwable) null, 12);
        }
        ParcelFileDescriptor parcelFileDescriptorZzb = zzaalVar.zzb();
        if (parcelFileDescriptorZzb == null) {
            throw new GenAiException("File descriptor to write is null", (Throwable) null, -103);
        }
        zzem zzemVarZzq = zzeo.zzq();
        zzemVarZzq.zzi(strZza);
        zzemVarZzq.zzl(2);
        zzemVarZzq.zza(parcelFileDescriptorZzb);
        zzemVarZzq.zzm(new zzwh(this, createCachedContextRequest));
        return zzemVarZzq.zzk();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final /* bridge */ /* synthetic */ Object zzf(Object obj) {
        return Boolean.TRUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zzb(zzwl zzwlVar, Continuation continuation) {
        zzwg zzwgVar;
        if (continuation instanceof zzwg) {
            zzwgVar = (zzwg) continuation;
            int i = zzwgVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzwgVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzwgVar = new zzwg(zzwlVar, continuation);
            }
        }
        Object obj = zzwgVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzwgVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                zzwgVar.zzc = 1;
                Object objZza = super.zza(zzwgVar);
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
