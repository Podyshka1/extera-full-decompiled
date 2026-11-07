package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaag {
    public static final zzzz zza = new zzzz(null);
    private static volatile zzaag zzc;
    private final zzxg zzb;
    private final zzxp zzd;

    public /* synthetic */ zzaag(zzxg zzxgVar, int i, zzxp zzxpVar, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        zzxp zzxpVar2 = zzxp.zza;
        this.zzb = zzxgVar;
        this.zzd = zzxpVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zza(zzaag zzaagVar, Context context, String str, String str2, Continuation continuation) {
        zzaaf zzaafVar;
        if (continuation instanceof zzaaf) {
            zzaafVar = (zzaaf) continuation;
            int i = zzaafVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaafVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzaafVar = new zzaaf(zzaagVar, continuation);
            }
        }
        Object objZza = zzaafVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaafVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            if (str.length() == 0) {
                return null;
            }
            String strZzj = zzj(str, str2);
            zzxg zzxgVar = zzaagVar.zzb;
            zzaafVar.zzd = str2;
            zzaafVar.zzc = 1;
            objZza = zzxg.zza(zzxgVar, context, strZzj, zzaafVar);
            if (objZza == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = zzaafVar.zzd;
            ResultKt.throwOnFailure(objZza);
        }
        zzaab zzaabVar = (zzaab) objZza;
        if (Intrinsics.areEqual(zzaabVar != null ? zzaabVar.zze() : null, str2)) {
            return zzaabVar;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zzb(zzaag zzaagVar, Context context, zzaab zzaabVar, Continuation continuation) {
        zzaad zzaadVar;
        String strZza;
        Object objZza;
        String str;
        zzaag zzaagVar2;
        zzaab zzaabVar2;
        Context context2;
        ParcelFileDescriptor parcelFileDescriptor;
        zzaag zzaagVar3 = zzaagVar;
        Context context3 = context;
        if (continuation instanceof zzaad) {
            zzaadVar = (zzaad) continuation;
            int i = zzaadVar.zze;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaadVar.zze = i - Integer.MIN_VALUE;
            } else {
                zzaadVar = new zzaad(zzaagVar3, continuation);
            }
        }
        Object obj = zzaadVar.zzc;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaadVar.zze;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            strZza = zzaabVar.zza();
            zzxg zzxgVar = zzaagVar3.zzb;
            zzaadVar.zza = zzaagVar3;
            zzaadVar.zzb = context3;
            zzaadVar.zzf = strZza;
            zzaadVar.zze = 1;
            objZza = zzxg.zza(zzxgVar, context3, strZza, zzaadVar);
            if (objZza != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) zzaadVar.zza;
                ResultKt.throwOnFailure(obj);
                return parcelFileDescriptor2;
            }
            zzaabVar2 = zzaadVar.zzg;
            String str2 = zzaadVar.zzf;
            context2 = (Context) zzaadVar.zzb;
            zzaagVar2 = (zzaag) zzaadVar.zza;
            ResultKt.throwOnFailure(obj);
            str = str2;
            parcelFileDescriptor = (ParcelFileDescriptor) obj;
            if (parcelFileDescriptor != null) {
                zzxp zzxpVar = zzaagVar2.zzd;
                zzaab zzaabVar3 = new zzaab(str, zzaabVar2.zzb(), System.currentTimeMillis(), zzaabVar2.zze());
                zzxg zzxgVar2 = zzaagVar2.zzb;
                zzaadVar.zza = parcelFileDescriptor;
                zzaadVar.zzb = null;
                zzaadVar.zzf = null;
                zzaadVar.zzg = null;
                zzaadVar.zze = 3;
                if (zzxg.zzc(zzxgVar2, context2, zzaabVar3, zzaadVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return parcelFileDescriptor;
        }
        String str3 = zzaadVar.zzf;
        context3 = (Context) zzaadVar.zzb;
        zzaag zzaagVar4 = (zzaag) zzaadVar.zza;
        ResultKt.throwOnFailure(obj);
        strZza = str3;
        zzaagVar3 = zzaagVar4;
        objZza = obj;
        zzaab zzaabVar4 = (zzaab) objZza;
        if (zzaabVar4 == null) {
            return null;
        }
        zzxg zzxgVar3 = zzaagVar3.zzb;
        zzaadVar.zza = zzaagVar3;
        zzaadVar.zzb = context3;
        zzaadVar.zzf = strZza;
        zzaadVar.zzg = zzaabVar4;
        zzaadVar.zze = 2;
        Object objWithContext = BuildersKt.withContext(zzxgVar3.zzh.getCoroutineContext(), new zzwu(zzaabVar4, zzxgVar3, context3, null), zzaadVar);
        if (objWithContext != coroutine_suspended) {
            str = strZza;
            obj = objWithContext;
            zzaagVar2 = zzaagVar3;
            zzaabVar2 = zzaabVar4;
            context2 = context3;
            parcelFileDescriptor = (ParcelFileDescriptor) obj;
            if (parcelFileDescriptor != null) {
            }
            return parcelFileDescriptor;
        }
        return coroutine_suspended;
    }

    public static /* synthetic */ Object zzc(final zzaag zzaagVar, Context context, String str, String str2, Continuation continuation) {
        if (str.length() == 0) {
            return null;
        }
        zzaab zzaabVar = new zzaab(zzj(str, str2), zzxh.zza(), System.currentTimeMillis(), str2);
        zzxg zzxgVar = zzaagVar.zzb;
        return BuildersKt.withContext(zzxgVar.zzh.getCoroutineContext(), new zzww(zzaabVar, zzxgVar, context, new Function1() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzaaa
            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Object invoke(Object obj) {
                return zzaag.zzi(this.zza, (Map) obj);
            }
        }, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Collection zzi(zzaag zzaagVar, Map map) {
        if (map.size() <= 10) {
            return CollectionsKt.emptyList();
        }
        List listTake = CollectionsKt.take(CollectionsKt.sortedWith(map.values(), new zzaae()), map.size() - 10);
        Iterator it = listTake.iterator();
        while (it.hasNext()) {
            Log.i("ImplicitCacheManager", "Cache limit reached. Remove least recent used cache with name ".concat(String.valueOf(((zzaab) it.next()).zza())));
        }
        return listTake;
    }

    private static final String zzj(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        return sb.toString();
    }
}
