package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import com.google.android.gms.cast.internal.Logger;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzo {
    public String zzb;
    public String zzc;
    public String zzf;
    public int zzg;
    public boolean zzo;
    public int zzp;
    private final zzax zzr;
    private static final Logger zzq = new Logger("ApplicationAnalyticsSession");
    public static long zza = System.currentTimeMillis();
    public String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    public String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    public String zzj = _UrlKt.FRAGMENT_ENCODE_SET;
    public String zzk = _UrlKt.FRAGMENT_ENCODE_SET;
    public String zzl = _UrlKt.FRAGMENT_ENCODE_SET;
    public String zzm = _UrlKt.FRAGMENT_ENCODE_SET;
    public int zzn = 0;
    public long zzd = zza;
    public int zze = 1;

    private zzo(zzax zzaxVar) {
        this.zzr = zzaxVar;
    }

    public static zzo zza(zzax zzaxVar) {
        zzo zzoVar = new zzo(zzaxVar);
        zza++;
        return zzoVar;
    }

    public static zzo zzc(SharedPreferences sharedPreferences, zzax zzaxVar) {
        if (sharedPreferences == null) {
            return null;
        }
        zzo zzoVar = new zzo(zzaxVar);
        zzoVar.zzo = sharedPreferences.getBoolean("is_output_switcher_enabled", false);
        if (!sharedPreferences.contains("application_id")) {
            return null;
        }
        zzoVar.zzb = sharedPreferences.getString("application_id", _UrlKt.FRAGMENT_ENCODE_SET);
        if (!sharedPreferences.contains("receiver_metrics_id")) {
            return null;
        }
        zzoVar.zzc = sharedPreferences.getString("receiver_metrics_id", _UrlKt.FRAGMENT_ENCODE_SET);
        if (!sharedPreferences.contains("analytics_session_id")) {
            return null;
        }
        zzoVar.zzd = sharedPreferences.getLong("analytics_session_id", 0L);
        if (!sharedPreferences.contains("event_sequence_number")) {
            return null;
        }
        zzoVar.zze = sharedPreferences.getInt("event_sequence_number", 0);
        if (!sharedPreferences.contains("receiver_session_id")) {
            return null;
        }
        zzoVar.zzf = sharedPreferences.getString("receiver_session_id", _UrlKt.FRAGMENT_ENCODE_SET);
        zzoVar.zzg = sharedPreferences.getInt("device_capabilities", 0);
        zzoVar.zzh = sharedPreferences.getString("device_model_name", _UrlKt.FRAGMENT_ENCODE_SET);
        zzoVar.zzi = sharedPreferences.getString("manufacturer", _UrlKt.FRAGMENT_ENCODE_SET);
        zzoVar.zzj = sharedPreferences.getString("product_name", _UrlKt.FRAGMENT_ENCODE_SET);
        zzoVar.zzk = sharedPreferences.getString("build_type", _UrlKt.FRAGMENT_ENCODE_SET);
        zzoVar.zzl = sharedPreferences.getString("cast_build_version", _UrlKt.FRAGMENT_ENCODE_SET);
        zzoVar.zzm = sharedPreferences.getString("system_build_number", _UrlKt.FRAGMENT_ENCODE_SET);
        zzoVar.zzn = sharedPreferences.getInt("device_category", 0);
        zzoVar.zzp = sharedPreferences.getInt("analytics_session_start_type", 0);
        return zzoVar;
    }

    public final boolean zzb() {
        return this.zzr.zze();
    }

    public final void zzd(SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return;
        }
        zzq.m282d("Save the ApplicationAnalyticsSession to SharedPreferences %s", sharedPreferences);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("application_id", this.zzb);
        editorEdit.putString("receiver_metrics_id", this.zzc);
        editorEdit.putLong("analytics_session_id", this.zzd);
        editorEdit.putInt("event_sequence_number", this.zze);
        editorEdit.putString("receiver_session_id", this.zzf);
        editorEdit.putInt("device_capabilities", this.zzg);
        editorEdit.putString("device_model_name", this.zzh);
        editorEdit.putString("manufacturer", this.zzi);
        editorEdit.putString("product_name", this.zzj);
        editorEdit.putString("build_type", this.zzk);
        editorEdit.putString("cast_build_version", this.zzl);
        editorEdit.putString("system_build_number", this.zzm);
        editorEdit.putInt("device_category", this.zzn);
        editorEdit.putInt("analytics_session_start_type", this.zzp);
        editorEdit.putBoolean("is_output_switcher_enabled", this.zzo);
        editorEdit.apply();
    }
}
