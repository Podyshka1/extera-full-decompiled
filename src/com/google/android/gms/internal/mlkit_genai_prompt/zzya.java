package com.google.android.gms.internal.mlkit_genai_prompt;

import android.util.Log;
import com.google.mlkit.genai.common.DownloadCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes5.dex */
final class zzya extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    Object zzd;
    Object zze;
    Object zzf;
    int zzg;
    int zzh;
    final /* synthetic */ zzyd zzi;
    final /* synthetic */ DownloadCallback zzj;
    private /* synthetic */ Object zzk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzya(zzyd zzydVar, DownloadCallback downloadCallback, Continuation continuation) {
        super(2, continuation);
        this.zzi = zzydVar;
        this.zzj = downloadCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzya zzyaVar = new zzya(this.zzi, this.zzj, continuation);
        zzyaVar.zzk = obj;
        return zzyaVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzya) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0092, code lost:
    
        if (r9 != r2) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01d0 A[LOOP:1: B:63:0x01ca->B:65:0x01d0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01ff  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00dd -> B:28:0x00e2). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        AtomicInteger atomicInteger;
        Object objZza;
        zzyd zzydVar;
        Iterator it;
        Collection collection;
        AtomicInteger atomicInteger2;
        int i;
        zzaur zzaurVar;
        List listDrop;
        List listMutableListOf;
        List list;
        List list2;
        int i2;
        zzaur zzaurVar2;
        AtomicInteger atomicInteger3;
        CoroutineScope coroutineScope2;
        AtomicInteger atomicInteger4;
        CoroutineScope coroutineScope3;
        int i3;
        Iterator it2;
        Iterator it3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.zzh;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            coroutineScope = (CoroutineScope) this.zzk;
            atomicInteger = new AtomicInteger(0);
            zzaur zzaurVar3 = this.zzi.zza;
            this.zzk = coroutineScope;
            this.zza = atomicInteger;
            this.zzh = 1;
            objZza = zzaurVar3.zza(this);
        } else {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        it2 = (Iterator) this.zzk;
                        ResultKt.throwOnFailure(obj);
                        while (it2.hasNext()) {
                            Job job = (Job) it2.next();
                            this.zzk = it2;
                            this.zza = null;
                            this.zzb = null;
                            this.zzc = null;
                            this.zzd = null;
                            this.zze = null;
                            this.zzf = null;
                            this.zzh = 4;
                            if (job.join(this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        return Unit.INSTANCE;
                    }
                    i2 = this.zzg;
                    list2 = (List) this.zzd;
                    list = (List) this.zzc;
                    zzaurVar2 = (zzaur) this.zzb;
                    atomicInteger3 = (AtomicInteger) this.zza;
                    coroutineScope2 = (CoroutineScope) this.zzk;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (Exception e) {
                        e = e;
                        Log.w("DownloadManager", "Primary download start failed: ".concat(String.valueOf(e.getMessage())));
                        if (Intrinsics.areEqual(zzaurVar2, this.zzi.zza)) {
                        }
                    }
                    i3 = i2;
                    atomicInteger4 = atomicInteger3;
                    coroutineScope3 = coroutineScope2;
                    it3 = list.iterator();
                    while (it3.hasNext()) {
                        CoroutineScope coroutineScope4 = coroutineScope3;
                        list2.add(BuildersKt__Builders_commonKt.launch$default(coroutineScope4, null, null, new zzxx(this.zzi, (zzaur) it3.next(), this.zzj, atomicInteger4, i3, null), 3, null));
                        coroutineScope3 = coroutineScope4;
                    }
                    listMutableListOf = list2;
                    it2 = listMutableListOf.iterator();
                    while (it2.hasNext()) {
                    }
                    return Unit.INSTANCE;
                }
                i = this.zzg;
                zzaur zzaurVar4 = (zzaur) this.zzf;
                Object next = this.zze;
                it = (Iterator) this.zzd;
                collection = (Collection) this.zzc;
                zzydVar = (zzyd) this.zzb;
                atomicInteger2 = (AtomicInteger) this.zza;
                CoroutineScope coroutineScope5 = (CoroutineScope) this.zzk;
                ResultKt.throwOnFailure(obj);
                Object objZza2 = obj;
                if (((Number) objZza2).intValue() == 1 && !Intrinsics.areEqual(zzydVar.zzc.get(zzaurVar4), Boxing.boxBoolean(true))) {
                    collection.add(next);
                }
                coroutineScope = coroutineScope5;
                if (it.hasNext()) {
                    next = it.next();
                    zzaur zzaurVar5 = (zzaur) next;
                    this.zzk = coroutineScope;
                    this.zza = atomicInteger2;
                    this.zzb = zzydVar;
                    this.zzc = collection;
                    this.zzd = it;
                    this.zze = next;
                    this.zzf = zzaurVar5;
                    this.zzg = i;
                    this.zzh = 2;
                    objZza2 = zzaurVar5.zza(this);
                    if (objZza2 != coroutine_suspended) {
                        coroutineScope5 = coroutineScope;
                        zzaurVar4 = zzaurVar5;
                        if (((Number) objZza2).intValue() == 1) {
                            collection.add(next);
                        }
                        coroutineScope = coroutineScope5;
                        if (it.hasNext()) {
                            List list3 = (List) collection;
                            int size = (i != 0 ? 1 : 0) + list3.size();
                            if (size == 0) {
                                this.zzj.onDownloadCompleted();
                                return Unit.INSTANCE;
                            }
                            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                            if (i != 0) {
                                zzaurVar = this.zzi.zza;
                                listDrop = list3;
                            } else {
                                zzaurVar = (zzaur) CollectionsKt.first(list3);
                                listDrop = CollectionsKt.drop(list3, 1);
                            }
                            zzaur zzaurVar6 = zzaurVar;
                            AtomicInteger atomicInteger5 = atomicInteger2;
                            CoroutineScope coroutineScope6 = coroutineScope;
                            listMutableListOf = CollectionsKt.mutableListOf(BuildersKt__Builders_commonKt.launch$default(coroutineScope6, null, null, new zzxz(this.zzi, zzaurVar6, this.zzj, completableDeferredCompletableDeferred$default, atomicInteger5, size, null), 3, null));
                            if (!listDrop.isEmpty()) {
                                try {
                                    this.zzk = coroutineScope6;
                                    this.zza = atomicInteger5;
                                    this.zzb = zzaurVar6;
                                    this.zzc = listDrop;
                                    this.zzd = listMutableListOf;
                                    this.zze = null;
                                    this.zzf = null;
                                    this.zzg = size;
                                    this.zzh = 3;
                                } catch (Exception e2) {
                                    e = e2;
                                    list = listDrop;
                                    list2 = listMutableListOf;
                                    i2 = size;
                                    zzaurVar2 = zzaurVar6;
                                    atomicInteger3 = atomicInteger5;
                                    coroutineScope2 = coroutineScope6;
                                    Log.w("DownloadManager", "Primary download start failed: ".concat(String.valueOf(e.getMessage())));
                                    if (Intrinsics.areEqual(zzaurVar2, this.zzi.zza)) {
                                        Iterator it4 = list2.iterator();
                                        while (it4.hasNext()) {
                                            Job.cancel$default((Job) it4.next(), null, 1, null);
                                        }
                                        return Unit.INSTANCE;
                                    }
                                    i3 = i2;
                                    atomicInteger4 = atomicInteger3;
                                    coroutineScope3 = coroutineScope2;
                                }
                                if (completableDeferredCompletableDeferred$default.await(this) != coroutine_suspended) {
                                    list = listDrop;
                                    list2 = listMutableListOf;
                                    atomicInteger4 = atomicInteger5;
                                    coroutineScope3 = coroutineScope6;
                                    i3 = size;
                                    it3 = list.iterator();
                                    while (it3.hasNext()) {
                                    }
                                    listMutableListOf = list2;
                                }
                            }
                            it2 = listMutableListOf.iterator();
                            while (it2.hasNext()) {
                            }
                            return Unit.INSTANCE;
                        }
                    }
                }
                return coroutine_suspended;
            }
            atomicInteger = (AtomicInteger) this.zza;
            coroutineScope = (CoroutineScope) this.zzk;
            ResultKt.throwOnFailure(obj);
            objZza = obj;
        }
        int i5 = ((Number) objZza).intValue() == 1 ? 1 : 0;
        zzyd zzydVar2 = this.zzi;
        List list4 = zzydVar2.zzb;
        ArrayList arrayList = new ArrayList();
        zzydVar = zzydVar2;
        it = list4.iterator();
        collection = arrayList;
        atomicInteger2 = atomicInteger;
        i = i5;
        if (it.hasNext()) {
        }
        return coroutine_suspended;
    }
}
