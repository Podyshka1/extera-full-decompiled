package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class LaunchOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new zzbw();
    private boolean zza;
    private String zzb;
    private boolean zzc;
    private CredentialsData zzd;

    public LaunchOptions() {
        this(false, CastUtils.zzb(Locale.getDefault()), false, null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        return this.zza == launchOptions.zza && CastUtils.zze(this.zzb, launchOptions.zzb) && this.zzc == launchOptions.zzc && CastUtils.zze(this.zzd, launchOptions.zzd);
    }

    public boolean getAndroidReceiverCompatible() {
        return this.zzc;
    }

    public CredentialsData getCredentialsData() {
        return this.zzd;
    }

    public String getLanguage() {
        return this.zzb;
    }

    public boolean getRelaunchIfRunning() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.zza), this.zzb, Boolean.valueOf(this.zzc), this.zzd);
    }

    public String toString() {
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s, androidReceiverCompatible: %b)", Boolean.valueOf(this.zza), this.zzb, Boolean.valueOf(this.zzc));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, getRelaunchIfRunning());
        SafeParcelWriter.writeString(parcel, 3, getLanguage(), false);
        SafeParcelWriter.writeBoolean(parcel, 4, getAndroidReceiverCompatible());
        SafeParcelWriter.writeParcelable(parcel, 5, getCredentialsData(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    LaunchOptions(boolean z, String str, boolean z2, CredentialsData credentialsData) {
        this.zza = z;
        this.zzb = str;
        this.zzc = z2;
        this.zzd = credentialsData;
    }
}
