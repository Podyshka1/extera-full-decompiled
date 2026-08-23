package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class LaunchOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new zzbp();
    private boolean zza;
    private String zzb;
    private boolean zzc;
    private CredentialsData zzd;

    public static final class Builder {
        private final LaunchOptions zza;

        public Builder() {
            this.zza = new LaunchOptions();
        }

        public LaunchOptions build() {
            return this.zza;
        }

        public Builder setAndroidReceiverCompatible(boolean z) {
            this.zza.zza(z);
            return this;
        }

        public Builder setCredentialsData(CredentialsData credentialsData) {
            this.zza.zzb(credentialsData);
            return this;
        }

        public Builder setLocale(Locale locale) {
            this.zza.setLanguage(CastUtils.zzd(locale));
            return this;
        }

        public Builder setRelaunchIfRunning(boolean z) {
            this.zza.setRelaunchIfRunning(z);
            return this;
        }

        public Builder(LaunchOptions launchOptions) {
            this.zza = new LaunchOptions(launchOptions.getRelaunchIfRunning(), launchOptions.getLanguage(), launchOptions.getAndroidReceiverCompatible(), launchOptions.getCredentialsData());
        }
    }

    public LaunchOptions() {
        this(false, CastUtils.zzd(Locale.getDefault()), false, null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        return this.zza == launchOptions.zza && CastUtils.zza(this.zzb, launchOptions.zzb) && this.zzc == launchOptions.zzc && CastUtils.zza(this.zzd, launchOptions.zzd);
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

    public void setLanguage(String str) {
        this.zzb = str;
    }

    public void setRelaunchIfRunning(boolean z) {
        this.zza = z;
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

    public final void zza(boolean z) {
        this.zzc = z;
    }

    public final /* synthetic */ void zzb(CredentialsData credentialsData) {
        this.zzd = credentialsData;
    }

    public LaunchOptions(boolean z, String str, boolean z2, CredentialsData credentialsData) {
        this.zza = z;
        this.zzb = str;
        this.zzc = z2;
        this.zzd = credentialsData;
    }
}
