package com.google.android.gms.cast;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzax {
    public static final Feature zza;
    public static final Feature zzb;
    public static final Feature zzc;
    public static final Feature zzd;
    public static final Feature zze;
    public static final Feature zzf;
    public static final Feature zzg;
    public static final Feature zzh;
    public static final Feature zzi;
    public static final Feature zzj;
    public static final Feature zzk;
    public static final Feature zzl;
    public static final Feature zzm;
    public static final Feature[] zzn;

    static {
        Feature feature = new Feature("client_side_logging", 1L);
        zza = feature;
        Feature feature2 = new Feature("cxless_client_minimal", 1L);
        zzb = feature2;
        Feature feature3 = new Feature("cxless_caf_control", 1L);
        zzc = feature3;
        Feature feature4 = new Feature("module_flag_control", 1L);
        zzd = feature4;
        Feature feature5 = new Feature("discovery_hint_supply", 1L);
        zze = feature5;
        Feature feature6 = new Feature("relay_casting_set_active_account", 1L);
        zzf = feature6;
        Feature feature7 = new Feature("analytics_proto_enum_translation", 1L);
        zzg = feature7;
        Feature feature8 = new Feature("integer_to_integer_map", 1L);
        zzh = feature8;
        Feature feature9 = new Feature("relay_casting_set_remote_casting_mode", 1L);
        zzi = feature9;
        Feature feature10 = new Feature("get_relay_access_token", 1L);
        zzj = feature10;
        Feature feature11 = new Feature("get_cast_settings", 1L);
        zzk = feature11;
        Feature feature12 = new Feature("set_bundle_setting", 1L);
        zzl = feature12;
        Feature feature13 = new Feature("get_client_updated_info", 1L);
        zzm = feature13;
        zzn = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, feature10, feature11, feature12, feature13};
    }
}
