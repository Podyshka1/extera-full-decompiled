package com.google.android.gms.internal.measurement;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import com.chaquo.python.internal.Common;
import com.google.common.collect.ImmutableList;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrz {
    private final String zza;
    private String zzb = "files";
    private String zzc = Common.ABI_COMMON;
    private final Account zzd = zzsa.zza;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private final ImmutableList.Builder zzf = ImmutableList.builder();

    public /* synthetic */ zzrz(Context context, byte[] bArr) {
        zzsq.zza(context != null, "Context cannot be null", new Object[0]);
        this.zza = context.getPackageName();
    }

    public final zzrz zza() {
        zzsa.zzb("directboot-files");
        this.zzb = "directboot-files";
        return this;
    }

    public final zzrz zzb(String str) {
        zzsa.zzc(str);
        this.zzc = str;
        return this;
    }

    public final zzrz zzc(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        Account account = zzsa.zza;
        this.zze = str;
        return this;
    }

    public final Uri zzd() {
        String string;
        String str = this.zzb;
        String str2 = this.zzc;
        Account account = zzrv.zza;
        Account account2 = this.zzd;
        zzsq.zza(account2.type.indexOf(58) == -1, "Account type contains ':'.", new Object[0]);
        zzsq.zza(account2.type.indexOf(47) == -1, "Account type contains '/'.", new Object[0]);
        zzsq.zza(account2.name.indexOf(47) == -1, "Account name contains '/'.", new Object[0]);
        if (zzrv.zza.equals(account2)) {
            string = "shared";
        } else {
            String str3 = account2.type;
            String str4 = account2.name;
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb.append(str3);
            sb.append(":");
            sb.append(str4);
            string = sb.toString();
        }
        String str5 = this.zze;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length() + 1 + string.length() + 1 + String.valueOf(str5).length());
        sb2.append("/");
        sb2.append(str);
        sb2.append("/");
        sb2.append(str2);
        sb2.append("/");
        sb2.append(string);
        sb2.append("/");
        sb2.append(str5);
        return new Uri.Builder().scheme("android").authority(this.zza).path(sb2.toString()).encodedFragment(zzsp.zzb(this.zzf.build())).build();
    }
}
