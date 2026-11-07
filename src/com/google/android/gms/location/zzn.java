package com.google.android.gms.location;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzn {
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
    public static final Feature zzn;
    public static final Feature zzo;
    public static final Feature[] zzp;

    static {
        Feature feature = new Feature("name_ulr_private", 1L, true);
        zza = feature;
        Feature feature2 = new Feature("name_sleep_segment_request", 1L, true);
        zzb = feature2;
        Feature feature3 = new Feature("get_last_activity_feature_id", 1L, true);
        zzc = feature3;
        Feature feature4 = new Feature("support_context_feature_id", 1L, true);
        zzd = feature4;
        Feature feature5 = new Feature("get_current_location", 2L, true);
        zze = feature5;
        Feature feature6 = new Feature("get_last_location_with_request", 1L, true);
        zzf = feature6;
        Feature feature7 = new Feature("set_mock_mode_with_callback", 1L, true);
        zzg = feature7;
        Feature feature8 = new Feature("set_mock_location_with_callback", 1L, true);
        zzh = feature8;
        Feature feature9 = new Feature("inject_location_with_callback", 1L, true);
        zzi = feature9;
        Feature feature10 = new Feature("location_updates_with_callback", 1L, true);
        zzj = feature10;
        Feature feature11 = new Feature("use_safe_parcelable_in_intents", 1L, false);
        zzk = feature11;
        Feature feature12 = new Feature("flp_debug_updates", 1L, true);
        zzl = feature12;
        Feature feature13 = new Feature("google_location_accuracy_enabled", 1L, true);
        zzm = feature13;
        Feature feature14 = new Feature("geofences_with_callback", 1L, true);
        zzn = feature14;
        Feature feature15 = new Feature("location_enabled", 1L, true);
        zzo = feature15;
        zzp = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, feature10, feature11, feature12, feature13, feature14, feature15};
    }
}
