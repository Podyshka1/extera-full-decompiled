package com.google.android.gms.cast;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaLoadOptions {
    private final boolean zza;
    private final long zzb;
    private final double zzc;
    private final long[] zzd;
    private final JSONObject zze;
    private final String zzf;
    private final String zzg;

    public static class Builder {
        private boolean zza = true;
        private long zzb = -1;
        private double zzc = 1.0d;
        private long[] zzd;
        private JSONObject zze;
        private String zzf;
        private String zzg;

        public MediaLoadOptions build() {
            return new MediaLoadOptions(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, null);
        }

        public Builder setAutoplay(boolean z) {
            this.zza = z;
            return this;
        }
    }

    /* synthetic */ MediaLoadOptions(boolean z, long j, double d, long[] jArr, JSONObject jSONObject, String str, String str2, zzca zzcaVar) {
        this.zza = z;
        this.zzb = j;
        this.zzc = d;
        this.zzd = jArr;
        this.zze = jSONObject;
        this.zzf = str;
        this.zzg = str2;
    }

    public long[] getActiveTrackIds() {
        return this.zzd;
    }

    public boolean getAutoplay() {
        return this.zza;
    }

    public String getCredentials() {
        return this.zzf;
    }

    public String getCredentialsType() {
        return this.zzg;
    }

    public JSONObject getCustomData() {
        return this.zze;
    }

    public long getPlayPosition() {
        return this.zzb;
    }

    public double getPlaybackRate() {
        return this.zzc;
    }
}
