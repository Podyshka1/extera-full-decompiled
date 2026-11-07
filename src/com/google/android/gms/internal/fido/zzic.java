package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
public final class zzic implements zzib {
    public static final zzaq zza;
    public static final zzaq zzb;
    public static final zzaq zzc;
    public static final zzaq zzd;
    public static final zzaq zze;
    public static final zzaq zzf;
    public static final zzaq zzg;
    public static final zzaq zzh;
    public static final zzaq zzi;
    public static final zzaq zzj;
    public static final zzaq zzk;
    public static final zzaq zzl;
    public static final zzaq zzm;
    public static final zzaq zzn;
    public static final zzaq zzo;
    public static final zzaq zzp;
    public static final zzaq zzq;
    public static final zzaq zzr;
    public static final zzaq zzs;

    static {
        zzay zzayVarZzd = new zzay("com.google.android.gms.fido").zze(zzcf.zzl("FIDO")).zzd();
        zza = zzayVarZzd.zzc("Passkeys__check_all_keys", false);
        zzb = zzayVarZzd.zzc("Passkeys__check_sync_status", true);
        zzc = zzayVarZzd.zzc("Passkeys__client_data_hash_override_for_security_keys", false);
        zzd = zzayVarZzd.zzc("Passkeys__direct_assetlinks", false);
        zze = zzayVarZzd.zza("Passkeys__direct_assetlinks_cache_seconds", 604800L);
        zzf = zzayVarZzd.zzb("Passkeys__direct_assetlinks_rpids", "*");
        zzg = zzayVarZzd.zzc("Passkeys__dispatch_prf_via_credman", true);
        zzh = zzayVarZzd.zzb("Passkeys__help_center_url", "https://support.google.com/accounts/answer/6208650");
        zzi = zzayVarZzd.zzc("Passkeys__hide_consent_page_in_registration_enabled", false);
        zzj = zzayVarZzd.zzc("Passkeys__ignore_stop_during_hybrid_request", false);
        zzk = zzayVarZzd.zzc("Passkeys__json_for_parcelables", false);
        zzl = zzayVarZzd.zzc("Passkeys__passkey_entries_use_gpm_icon", false);
        zzm = zzayVarZzd.zzc("Passkeys__reencrypt_passkey", false);
        zzn = zzayVarZzd.zzc("Passkeys__return_cryptauth_status", false);
        zzo = zzayVarZzd.zzc("Passkeys__set_key_version", true);
        zzp = zzayVarZzd.zza("Passkeys__should_show_welcome_fragment", -1L);
        zzq = zzayVarZzd.zzc("Passkeys__skip_consent_after_retrieval", false);
        zzr = zzayVarZzd.zzc("Passkeys__skip_consent_screen", false);
        zzs = zzayVarZzd.zzc("Passkeys__use_result_receiver", false);
    }

    @Override // com.google.android.gms.internal.fido.zzib
    public final boolean zza() {
        return ((Boolean) zzk.zza()).booleanValue();
    }
}
