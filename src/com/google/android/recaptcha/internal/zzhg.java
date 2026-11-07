package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaErrorCode;
import com.google.android.recaptcha.RecaptchaException;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhg extends Exception {
    private static final Map zzf;
    private final zzhf zza;
    private final zzhe zzb;
    private final String zzc;
    private final Exception zzd;
    private final Map zze;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Pair pair = TuplesKt.to(zzami.JS_NETWORK_ERROR, new zzhg(zzhf.zzc, zzhe.zzd, null, null, 12, null));
        zzami zzamiVar = zzami.JS_INTERNAL_ERROR;
        zzhf zzhfVar = zzhf.zzb;
        int i = 12;
        DefaultConstructorMarker defaultConstructorMarker = null;
        String str = null;
        Object[] objArr = 0 == true ? 1 : 0;
        zzf = MapsKt.mapOf(pair, TuplesKt.to(zzamiVar, new zzhg(zzhfVar, zzhe.zzc, null, 0 == true ? 1 : 0, 12, null)), TuplesKt.to(zzami.JS_INVALID_SITE_KEY, new zzhg(zzhf.zzd, zzhe.zze, str, 0 == true ? 1 : 0, i, defaultConstructorMarker)), TuplesKt.to(zzami.JS_INVALID_SITE_KEY_TYPE, new zzhg(zzhf.zze, zzhe.zzf, str, 0 == true ? 1 : 0, i, defaultConstructorMarker)), TuplesKt.to(zzami.JS_THIRD_PARTY_APP_PACKAGE_NAME_NOT_ALLOWED, new zzhg(zzhf.zzf, zzhe.zzg, objArr, null, 12, null)), TuplesKt.to(zzami.JS_INVALID_ACTION, new zzhg(zzhf.zzg, zzhe.zzh, null, null, 12, null)), TuplesKt.to(zzami.JS_PROGRAM_ERROR, new zzhg(zzhfVar, zzhe.zzj, null, null, 12, 0 == true ? 1 : 0)));
    }

    public zzhg(zzhf zzhfVar, zzhe zzheVar, String str, Exception exc) {
        this.zza = zzhfVar;
        this.zzb = zzheVar;
        this.zzc = str;
        this.zzd = exc;
        zzhf zzhfVar2 = zzhf.zzc;
        RecaptchaErrorCode recaptchaErrorCode = RecaptchaErrorCode.NETWORK_ERROR;
        this.zze = MapsKt.mapOf(TuplesKt.to(zzhfVar2, new RecaptchaException(recaptchaErrorCode, null, 2, null)), TuplesKt.to(zzhf.zzh, new RecaptchaException(recaptchaErrorCode, null, 2, null)), TuplesKt.to(zzhf.zzi, new RecaptchaException(recaptchaErrorCode, null, 2, null)), TuplesKt.to(zzhf.zzd, new RecaptchaException(RecaptchaErrorCode.INVALID_SITEKEY, null, 2, null)), TuplesKt.to(zzhf.zze, new RecaptchaException(RecaptchaErrorCode.INVALID_KEYTYPE, null, 2, null)), TuplesKt.to(zzhf.zzf, new RecaptchaException(RecaptchaErrorCode.INVALID_PACKAGE_NAME, null, 2, null)), TuplesKt.to(zzhf.zzg, new RecaptchaException(RecaptchaErrorCode.INVALID_ACTION, null, 2, null)), TuplesKt.to(zzhf.zzb, new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null)), TuplesKt.to(zzhf.zzj, new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null)));
    }

    @Override // java.lang.Throwable
    public final /* synthetic */ Throwable getCause() {
        return this.zzd;
    }

    public final zzhf zza() {
        return this.zza;
    }

    public final zzhe zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzc;
    }

    public final RecaptchaException zzd() {
        zzhe zzheVar = this.zzb;
        if (Intrinsics.areEqual(zzheVar, zzhe.zzm)) {
            return new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null);
        }
        if (Intrinsics.areEqual(zzheVar, zzhe.zzy)) {
            return new RecaptchaException(RecaptchaErrorCode.NO_NETWORK_FOUND, null, 2, null);
        }
        RecaptchaException recaptchaException = (RecaptchaException) this.zze.get(this.zza);
        return recaptchaException == null ? new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null) : recaptchaException;
    }

    public /* synthetic */ zzhg(zzhf zzhfVar, zzhe zzheVar, String str, Exception exc, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(zzhfVar, zzheVar, (i & 4) != 0 ? null : str, null);
    }
}
