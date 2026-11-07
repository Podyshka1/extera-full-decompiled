package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.DelayKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhp {
    public static final zzhp zza = new zzhp();

    private zzhp() {
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00be -> B:18:0x004b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(int i, long j, long j2, double d, Function1 function1, Continuation continuation) {
        zzhm zzhmVar;
        Ref.LongRef longRef;
        zzhm zzhmVar2;
        int i2;
        int i3;
        long j3;
        double d2;
        Function1 function12;
        Function1 function13;
        Ref.LongRef longRef2;
        long j4;
        double d3;
        int i4;
        int i5;
        long jCoerceAtMost;
        Object objInvoke;
        if (continuation instanceof zzhm) {
            zzhmVar = (zzhm) continuation;
            int i6 = zzhmVar.zzh;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                zzhmVar.zzh = i6 - Integer.MIN_VALUE;
            } else {
                zzhmVar = new zzhm(this, continuation);
            }
        }
        Object obj = zzhmVar.zzf;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i7 = zzhmVar.zzh;
        Ref.LongRef longRef3 = null;
        if (i7 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.LongRef longRef4 = new Ref.LongRef();
            longRef4.element = j;
            longRef = longRef4;
            zzhmVar2 = zzhmVar;
            i2 = i - 1;
            i3 = 0;
            j3 = j2;
            d2 = d;
            function12 = function1;
            if (i3 >= i2) {
            }
            return objInvoke;
        }
        if (i7 == 1) {
            i5 = zzhmVar.zze;
            i4 = zzhmVar.zzd;
            d3 = zzhmVar.zzb;
            j4 = zzhmVar.zza;
            longRef2 = zzhmVar.zzi;
            function13 = (Function1) zzhmVar.zzc;
            try {
                ResultKt.throwOnFailure(obj);
                return obj;
            } catch (Exception unused) {
                jCoerceAtMost = RangesKt.coerceAtMost((long) (longRef2.element * d3), j4);
                longRef2.element = jCoerceAtMost;
                zzhmVar.zzc = function13;
                zzhmVar.zzi = longRef2;
                zzhmVar.zza = j4;
                zzhmVar.zzb = d3;
                zzhmVar.zzd = i4;
                zzhmVar.zze = i5;
                zzhmVar.zzh = 2;
                if (DelayKt.delay(jCoerceAtMost, zzhmVar) == coroutine_suspended) {
                }
                long j5 = j4;
                zzhmVar2 = zzhmVar;
                j3 = j5;
                int i8 = i5;
                i2 = i4;
                d2 = d3;
                longRef = longRef2;
                function12 = function13;
                i3 = i8 + 1;
                longRef3 = null;
                if (i3 >= i2) {
                }
                return objInvoke;
            }
        }
        if (i7 != 2) {
            if (i7 == 3) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i5 = zzhmVar.zze;
        i4 = zzhmVar.zzd;
        d3 = zzhmVar.zzb;
        j4 = zzhmVar.zza;
        longRef2 = zzhmVar.zzi;
        function13 = (Function1) zzhmVar.zzc;
        ResultKt.throwOnFailure(obj);
        long j52 = j4;
        zzhmVar2 = zzhmVar;
        j3 = j52;
        int i82 = i5;
        i2 = i4;
        d2 = d3;
        longRef = longRef2;
        function12 = function13;
        i3 = i82 + 1;
        longRef3 = null;
        if (i3 >= i2) {
            try {
            } catch (Exception unused2) {
                function13 = function12;
                i5 = i3;
                longRef2 = longRef;
                d3 = d2;
                i4 = i2;
                zzhmVar = zzhmVar2;
                j4 = j3;
                jCoerceAtMost = RangesKt.coerceAtMost((long) (longRef2.element * d3), j4);
                longRef2.element = jCoerceAtMost;
                zzhmVar.zzc = function13;
                zzhmVar.zzi = longRef2;
                zzhmVar.zza = j4;
                zzhmVar.zzb = d3;
                zzhmVar.zzd = i4;
                zzhmVar.zze = i5;
                zzhmVar.zzh = 2;
                if (DelayKt.delay(jCoerceAtMost, zzhmVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                long j522 = j4;
                zzhmVar2 = zzhmVar;
                j3 = j522;
                int i822 = i5;
                i2 = i4;
                d2 = d3;
                longRef = longRef2;
                function12 = function13;
                i3 = i822 + 1;
                longRef3 = null;
                if (i3 >= i2) {
                }
                return objInvoke;
            }
            zzhmVar2.zzc = function12;
            zzhmVar2.zzi = longRef;
            zzhmVar2.zza = j3;
            zzhmVar2.zzb = d2;
            zzhmVar2.zzd = i2;
            zzhmVar2.zze = i3;
            zzhmVar2.zzh = 1;
            objInvoke = function12.invoke(zzhmVar2);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            Ref.LongRef longRef5 = longRef3;
            zzhmVar2.zzc = longRef5;
            zzhmVar2.zzi = longRef5;
            zzhmVar2.zzh = 3;
            objInvoke = function12.invoke(zzhmVar2);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return objInvoke;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ab, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r6, r1) != r2) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ae A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ab -> B:13:0x003d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzc(Function1 function1, long j, long j2, double d, Function1 function12, Continuation continuation) throws Exception {
        zzhn zzhnVar;
        long jCoerceAtMost;
        long j3;
        double d2;
        Function1 function13;
        zzhn zzhnVar2;
        Function1 function14;
        Function1 function15;
        long j4;
        double d3;
        Exception e;
        if (continuation instanceof zzhn) {
            zzhnVar = (zzhn) continuation;
            int i = zzhnVar.zzh;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzhnVar.zzh = i - Integer.MIN_VALUE;
            } else {
                zzhnVar = new zzhn(this, continuation);
            }
        }
        Object obj = zzhnVar.zzf;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzhnVar.zzh;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            jCoerceAtMost = j;
            j3 = j2;
            d2 = d;
            function13 = function12;
            zzhnVar2 = zzhnVar;
            function14 = function1;
            zzhnVar2.zza = function14;
            zzhnVar2.zzb = function13;
            zzhnVar2.zzc = j3;
            zzhnVar2.zze = d2;
            zzhnVar2.zzd = jCoerceAtMost;
            zzhnVar2.zzh = 1;
            Object objInvoke = function13.invoke(zzhnVar2);
            if (objInvoke != coroutine_suspended) {
            }
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                jCoerceAtMost = zzhnVar.zzd;
                d3 = zzhnVar.zze;
                j4 = zzhnVar.zzc;
                function13 = (Function1) zzhnVar.zzb;
                function15 = (Function1) zzhnVar.zza;
                ResultKt.throwOnFailure(obj);
                Function1 function16 = function15;
                zzhnVar2 = zzhnVar;
                function14 = function16;
                long j5 = j4;
                d2 = d3;
                j3 = j5;
                try {
                } catch (Exception e2) {
                    e = e2;
                    zzhn zzhnVar3 = zzhnVar2;
                    function15 = function14;
                    zzhnVar = zzhnVar3;
                    double d4 = d2;
                    j4 = j3;
                    d3 = d4;
                    if (((Boolean) function15.invoke(e)).booleanValue()) {
                    }
                }
                zzhnVar2.zza = function14;
                zzhnVar2.zzb = function13;
                zzhnVar2.zzc = j3;
                zzhnVar2.zze = d2;
                zzhnVar2.zzd = jCoerceAtMost;
                zzhnVar2.zzh = 1;
                Object objInvoke2 = function13.invoke(zzhnVar2);
                return objInvoke2 != coroutine_suspended ? coroutine_suspended : objInvoke2;
            }
            jCoerceAtMost = zzhnVar.zzd;
            d3 = zzhnVar.zze;
            j4 = zzhnVar.zzc;
            function13 = (Function1) zzhnVar.zzb;
            function15 = (Function1) zzhnVar.zza;
            try {
                ResultKt.throwOnFailure(obj);
                return obj;
            } catch (Exception e3) {
                e = e3;
                if (((Boolean) function15.invoke(e)).booleanValue()) {
                    throw e;
                }
                jCoerceAtMost = RangesKt.coerceAtMost((long) (jCoerceAtMost * d3), j4);
                zzhnVar.zza = function15;
                zzhnVar.zzb = function13;
                zzhnVar.zzc = j4;
                zzhnVar.zze = d3;
                zzhnVar.zzd = jCoerceAtMost;
                zzhnVar.zzh = 2;
            }
        }
    }
}
