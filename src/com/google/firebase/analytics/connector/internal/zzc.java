package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.chaquo.python.internal.Common;
import com.google.android.gms.measurement.internal.zzjo;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzc {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final ImmutableSet zzb = ImmutableSet.m497of((Object) "_in", (Object) "_xa", (Object) "_xu", (Object) "_aq", (Object) "_aa", (Object) "_ai", (Object[]) new String[]{"_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"});
    private static final ImmutableList zzc = ImmutableList.m487of((Object) "_e", (Object) "_f", (Object) "_iap", (Object) "_s", (Object) "_au", (Object) "_ui", (Object) "_cd");
    private static final ImmutableList zzd = ImmutableList.m485of((Object) "auto", (Object) Common.ASSET_APP, (Object) "am");
    private static final ImmutableList zze = ImmutableList.m484of((Object) "_r", (Object) "_dbg");
    private static final ImmutableList zzf = new ImmutableList.Builder().add((Object[]) zzjo.zza).add((Object[]) zzjo.zzb).build();
    private static final ImmutableList zzg = ImmutableList.m484of((Object) "^_ltv_[A-Z]{3}$", (Object) "^_cc[1-5]{1}$");

    public static boolean zza(String str) {
        return !zzd.contains(str);
    }

    public static boolean zzb(String str, Bundle bundle) {
        if (zzc.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        ImmutableList immutableList = zze;
        int size = immutableList.size();
        int i = 0;
        while (i < size) {
            boolean zContainsKey = bundle.containsKey((String) immutableList.get(i));
            i++;
            if (zContainsKey) {
                return false;
            }
        }
        return true;
    }

    public static boolean zzc(String str) {
        return !zzb.contains(str);
    }

    public static boolean zzd(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (zzf.contains(str2)) {
            return false;
        }
        ImmutableList immutableList = zzg;
        int size = immutableList.size();
        int i = 0;
        while (i < size) {
            boolean zMatches = str2.matches((String) immutableList.get(i));
            i++;
            if (zMatches) {
                return false;
            }
        }
        return true;
    }

    public static boolean zze(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!zza(str) || bundle == null) {
            return false;
        }
        ImmutableList immutableList = zze;
        int size = immutableList.size();
        int i = 0;
        while (i < size) {
            boolean zContainsKey = bundle.containsKey((String) immutableList.get(i));
            i++;
            if (zContainsKey) {
                return false;
            }
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 101200) {
            if (iHashCode != 101230) {
                if (iHashCode == 3142703 && str.equals("fiam")) {
                    bundle.putString("_cis", "fiam_integration");
                    return true;
                }
            } else if (str.equals("fdl")) {
                bundle.putString("_cis", "fdl_integration");
                return true;
            }
        } else if (str.equals("fcm")) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        }
        return false;
    }
}
