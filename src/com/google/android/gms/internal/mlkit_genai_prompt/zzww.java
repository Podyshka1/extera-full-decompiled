package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzww extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzxi zzd;
    final /* synthetic */ zzxg zze;
    final /* synthetic */ Context zzf;
    final /* synthetic */ Function1 zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzww(zzxi zzxiVar, zzxg zzxgVar, Context context, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzxiVar;
        this.zze = zzxgVar;
        this.zzf = context;
        this.zzg = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzww(this.zzd, this.zze, this.zzf, this.zzg, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzww) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
    
        if (r12 != r1) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        File file;
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzxi zzxiVar = this.zzd;
            zzxg zzxgVar = this.zze;
            Context context = this.zzf;
            String strZza = zzxiVar.zza();
            file = new File(zzxgVar.zzz(context), zzxiVar.zzb());
            zzwv zzwvVar = new zzwv(strZza, zzxgVar, context, zzxiVar, this.zzg, null);
            this.zza = strZza;
            this.zzb = file;
            this.zzc = 1;
            if (zzxgVar.zzu(context, zzwvVar, this) != coroutine_suspended) {
                str = strZza;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            ((Boolean) obj).getClass();
            return null;
        }
        file = (File) this.zzb;
        str = (String) this.zza;
        ResultKt.throwOnFailure(obj);
        try {
            return ParcelFileDescriptor.open(file, 671088640);
        } catch (IOException e) {
            Log.e("CacheFileManager", "Failed to open cache for writing", e);
            zzxg zzxgVar2 = this.zze;
            Context context2 = this.zzf;
            this.zza = null;
            this.zzb = null;
            this.zzc = 2;
            obj = zzxgVar2.zzw(context2, str, this);
        }
    }
}
