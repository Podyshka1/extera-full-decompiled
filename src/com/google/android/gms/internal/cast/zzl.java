package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import com.google.android.gms.cast.internal.Logger;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzl {
    public String zzb;
    public String zzc;
    public long zzd = zza;
    public int zze = 1;
    public String zzf;
    public int zzg;
    public String zzh;
    public boolean zzi;
    public int zzj;
    private final zzaf zzl;
    private static final Logger zzk = new Logger("ApplicationAnalyticsSession");
    public static long zza = System.currentTimeMillis();

    private zzl(zzaf zzafVar) {
        this.zzl = zzafVar;
    }

    public static zzl zza(zzaf zzafVar) {
        zzl zzlVar = new zzl(zzafVar);
        zza++;
        return zzlVar;
    }

    public static zzl zzb(SharedPreferences sharedPreferences, zzaf zzafVar) {
        if (sharedPreferences == null) {
            return null;
        }
        zzl zzlVar = new zzl(zzafVar);
        zzlVar.zzi = sharedPreferences.getBoolean("is_output_switcher_enabled", false);
        if (!sharedPreferences.contains("application_id")) {
            return null;
        }
        zzlVar.zzb = sharedPreferences.getString("application_id", _UrlKt.FRAGMENT_ENCODE_SET);
        if (!sharedPreferences.contains("receiver_metrics_id")) {
            return null;
        }
        zzlVar.zzc = sharedPreferences.getString("receiver_metrics_id", _UrlKt.FRAGMENT_ENCODE_SET);
        if (!sharedPreferences.contains("analytics_session_id")) {
            return null;
        }
        zzlVar.zzd = sharedPreferences.getLong("analytics_session_id", 0L);
        if (!sharedPreferences.contains("event_sequence_number")) {
            return null;
        }
        zzlVar.zze = sharedPreferences.getInt("event_sequence_number", 0);
        if (!sharedPreferences.contains("receiver_session_id")) {
            return null;
        }
        zzlVar.zzf = sharedPreferences.getString("receiver_session_id", _UrlKt.FRAGMENT_ENCODE_SET);
        zzlVar.zzg = sharedPreferences.getInt("device_capabilities", 0);
        zzlVar.zzh = sharedPreferences.getString("device_model_name", _UrlKt.FRAGMENT_ENCODE_SET);
        zzlVar.zzj = sharedPreferences.getInt("analytics_session_start_type", 0);
        return zzlVar;
    }

    public final void zzc(SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return;
        }
        zzk.m336d("Save the ApplicationAnalyticsSession to SharedPreferences %s", sharedPreferences);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("application_id", this.zzb);
        editorEdit.putString("receiver_metrics_id", this.zzc);
        editorEdit.putLong("analytics_session_id", this.zzd);
        editorEdit.putInt("event_sequence_number", this.zze);
        editorEdit.putString("receiver_session_id", this.zzf);
        editorEdit.putInt("device_capabilities", this.zzg);
        editorEdit.putString("device_model_name", this.zzh);
        editorEdit.putInt("analytics_session_start_type", this.zzj);
        editorEdit.putBoolean("is_output_switcher_enabled", this.zzi);
        editorEdit.apply();
    }

    public final boolean zzd() {
        return this.zzl.zze();
    }
}
