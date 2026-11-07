package com.google.android.recaptcha.internal;

import android.content.Context;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlx implements zzlr {
    private static Timer zzb;
    private final zzlq zza;
    private final zzlz zzc;
    private final zzhu zzd;

    public zzlx(Context context, zzlz zzlzVar, zzhu zzhuVar, zzlq zzlqVar) {
        this.zzc = zzlzVar;
        this.zzd = zzhuVar;
        this.zza = zzlqVar;
        if (zzb == null) {
            Timer timer = new Timer();
            zzb = timer;
            timer.schedule(new zzlu(this), NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg(int i) {
        BuildersKt__Builders_commonKt.launch$default(this.zzd.zzf(), null, null, new zzlw(this, i, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzh(List list, Continuation continuation) {
        zzls zzlsVar;
        Iterator it;
        if (continuation instanceof zzls) {
            zzlsVar = (zzls) continuation;
            int i = zzlsVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzlsVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zzlsVar = new zzls(this, continuation);
            }
        }
        Object obj = zzlsVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzlsVar.zzd;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            it = CollectionsKt.windowed(list, 20, 20, true).iterator();
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            it = (Iterator) zzlsVar.zza;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            List list2 = (List) it.next();
            zzlsVar.zza = it;
            zzlsVar.zzd = 1;
            if (zzi(list2, zzlsVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzi(List list, Continuation continuation) {
        zzlt zzltVar;
        List list2;
        zzamk zzamkVarZzc;
        int iZzh;
        int i;
        if (continuation instanceof zzlt) {
            zzltVar = (zzlt) continuation;
            int i2 = zzltVar.zzd;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                zzltVar.zzd = i2 - Integer.MIN_VALUE;
            } else {
                zzltVar = new zzlt(this, continuation);
            }
        }
        Object objZza = zzltVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = zzltVar.zzd;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzajk zzajkVarZzc = zzajl.zzc();
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzlo zzloVar = (zzlo) it.next();
                try {
                    zzamkVarZzc = zzamk.zzc(zzrv.zzi().zzh(zzloVar.zza()));
                    iZzh = zzamkVarZzc.zzh();
                    i = iZzh - 1;
                } catch (Exception unused) {
                }
                if (iZzh == 0) {
                    throw null;
                }
                if (i == 0) {
                    zzajkVarZzc.zzb(zzamkVarZzc.zza());
                } else if (i == 1) {
                    zzajkVarZzc.zzd(zzamkVarZzc.zzb());
                } else if (i != 2) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                    return null;
                }
                arrayList.add(zzloVar);
            }
            if (zzajkVarZzc.zza() + zzajkVarZzc.zzc() == 0) {
                return Unit.INSTANCE;
            }
            try {
                zzlz zzlzVar = this.zzc;
                zzajl zzajlVar = (zzajl) zzajkVarZzc.zzp();
                zzltVar.zza = arrayList;
                zzltVar.zzd = 1;
                objZza = zzlzVar.zza(zzajlVar, zzltVar);
                if (objZza == coroutine_suspended) {
                    return coroutine_suspended;
                }
                list2 = arrayList;
            } catch (Exception unused2) {
                list2 = arrayList;
                this.zza.zza(list2);
            }
        } else {
            if (i3 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            list2 = (List) zzltVar.zza;
            try {
                ResultKt.throwOnFailure(objZza);
            } catch (Exception unused3) {
                this.zza.zza(list2);
            }
        }
        if (((Boolean) objZza).booleanValue()) {
            this.zza.zzd(list2);
        }
        return Unit.INSTANCE;
    }

    @Override // com.google.android.recaptcha.internal.zzlr
    public final void zza(zzamk zzamkVar) {
        BuildersKt__Builders_commonKt.launch$default(this.zzd.zzc(), null, null, new zzlv(this, zzamkVar, null), 3, null);
    }
}
