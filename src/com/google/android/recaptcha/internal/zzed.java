package com.google.android.recaptcha.internal;

import android.os.Build;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzed extends SuspendLambda implements Function2 {
    final /* synthetic */ zzee zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzed(zzee zzeeVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzeeVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzed(this.zza, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzed) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzaly zzalyVarZzb = zzamb.zzb();
        zzee zzeeVar = this.zza;
        zzama zzamaVarZze = zzee.zze(zzeeVar, Build.MANUFACTURER);
        zzama zzamaVarZze2 = zzee.zze(zzeeVar, Build.MODEL);
        zzama zzamaVarZze3 = zzee.zze(zzeeVar, Build.DEVICE);
        zzama zzamaVarZze4 = zzee.zze(zzeeVar, Build.HARDWARE);
        zzama zzamaVarZze5 = zzee.zze(zzeeVar, Build.FINGERPRINT);
        zzama zzamaVarZze6 = zzee.zze(zzeeVar, Build.PRODUCT);
        zzama zzamaVarZze7 = zzee.zze(zzeeVar, Build.BOARD);
        zzama zzamaVarZze8 = zzee.zze(zzeeVar, Build.BRAND);
        zzama zzamaVarZze9 = zzee.zze(zzeeVar, ArraysKt.joinToString$default(Build.SUPPORTED_ABIS, ",", "[", "]", 0, (CharSequence) null, (Function1) null, 56, (Object) null));
        long j = Build.TIME;
        zzalz zzalzVarZza = zzama.zza();
        zzalzVarZza.zzb(j);
        zzalyVarZzb.zzc(CollectionsKt.listOf((Object[]) new zzama[]{zzamaVarZze, zzamaVarZze2, zzamaVarZze3, zzamaVarZze4, zzamaVarZze5, zzamaVarZze6, zzamaVarZze7, zzamaVarZze8, zzamaVarZze9, (zzama) zzalzVarZza.zzp(), zzee.zze(zzeeVar, Build.ID), zzee.zze(zzeeVar, Build.BOOTLOADER), zzee.zze(zzeeVar, Build.DISPLAY), zzee.zze(zzeeVar, Build.TYPE), zzee.zze(zzeeVar, Build.TAGS)}));
        return zzew.zza(zzeeVar, (zzamb) zzalyVarZzb.zzp());
    }
}
