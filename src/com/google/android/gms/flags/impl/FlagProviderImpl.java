package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
@DynamiteApi
public class FlagProviderImpl extends com.google.android.gms.flags.zzd {
    private boolean zza = false;
    private SharedPreferences zzb;

    @Override // com.google.android.gms.flags.zze
    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        if (!this.zza) {
            return z;
        }
        SharedPreferences sharedPreferences = this.zzb;
        Boolean boolValueOf = Boolean.valueOf(z);
        try {
            boolValueOf = (Boolean) com.google.android.gms.internal.flags.zzd.zza(new zza(sharedPreferences, str, boolValueOf));
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return boolValueOf.booleanValue();
    }

    @Override // com.google.android.gms.flags.zze
    public int getIntFlagValue(String str, int i, int i2) {
        if (!this.zza) {
            return i;
        }
        SharedPreferences sharedPreferences = this.zzb;
        Integer numValueOf = Integer.valueOf(i);
        try {
            numValueOf = (Integer) com.google.android.gms.internal.flags.zzd.zza(new zzb(sharedPreferences, str, numValueOf));
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return numValueOf.intValue();
    }

    @Override // com.google.android.gms.flags.zze
    public long getLongFlagValue(String str, long j, int i) {
        if (!this.zza) {
            return j;
        }
        SharedPreferences sharedPreferences = this.zzb;
        Long lValueOf = Long.valueOf(j);
        try {
            lValueOf = (Long) com.google.android.gms.internal.flags.zzd.zza(new zzc(sharedPreferences, str, lValueOf));
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return lValueOf.longValue();
    }

    @Override // com.google.android.gms.flags.zze
    public String getStringFlagValue(String str, String str2, int i) {
        if (!this.zza) {
            return str2;
        }
        try {
            return (String) com.google.android.gms.internal.flags.zzd.zza(new zzd(this.zzb, str, str2));
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
            return str2;
        }
    }

    @Override // com.google.android.gms.flags.zze
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.zza) {
            return;
        }
        try {
            this.zzb = zzf.zza(context.createPackageContext("com.google.android.gms", 0));
            this.zza = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.w("FlagProviderImpl", strValueOf.length() != 0 ? "Could not retrieve sdk flags, continuing with defaults: ".concat(strValueOf) : new String("Could not retrieve sdk flags, continuing with defaults: "));
        }
    }
}
