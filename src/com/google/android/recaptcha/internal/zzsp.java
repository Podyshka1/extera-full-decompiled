package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzsp {
    private final String zza;
    private final zzaer zzb;
    private final zzsn zzc;
    private final zzso zzd;
    private final Integer zze;

    private zzsp(String str, zzaer zzaerVar, zzsn zzsnVar, zzso zzsoVar, Integer num) {
        this.zza = str;
        this.zzb = zzaerVar;
        this.zzc = zzsnVar;
        this.zzd = zzsoVar;
        this.zze = num;
    }

    public static zzsp zza(String str, zzaer zzaerVar, zzsn zzsnVar, zzso zzsoVar, Integer num) throws GeneralSecurityException {
        if (num != null && zzsoVar.equals(zzso.zzd)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot set idRequirement for OutputPrefixType RAW");
            return null;
        }
        if (num == null && !zzsoVar.equals(zzso.zzd)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot have null idRequirement unless OutputPrefixType is RAW");
            return null;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '!' || cCharAt > '~') {
                StringBuilder sb = new StringBuilder(str.length() + 50 + String.valueOf(i).length());
                sb.append("typeURL ");
                sb.append(str);
                sb.append(" contains non-ascii character at position ");
                sb.append(i);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return new zzsp(str, zzaerVar, zzsnVar, zzsoVar, num);
    }

    public final String zzb() {
        return this.zza;
    }

    public final zzaer zzc() {
        return this.zzb;
    }

    public final zzsn zzd() {
        return this.zzc;
    }

    public final zzso zze() {
        return this.zzd;
    }

    public final Integer zzf() {
        return this.zze;
    }
}
