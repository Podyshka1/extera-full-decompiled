package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.cast.zzhc;
import com.google.android.gms.internal.cast.zzhd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class CastOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CastOptions> CREATOR;
    static final zzk zza = new zzk(false);
    static final zzm zzb = new zzm(0);
    static final CastMediaOptions zzc;
    private String zzd;
    private final List zze;
    private final boolean zzf;
    private LaunchOptions zzg;
    private final boolean zzh;
    private final CastMediaOptions zzi;
    private final boolean zzj;
    private final double zzk;
    private final boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private final List zzo;
    private final boolean zzp;
    private final boolean zzq;
    private final zzk zzr;
    private zzm zzs;
    private final boolean zzt;
    private final boolean zzu;

    public static final class Builder {
        private String zza;
        private boolean zzc;
        private List zzb = new ArrayList();
        private LaunchOptions zzd = new LaunchOptions();
        private boolean zze = true;
        private zzhc zzf = zzhc.zzb();
        private boolean zzg = true;
        private double zzh = 0.05000000074505806d;
        private boolean zzi = false;
        private boolean zzj = false;
        private final List zzk = new ArrayList();
        private boolean zzl = true;
        private boolean zzm = false;

        public CastOptions build() {
            CastMediaOptions castMediaOptions = (CastMediaOptions) this.zzf.zza(CastOptions.zzc);
            zzk zzkVar = CastOptions.zza;
            zzhd.zza(zzkVar, "use Optional.orNull() instead of Optional.or(null)");
            zzm zzmVar = CastOptions.zzb;
            zzhd.zza(zzmVar, "use Optional.orNull() instead of Optional.or(null)");
            return new CastOptions(this.zza, this.zzb, this.zzc, this.zzd, this.zze, castMediaOptions, this.zzg, this.zzh, false, this.zzi, this.zzj, this.zzk, this.zzl, 0, false, zzkVar, zzmVar, false, this.zzm);
        }

        public Builder setCastMediaOptions(CastMediaOptions castMediaOptions) {
            this.zzf = zzhc.zzc(castMediaOptions);
            return this;
        }

        public Builder setEnableReconnectionService(boolean z) {
            this.zzg = z;
            return this;
        }

        public Builder setLaunchOptions(LaunchOptions launchOptions) {
            this.zzd = launchOptions;
            return this;
        }

        public Builder setMediaTransferRestrictedToSelfProviders(boolean z) {
            this.zzm = z;
            return this;
        }

        public Builder setReceiverApplicationId(String str) {
            this.zza = str;
            return this;
        }

        public Builder setRemoteToLocalEnabled(boolean z) {
            this.zzj = z;
            return this;
        }

        public Builder setResumeSavedSession(boolean z) {
            this.zze = z;
            return this;
        }

        public Builder setSessionTransferEnabled(boolean z) {
            this.zzl = z;
            return this;
        }

        public Builder setShowSystemOutputSwitcherOnCastIconClick(boolean z) {
            this.zzi = z;
            return this;
        }

        public Builder setStopReceiverApplicationWhenEndingSession(boolean z) {
            this.zzc = z;
            return this;
        }

        public Builder setSupportedNamespaces(List<String> list) {
            this.zzb = list;
            return this;
        }

        @Deprecated
        public Builder setVolumeDeltaBeforeIceCreamSandwich(double d) {
            if (d <= 0.0d || d > 0.5d) {
                f$$ExternalSyntheticBUOutline1.m178m("volumeDelta must be greater than 0 and less or equal to 0.5");
                return null;
            }
            this.zzh = d;
            return this;
        }
    }

    public static final class Modifier {
        public static final Modifier EMPTY = new Builder().build();
        final String zza;
        final Boolean zzb;
        final Boolean zzc;

        public static final class Builder {
            private String zza;
            private Boolean zzb;
            private Boolean zzc;

            public Modifier build() {
                return new Modifier(this, null);
            }

            public Builder setReceiverApplicationId(String str) {
                this.zza = str;
                return this;
            }

            public Builder setRemoteToLocalEnabled(Boolean bool) {
                this.zzb = bool;
                return this;
            }

            public Builder setShowSystemOutputSwitcherOnCastIconClick(Boolean bool) {
                this.zzc = bool;
                return this;
            }

            public final /* synthetic */ String zza() {
                return this.zza;
            }

            public final /* synthetic */ Boolean zzb() {
                return this.zzb;
            }

            public final /* synthetic */ Boolean zzc() {
                return this.zzc;
            }
        }

        public /* synthetic */ Modifier(Builder builder, byte[] bArr) {
            this.zza = builder.zza();
            this.zzb = builder.zzb();
            this.zzc = builder.zzc();
        }

        public String getReceiverApplicationId() {
            return this.zza;
        }

        public Boolean getRemoteToLocalEnabled() {
            return this.zzb;
        }

        public Boolean getShowSystemOutputSwitcherOnCastIconClick() {
            return this.zzc;
        }
    }

    static {
        CastMediaOptions.Builder builder = new CastMediaOptions.Builder();
        builder.setMediaSessionEnabled(false);
        builder.setNotificationOptions(null);
        zzc = builder.build();
        CREATOR = new zzo();
    }

    public CastOptions(String str, List list, boolean z, LaunchOptions launchOptions, boolean z2, CastMediaOptions castMediaOptions, boolean z3, double d, boolean z4, boolean z5, boolean z6, List list2, boolean z7, int i, boolean z8, zzk zzkVar, zzm zzmVar, boolean z9, boolean z10) {
        this.zzd = true == TextUtils.isEmpty(str) ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        int size = list == null ? 0 : list.size();
        ArrayList arrayList = new ArrayList(size);
        this.zze = arrayList;
        if (size > 0) {
            arrayList.addAll(list);
        }
        this.zzf = z;
        this.zzg = launchOptions == null ? new LaunchOptions() : launchOptions;
        this.zzh = z2;
        this.zzi = castMediaOptions;
        this.zzj = z3;
        this.zzk = d;
        this.zzl = z4;
        this.zzm = z5;
        this.zzn = z6;
        this.zzo = list2;
        this.zzp = z7;
        this.zzq = z8;
        this.zzr = zzkVar;
        this.zzs = zzmVar;
        this.zzt = z9;
        this.zzu = z10;
    }

    public CastMediaOptions getCastMediaOptions() {
        return this.zzi;
    }

    public boolean getEnableReconnectionService() {
        return this.zzj;
    }

    public LaunchOptions getLaunchOptions() {
        return this.zzg;
    }

    public String getReceiverApplicationId() {
        return this.zzd;
    }

    public boolean getResumeSavedSession() {
        return this.zzh;
    }

    public boolean getShowSystemOutputSwitcherOnCastIconClick() {
        return this.zzm;
    }

    public boolean getStopReceiverApplicationWhenEndingSession() {
        return this.zzf;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zze);
    }

    @Deprecated
    public double getVolumeDeltaBeforeIceCreamSandwich() {
        return this.zzk;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getReceiverApplicationId(), false);
        SafeParcelWriter.writeStringList(parcel, 3, getSupportedNamespaces(), false);
        SafeParcelWriter.writeBoolean(parcel, 4, getStopReceiverApplicationWhenEndingSession());
        SafeParcelWriter.writeParcelable(parcel, 5, getLaunchOptions(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, getResumeSavedSession());
        SafeParcelWriter.writeParcelable(parcel, 7, getCastMediaOptions(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 8, getEnableReconnectionService());
        SafeParcelWriter.writeDouble(parcel, 9, getVolumeDeltaBeforeIceCreamSandwich());
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzl);
        SafeParcelWriter.writeBoolean(parcel, 11, getShowSystemOutputSwitcherOnCastIconClick());
        SafeParcelWriter.writeBoolean(parcel, 12, this.zzn);
        SafeParcelWriter.writeStringList(parcel, 13, Collections.unmodifiableList(this.zzo), false);
        SafeParcelWriter.writeBoolean(parcel, 14, this.zzp);
        SafeParcelWriter.writeInt(parcel, 15, 0);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzq);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzr, i, false);
        SafeParcelWriter.writeParcelable(parcel, 18, this.zzs, i, false);
        SafeParcelWriter.writeBoolean(parcel, 19, this.zzt);
        SafeParcelWriter.writeBoolean(parcel, 20, this.zzu);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final void zza(Modifier modifier) {
        String receiverApplicationId = modifier.getReceiverApplicationId();
        if (receiverApplicationId != null) {
            this.zzd = receiverApplicationId;
        }
        Boolean remoteToLocalEnabled = modifier.getRemoteToLocalEnabled();
        if (remoteToLocalEnabled != null) {
            this.zzn = remoteToLocalEnabled.booleanValue();
        }
        Boolean showSystemOutputSwitcherOnCastIconClick = modifier.getShowSystemOutputSwitcherOnCastIconClick();
        if (showSystemOutputSwitcherOnCastIconClick != null) {
            this.zzm = showSystemOutputSwitcherOnCastIconClick.booleanValue();
        }
    }

    public final void zzb(String str) {
        this.zzd = str;
    }

    public final void zzc(boolean z) {
        this.zzn = z;
    }

    public final void zzd(boolean z) {
        this.zzm = z;
    }

    public final void zze(LaunchOptions launchOptions) {
        this.zzg = launchOptions;
    }

    public final boolean zzf() {
        return this.zzn;
    }

    public final List zzg() {
        return Collections.unmodifiableList(this.zzo);
    }

    public final boolean zzh() {
        return this.zzp;
    }

    public final void zzi(zzm zzmVar) {
        this.zzs = zzmVar;
    }

    public final boolean zzj() {
        return this.zzt;
    }

    public final boolean zzk() {
        return this.zzu;
    }
}
