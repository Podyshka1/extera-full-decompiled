package com.google.android.recaptcha.internal;

import android.app.Application;
import android.os.Build;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzal extends SuspendLambda implements Function2 {
    final /* synthetic */ Application zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzbd zzc;
    final /* synthetic */ zzbq zzd;
    final /* synthetic */ zzab zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzal(Application application, String str, zzbd zzbdVar, zzbq zzbqVar, zzab zzabVar, Continuation continuation) {
        super(2, continuation);
        this.zza = application;
        this.zzb = str;
        this.zzc = zzbdVar;
        this.zzd = zzbqVar;
        this.zze = zzabVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzal(this.zza, this.zzb, this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzal) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws UnsupportedEncodingException {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzaf zzafVar = zzaf.zza;
        zzbd zzbdVar = this.zzc;
        Application application = this.zza;
        String strZza = zzaf.zza(application);
        String packageName = application.getPackageName();
        String strZzd = zzbdVar.zzd();
        zzq zzqVar = new zzq(application);
        int i = Build.VERSION.SDK_INT;
        String strZza2 = zzqVar.zza("_GRECAPTCHA_KC");
        if (strZza2 == null) {
            strZza2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        byte[] bytes = ("k=" + URLEncoder.encode(this.zzb, "UTF-8") + "&pk=" + URLEncoder.encode(packageName, "UTF-8") + "&mst=" + URLEncoder.encode(strZza, "UTF-8") + "&msv=" + URLEncoder.encode("18.4.0", "UTF-8") + "&msi=" + URLEncoder.encode(strZzd, "UTF-8") + "&mov=" + i + "&mkc=" + strZza2).getBytes(Charset.forName("UTF-8"));
        return this.zzd.zza(this.zze.zzb(), bytes, this.zzc);
    }
}
