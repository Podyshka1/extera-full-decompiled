package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhw implements zzhv {
    public static final zzaq zza;
    public static final zzaq zzb;
    public static final zzaq zzc;
    public static final zzaq zzd;
    public static final zzaq zze;
    public static final zzaq zzf;
    public static final zzaq zzg;
    public static final zzaq zzh;

    static {
        zzay zzayVarZzd = new zzay("com.google.android.gms.fido").zze(zzcf.zzl("FIDO")).zzd();
        zza = zzayVarZzd.zzc("Fido2Ctap2Support__disable_transport_comparator", true);
        zzb = zzayVarZzd.zzc("Fido2Ctap2Support__enable_cancelling_requests", true);
        zzc = zzayVarZzd.zzc("Fido2Ctap2Support__enable_flow_separation_refactor", false);
        zzd = zzayVarZzd.zzc("Fido2Ctap2Support__nfc_activity_destroyed_check", true);
        zze = zzayVarZzd.zzc("Fido2Ctap2Support__remove_this_device_for_assertions", false);
        zzf = zzayVarZzd.zzc("Fido2Ctap2Support__skip_usb_permission_dialog", false);
        zzg = zzayVarZzd.zzc("Fido2Ctap2Support__transport_controller_refactor", false);
        zzh = zzayVarZzd.zzc("Fido2Ctap2Support__update_user_cancel_response", false);
    }

    @Override // com.google.android.gms.internal.fido.zzhv
    public final boolean zza() {
        return ((Boolean) zzc.zza()).booleanValue();
    }
}
