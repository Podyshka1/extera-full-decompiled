package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.prompt.CachedContext;
import com.google.mlkit.genai.prompt.Caches;
import com.google.mlkit.genai.prompt.CreateCachedContextRequest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.coroutines.CoroutineScopeKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxo implements Caches {
    private final Context zza;
    private final zzwl zzb;
    private final zzxs zzc;

    public zzxo(Context context, zzwl zzwlVar, zzxs zzxsVar) {
        this.zza = context;
        this.zzb = zzwlVar;
        this.zzc = zzxsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    @Override // com.google.mlkit.genai.prompt.Caches
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object create(CreateCachedContextRequest createCachedContextRequest, Continuation<? super CachedContext> continuation) throws GenAiException {
        zzxk zzxkVar;
        Object objZzz;
        String str;
        String str2;
        CreateCachedContextRequest createCachedContextRequest2;
        String str3;
        String str4;
        CreateCachedContextRequest createCachedContextRequest3;
        ParcelFileDescriptor parcelFileDescriptor;
        if (continuation instanceof zzxk) {
            zzxkVar = (zzxk) continuation;
            int i = zzxkVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzxkVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzxkVar = new zzxk(this, continuation);
            }
        }
        zzxk zzxkVar2 = zzxkVar;
        Object obj = zzxkVar2.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzxkVar2.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            String zza = createCachedContextRequest.getZza();
            String textString = createCachedContextRequest.getZzb().getTextString();
            zzwl zzwlVar = this.zzb;
            zzxkVar2.zzd = createCachedContextRequest;
            zzxkVar2.zze = zza;
            zzxkVar2.zzf = textString;
            zzxkVar2.zzc = 1;
            objZzz = zzwlVar.zzz(zzxkVar2);
            if (objZzz != coroutine_suspended) {
                str = textString;
                str2 = zza;
                createCachedContextRequest2 = createCachedContextRequest;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str5 = zzxkVar2.zzf;
            str3 = zzxkVar2.zze;
            createCachedContextRequest3 = zzxkVar2.zzd;
            ResultKt.throwOnFailure(obj);
            str4 = str5;
            parcelFileDescriptor = (ParcelFileDescriptor) obj;
            if (parcelFileDescriptor != null) {
                throw new GenAiException("Failed to open file descriptor to create cache for name: ".concat(String.valueOf(str3)), (Throwable) null, -103);
            }
            zzwl zzwlVar2 = this.zzb;
            zzaal zzaalVar = new zzaal(str4, parcelFileDescriptor, null, 4, null);
            zzxkVar2.zzd = null;
            zzxkVar2.zze = null;
            zzxkVar2.zzf = null;
            zzxkVar2.zzc = 3;
            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new zzwk(zzaalVar, zzwlVar2, createCachedContextRequest3, null), zzxkVar2);
            return objCoroutineScope == coroutine_suspended ? coroutine_suspended : objCoroutineScope;
        }
        String str6 = zzxkVar2.zzf;
        String str7 = zzxkVar2.zze;
        CreateCachedContextRequest createCachedContextRequest4 = zzxkVar2.zzd;
        ResultKt.throwOnFailure(obj);
        objZzz = obj;
        createCachedContextRequest2 = createCachedContextRequest4;
        str = str6;
        str2 = str7;
        zzxs zzxsVar = this.zzc;
        Context context = this.zza;
        String str8 = (String) objZzz;
        zzxkVar2.zzd = createCachedContextRequest2;
        zzxkVar2.zze = str2;
        zzxkVar2.zzf = str;
        zzxkVar2.zzc = 2;
        String str9 = str2;
        Object objZzd = zzxs.zzd(zzxsVar, context, str9, str, str8, zzxkVar2);
        if (objZzd != coroutine_suspended) {
            str3 = str9;
            str4 = str;
            createCachedContextRequest3 = createCachedContextRequest2;
            obj = objZzd;
            parcelFileDescriptor = (ParcelFileDescriptor) obj;
            if (parcelFileDescriptor != null) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.mlkit.genai.prompt.Caches
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object delete(String str, Continuation<? super Boolean> continuation) throws GenAiException {
        zzxl zzxlVar;
        if (continuation instanceof zzxl) {
            zzxlVar = (zzxl) continuation;
            int i = zzxlVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzxlVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzxlVar = new zzxl(this, continuation);
            }
        }
        Object objZza = zzxlVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzxlVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzxs zzxsVar = this.zzc;
            Context context = this.zza;
            zzxlVar.zzc = 1;
            objZza = zzxs.zza(zzxsVar, context, str, null, zzxlVar);
            if (objZza != coroutine_suspended) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(objZza);
                return objZza;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(objZza);
        zzxt zzxtVar = (zzxt) objZza;
        if (zzxtVar == null) {
            return Boxing.boxBoolean(false);
        }
        zzxs zzxsVar2 = this.zzc;
        Context context2 = this.zza;
        zzxlVar.zzc = 2;
        Object objZzw = zzxsVar2.zzb.zzw(context2, zzxtVar.zza(), zzxlVar);
        return objZzw == coroutine_suspended ? coroutine_suspended : objZzw;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.mlkit.genai.prompt.Caches
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object list(Continuation<? super List<CachedContext>> continuation) throws Throwable {
        zzxn zzxnVar;
        if (continuation instanceof zzxn) {
            zzxnVar = (zzxn) continuation;
            int i = zzxnVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzxnVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzxnVar = new zzxn(this, continuation);
            }
        }
        Object objZzt = zzxnVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzxnVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzt);
            zzxs zzxsVar = this.zzc;
            Context context = this.zza;
            zzxnVar.zzc = 1;
            objZzt = zzxsVar.zzb.zzt(context, new zzwy(null), zzxnVar);
            if (objZzt == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZzt);
        }
        Collection collectionValues = ((Map) objZzt).values();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collectionValues, 10));
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList.add(CachedContext.Companion.zza(((zzxt) it.next()).zza()));
        }
        return arrayList;
    }
}
