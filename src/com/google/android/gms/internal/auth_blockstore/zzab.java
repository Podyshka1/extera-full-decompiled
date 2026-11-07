package com.google.android.gms.internal.auth_blockstore;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzab {
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
    public static final Feature[] zzl;

    static {
        Feature feature = new Feature("auth_blockstore", 3L);
        zza = feature;
        Feature feature2 = new Feature("blockstore_data_transfer", 1L);
        zzb = feature2;
        Feature feature3 = new Feature("blockstore_notify_app_restore", 1L);
        zzc = feature3;
        Feature feature4 = new Feature("blockstore_store_bytes_with_options", 2L);
        zzd = feature4;
        Feature feature5 = new Feature("blockstore_is_end_to_end_encryption_available", 1L);
        zze = feature5;
        Feature feature6 = new Feature("blockstore_enable_cloud_backup", 1L);
        zzf = feature6;
        Feature feature7 = new Feature("blockstore_delete_bytes", 2L);
        zzg = feature7;
        Feature feature8 = new Feature("blockstore_retrieve_bytes_with_options", 3L);
        zzh = feature8;
        Feature feature9 = new Feature("auth_clear_restore_credential", 1L);
        zzi = feature9;
        Feature feature10 = new Feature("auth_create_restore_credential", 1L);
        zzj = feature10;
        Feature feature11 = new Feature("auth_get_restore_credential", 1L);
        zzk = feature11;
        zzl = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, feature10, feature11};
    }
}
