package com.google.android.gms.internal.identity_credentials;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zze {
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
    public static final Feature[] zzo;

    static {
        Feature feature = new Feature("GET_CREDENTIAL", 1L);
        zza = feature;
        Feature feature2 = new Feature("CREDENTIAL_REGISTRY", 1L);
        zzb = feature2;
        Feature feature3 = new Feature("CLEAR_REGISTRY", 2L);
        zzc = feature3;
        Feature feature4 = new Feature("CLEAR_CREATION_OPTIONS", 1L);
        zzd = feature4;
        Feature feature5 = new Feature("CLEAR_CREDENTIAL_STATE", 1L);
        zze = feature5;
        Feature feature6 = new Feature("CREATE_CREDENTIAL", 3L);
        zzf = feature6;
        Feature feature7 = new Feature("REGISTER_CREATION_OPTIONS", 1L);
        zzg = feature7;
        Feature feature8 = new Feature("REGISTER_EXPORT", 1L);
        zzh = feature8;
        Feature feature9 = new Feature("IMPORT_CREDENTIALS", 1L);
        zzi = feature9;
        Feature feature10 = new Feature("SIGNAL_CREDENTIAL_STATE", 1L);
        zzj = feature10;
        Feature feature11 = new Feature("CLEAR_EXPORT", 1L);
        zzk = feature11;
        Feature feature12 = new Feature("IMPORT_CREDENTIALS_FOR_DEVICE_SETUP", 3L);
        zzl = feature12;
        Feature feature13 = new Feature("EXPORT_CREDENTIALS_TO_DEVICE_SETUP", 3L);
        zzm = feature13;
        Feature feature14 = new Feature("GET_CREDENTIAL_TRANSFER_CAPABILITIES", 3L);
        zzn = feature14;
        zzo = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, feature9, feature10, feature11, feature12, feature13, feature14};
    }
}
