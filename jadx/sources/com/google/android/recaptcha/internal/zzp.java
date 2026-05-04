package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaErrorCode;
import com.google.android.recaptcha.RecaptchaException;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzp extends Exception {
    public static final zzo zza = new zzo(null);
    private static final Map zzb;
    private final zzn zzc;
    private final zzl zzd;
    private final String zze;
    private final Map zzf;

    static {
        Pair pairM1081to = TuplesKt.m1081to(zzpb.JS_NETWORK_ERROR, new zzp(zzn.zze, zzl.zzm, null));
        zzpb zzpbVar = zzpb.JS_INTERNAL_ERROR;
        zzn zznVar = zzn.zzc;
        zzb = MapsKt.mapOf(pairM1081to, TuplesKt.m1081to(zzpbVar, new zzp(zznVar, zzl.zzk, null)), TuplesKt.m1081to(zzpb.JS_INVALID_SITE_KEY, new zzp(zzn.zzf, zzl.zzn, null)), TuplesKt.m1081to(zzpb.JS_INVALID_SITE_KEY_TYPE, new zzp(zzn.zzg, zzl.zzo, null)), TuplesKt.m1081to(zzpb.JS_THIRD_PARTY_APP_PACKAGE_NAME_NOT_ALLOWED, new zzp(zzn.zzh, zzl.zzp, null)), TuplesKt.m1081to(zzpb.JS_INVALID_ACTION, new zzp(zzn.zzi, zzl.zzq, null)), TuplesKt.m1081to(zzpb.JS_PROGRAM_ERROR, new zzp(zznVar, zzl.zzu, null)));
    }

    public zzp(zzn zznVar, zzl zzlVar, String str) {
        this.zzc = zznVar;
        this.zzd = zzlVar;
        this.zze = str;
        zzn zznVar2 = zzn.zze;
        RecaptchaErrorCode recaptchaErrorCode = RecaptchaErrorCode.NETWORK_ERROR;
        this.zzf = MapsKt.mapOf(TuplesKt.m1081to(zznVar2, new RecaptchaException(recaptchaErrorCode, null, 2, null)), TuplesKt.m1081to(zzn.zzk, new RecaptchaException(recaptchaErrorCode, null, 2, null)), TuplesKt.m1081to(zzn.zzf, new RecaptchaException(RecaptchaErrorCode.INVALID_SITEKEY, null, 2, null)), TuplesKt.m1081to(zzn.zzg, new RecaptchaException(RecaptchaErrorCode.INVALID_KEYTYPE, null, 2, null)), TuplesKt.m1081to(zzn.zzh, new RecaptchaException(RecaptchaErrorCode.INVALID_PACKAGE_NAME, null, 2, null)), TuplesKt.m1081to(zzn.zzi, new RecaptchaException(RecaptchaErrorCode.INVALID_ACTION, null, 2, null)), TuplesKt.m1081to(zzn.zzc, new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null)));
    }

    public final zzl zza() {
        return this.zzd;
    }

    public final zzn zzb() {
        return this.zzc;
    }

    public final RecaptchaException zzc() {
        if (Intrinsics.areEqual(this.zzd, zzl.zzT)) {
            return new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null);
        }
        RecaptchaException recaptchaException = (RecaptchaException) this.zzf.get(this.zzc);
        return recaptchaException == null ? new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null) : recaptchaException;
    }

    public final String zzd() {
        return this.zze;
    }
}
