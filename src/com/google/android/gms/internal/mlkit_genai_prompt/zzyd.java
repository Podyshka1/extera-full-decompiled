package com.google.android.gms.internal.mlkit_genai_prompt;

import android.util.Log;
import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.GenAiException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScopeKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyd {
    private final zzaur zza;
    private final List zzb;
    private final Map zzc = new LinkedHashMap();

    public zzyd(zzaur zzaurVar, List list) {
        this.zza = zzaurVar;
        this.zzb = list;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0058, code lost:
    
        if (r11 != r1) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x009b -> B:32:0x00b7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00b0 -> B:31:0x00b1). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zza(zzyd zzydVar, Continuation continuation) {
        zzxv zzxvVar;
        Iterator it;
        Collection collection;
        zzyd zzydVar2;
        int i;
        if (continuation instanceof zzxv) {
            zzxvVar = (zzxv) continuation;
            int i2 = zzxvVar.zzg;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                zzxvVar.zzg = i2 - Integer.MIN_VALUE;
            } else {
                zzxvVar = new zzxv(zzydVar, continuation);
            }
        }
        Object objZza = zzxvVar.zze;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = zzxvVar.zzg;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzaur zzaurVar = zzydVar.zza;
            zzxvVar.zzh = zzydVar;
            zzxvVar.zzg = 1;
            objZza = zzaurVar.zza(zzxvVar);
        } else if (i3 == 1) {
            zzydVar = zzxvVar.zzh;
            ResultKt.throwOnFailure(objZza);
        } else {
            if (i3 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = zzxvVar.zzd;
            collection = (Collection) zzxvVar.zzc;
            it = (Iterator) zzxvVar.zzb;
            Collection collection2 = (Collection) zzxvVar.zza;
            zzydVar2 = zzxvVar.zzh;
            ResultKt.throwOnFailure(objZza);
            int iIntValue = ((Number) objZza).intValue();
            collection.add(Boxing.boxInt(iIntValue));
            collection = collection2;
            if (!it.hasNext()) {
                zzaur zzaurVar2 = (zzaur) it.next();
                if (!Intrinsics.areEqual(zzydVar2.zzc.get(zzaurVar2), Boxing.boxBoolean(true))) {
                    zzxvVar.zzh = zzydVar2;
                    zzxvVar.zza = collection;
                    zzxvVar.zzb = it;
                    zzxvVar.zzc = collection;
                    zzxvVar.zzd = i;
                    zzxvVar.zzg = 2;
                    objZza = zzaurVar2.zza(zzxvVar);
                    if (objZza != coroutine_suspended) {
                        collection2 = collection;
                        int iIntValue2 = ((Number) objZza).intValue();
                        collection.add(Boxing.boxInt(iIntValue2));
                        collection = collection2;
                        if (!it.hasNext()) {
                        }
                    }
                    return coroutine_suspended;
                }
                collection2 = collection;
                iIntValue2 = 0;
                collection.add(Boxing.boxInt(iIntValue2));
                collection = collection2;
                if (!it.hasNext()) {
                    List list = (List) collection;
                    if (i != 1) {
                        List list2 = list;
                        boolean z = list2 instanceof Collection;
                        if (!z || !list2.isEmpty()) {
                            Iterator it2 = list2.iterator();
                            while (it2.hasNext()) {
                                if (((Number) it2.next()).intValue() == 1) {
                                }
                            }
                        }
                        if (i != 2) {
                            if (!z || !list2.isEmpty()) {
                                Iterator it3 = list2.iterator();
                                while (it3.hasNext()) {
                                    if (((Number) it3.next()).intValue() == 2) {
                                    }
                                }
                            }
                            return Boxing.boxInt(3);
                        }
                        return Boxing.boxInt(2);
                    }
                    return Boxing.boxInt(1);
                }
            }
        }
        int iIntValue3 = ((Number) objZza).intValue();
        if (iIntValue3 == 0) {
            return Boxing.boxInt(0);
        }
        List list3 = zzydVar.zzb;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
        it = list3.iterator();
        collection = arrayList;
        zzydVar2 = zzydVar;
        i = iIntValue3;
        if (!it.hasNext()) {
        }
    }

    public static /* synthetic */ Object zzb(zzyd zzydVar, DownloadCallback downloadCallback, Continuation continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new zzya(zzydVar, downloadCallback, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzj(zzaur zzaurVar, DownloadCallback downloadCallback, boolean z, CompletableDeferred completableDeferred, Function0 function0, Continuation continuation) {
        zzyb zzybVar;
        Function0 function02;
        zzaur zzaurVar2;
        DownloadCallback downloadCallback2;
        CompletableDeferred completableDeferred2;
        Function0 function03;
        if (continuation instanceof zzyb) {
            zzybVar = (zzyb) continuation;
            int i = zzybVar.zzg;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzybVar.zzg = i - Integer.MIN_VALUE;
            } else {
                zzybVar = new zzyb(this, continuation);
            }
        }
        zzyb zzybVar2 = zzybVar;
        Object obj = zzybVar2.zze;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzybVar2.zzg;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                function02 = function0;
                try {
                    DownloadCallback zzycVar = new zzyc(z, downloadCallback, completableDeferred, this, zzaurVar, function02);
                    zzybVar2.zza = zzaurVar;
                    zzybVar2.zzb = downloadCallback;
                    zzybVar2.zzc = completableDeferred;
                    function02 = function0;
                    zzybVar2.zzd = function02;
                    zzybVar2.zzg = 1;
                    if (zzaurVar.zzC(zzycVar, zzybVar2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (GenAiException e) {
                    e = e;
                    zzaurVar2 = zzaurVar;
                    downloadCallback2 = downloadCallback;
                    completableDeferred2 = completableDeferred;
                    function03 = function02;
                    zzk(zzaurVar2, e, downloadCallback2);
                    if (completableDeferred2 != null) {
                        Boxing.boxBoolean(completableDeferred2.completeExceptionally(e));
                    }
                    function03.invoke();
                }
            } catch (GenAiException e2) {
                e = e2;
                function02 = function0;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            function03 = (Function0) zzybVar2.zzd;
            CompletableDeferred completableDeferred3 = (CompletableDeferred) zzybVar2.zzc;
            DownloadCallback downloadCallback3 = (DownloadCallback) zzybVar2.zzb;
            zzaurVar2 = (zzaur) zzybVar2.zza;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (GenAiException e3) {
                e = e3;
                completableDeferred2 = completableDeferred3;
                downloadCallback2 = downloadCallback3;
                zzk(zzaurVar2, e, downloadCallback2);
                if (completableDeferred2 != null) {
                }
                function03.invoke();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(zzaur zzaurVar, GenAiException genAiException, DownloadCallback downloadCallback) {
        this.zzc.put(zzaurVar, Boolean.TRUE);
        new StringBuilder(String.valueOf(zzaurVar).length() + 28);
        Objects.toString(zzaurVar);
        Log.w("DownloadManager", "Failed to download feature: ".concat(String.valueOf(zzaurVar)), genAiException);
        if (Intrinsics.areEqual(zzaurVar, this.zza)) {
            downloadCallback.onDownloadFailed(genAiException);
        }
    }

    public final boolean zzd(zzaur zzaurVar) {
        return Intrinsics.areEqual(this.zzc.get(zzaurVar), Boolean.TRUE);
    }
}
