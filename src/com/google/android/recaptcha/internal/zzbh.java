package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.Intent;
import androidx.media3.exoplayer.mediacodec.AbstractC0767xa830b2f;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbh implements zzbe {
    private final zzbr zza;
    private final Context zzb;
    private final AtomicReference zzc = new AtomicReference(null);
    private final zzhu zzd;

    public zzbh(zzbr zzbrVar, zzhu zzhuVar, Context context) {
        this.zza = zzbrVar;
        this.zzd = zzhuVar;
        this.zzb = context;
    }

    private final void zzb(zzbk zzbkVar) {
        AbstractC0767xa830b2f.m186m(this.zzc, zzbkVar, null);
        zzbj.zza();
        BuildersKt__Builders_commonKt.launch$default(this.zzd.zza(), null, null, new zzbg(zzbkVar, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zzbe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(zzalc zzalcVar, Continuation continuation) throws Throwable {
        zzbf zzbfVar;
        Throwable th;
        zzbk zzbkVar;
        if (continuation instanceof zzbf) {
            zzbfVar = (zzbf) continuation;
            int i = zzbfVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzbfVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzbfVar = new zzbf(this, continuation);
            }
        }
        Object objZza = zzbfVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzbfVar.zzc;
        if (i2 != 0) {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzbkVar = zzbfVar.zzd;
            try {
                ResultKt.throwOnFailure(objZza);
                zzb(zzbkVar);
                return objZza;
            } catch (Throwable th2) {
                th = th2;
                zzb(zzbkVar);
                throw th;
            }
        }
        ResultKt.throwOnFailure(objZza);
        zzbp zzbpVar = new zzbp(zzalcVar, this.zza, this.zzd.zza());
        if (!AbstractC0767xa830b2f.m186m(this.zzc, null, zzbpVar)) {
            throw new zzhg(zzhf.zzb, zzhe.zzD, null, null, 12, null);
        }
        try {
            zzbfVar.zzd = zzbpVar;
            zzbfVar.zzc = 1;
            zzbj.zzc(zzbpVar);
            Context context = this.zzb;
            Intent intent = new Intent(context, (Class<?>) zzca.class);
            intent.setFlags(268435456);
            context.startActivity(intent);
            objZza = zzbpVar.zza(zzbfVar);
            if (objZza == coroutine_suspended) {
                return coroutine_suspended;
            }
            zzbkVar = zzbpVar;
            zzb(zzbkVar);
            return objZza;
        } catch (Throwable th3) {
            th = th3;
            zzbkVar = zzbpVar;
            zzb(zzbkVar);
            throw th;
        }
    }
}
