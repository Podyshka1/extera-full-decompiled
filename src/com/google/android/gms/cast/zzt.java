package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.CastUtils;
import java.util.Collection;
import java.util.Locale;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzt {
    private final String zza;
    private final String zzb;
    private final Collection zzc;

    public /* synthetic */ zzt(String str, String str2, Collection collection, boolean z, boolean z2, byte[] bArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = collection;
    }

    public final /* synthetic */ String zza() {
        StringBuilder sb = new StringBuilder(this.zza);
        String str = this.zzb;
        if (str != null) {
            String upperCase = str.toUpperCase(Locale.ROOT);
            if (!upperCase.matches("[A-F0-9]+")) {
                f$$ExternalSyntheticBUOutline1.m212m("Invalid application ID: ".concat(str));
                return null;
            }
            sb.append("/");
            sb.append(upperCase);
        }
        Collection<String> collection = this.zzc;
        boolean z = false;
        if (collection != null) {
            if (collection.isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m212m("Must specify at least one namespace");
                return null;
            }
            boolean z2 = str != null;
            if (str == null) {
                sb.append("/");
            }
            sb.append("/");
            boolean z3 = true;
            for (String str2 : collection) {
                CastUtils.throwIfInvalidNamespace(str2);
                if (!z3) {
                    sb.append(",");
                }
                sb.append(CastUtils.zzc(str2));
                z3 = false;
            }
            z = z2;
        } else if (str != null) {
            z = true;
        }
        if (true != z && collection == null) {
            sb.append("/");
        }
        if (collection == null) {
            sb.append("/");
        }
        sb.append("//ALLOW_IPV6");
        return sb.toString();
    }
}
