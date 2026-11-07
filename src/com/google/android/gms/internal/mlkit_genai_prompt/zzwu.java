package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzwu extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzxi zzc;
    final /* synthetic */ zzxg zzd;
    final /* synthetic */ Context zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwu(zzxi zzxiVar, zzxg zzxgVar, Context context, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzxiVar;
        this.zzd = zzxgVar;
        this.zze = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzwu(this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwu) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String strZza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zzb == 0) {
                ResultKt.throwOnFailure(obj);
                zzxi zzxiVar = this.zzc;
                zzxg zzxgVar = this.zzd;
                Context context = this.zze;
                strZza = zzxiVar.zza();
                File file = new File(zzxgVar.zzz(context), zzxiVar.zzb());
                if (file.exists()) {
                    return ParcelFileDescriptor.open(file, 268435456);
                }
                StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 51);
                sb.append("Cache file not found for name: ");
                sb.append(strZza);
                sb.append(". Cleaning up index.");
                Log.w("CacheFileManager", sb.toString());
                this.zza = strZza;
                this.zzb = 1;
                obj = zzxgVar.zzw(context, strZza, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                strZza = (String) this.zza;
                ResultKt.throwOnFailure(obj);
            }
            ((Boolean) obj).getClass();
            StringBuilder sb2 = new StringBuilder(String.valueOf(strZza).length() + 31);
            sb2.append("Cache file not found for name: ");
            sb2.append(strZza);
            throw new FileNotFoundException(sb2.toString());
        } catch (IOException e) {
            Log.e("CacheFileManager", "Failed to open cache for reading", e);
            return null;
        }
    }
}
