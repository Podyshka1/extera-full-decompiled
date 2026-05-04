package com.google.android.recaptcha.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzca implements zzbu {
    public static final zzbv zza = new zzbv(null);
    private final CoroutineScope zzb;
    private final zzcl zzc;
    private final zzee zzd;
    private final Map zze;
    private final Map zzf;

    public zzca(CoroutineScope coroutineScope, zzcl zzclVar, zzee zzeeVar, Map map) {
        this.zzb = coroutineScope;
        this.zzc = zzclVar;
        this.zzd = zzeeVar;
        this.zze = map;
        this.zzf = zzclVar.zzb().zzc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzg(List list, zzcj zzcjVar, Continuation continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new zzbx(zzcjVar, list, this, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzh(Exception exc, zzcj zzcjVar, Continuation continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new zzby(exc, zzcjVar, this, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzi(zzpr zzprVar, zzcj zzcjVar) throws zzae {
        zzfh zzfhVarZzb = zzfh.zzb();
        int iZza = zzcjVar.zza();
        zzdd zzddVar = (zzdd) this.zze.get(Integer.valueOf(zzprVar.zzf()));
        if (zzddVar == null) {
            throw new zzae(5, 2, null);
        }
        int iZzg = zzprVar.zzg();
        zzpq[] zzpqVarArr = (zzpq[]) zzprVar.zzj().toArray(new zzpq[0]);
        zzddVar.zza(iZzg, zzcjVar, (zzpq[]) Arrays.copyOf(zzpqVarArr, zzpqVarArr.length));
        if (iZza == zzcjVar.zza()) {
            zzcjVar.zzg(zzcjVar.zza() + 1);
        }
        zzfhVarZzb.zzf();
        long jZza = zzfhVarZzb.zza(TimeUnit.MICROSECONDS);
        zzv zzvVar = zzv.zza;
        int iZzk = zzprVar.zzk();
        if (iZzk == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        zzv.zza(iZzk - 2, jZza);
        zzprVar.zzk();
        zzprVar.zzg();
        CollectionsKt.joinToString$default(zzprVar.zzj(), null, null, null, 0, null, new zzbw(this), 31, null);
    }

    @Override // com.google.android.recaptcha.internal.zzbu
    public final void zza(String str) {
        BuildersKt__Builders_commonKt.launch$default(this.zzb, null, null, new zzbz(new zzcj(this.zzc), this, str, null), 3, null);
    }
}
