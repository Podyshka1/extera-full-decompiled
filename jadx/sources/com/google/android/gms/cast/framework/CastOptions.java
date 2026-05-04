package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.cast.zzev;
import com.google.android.gms.internal.cast.zzez;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public class CastOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CastOptions> CREATOR;
    static final zzj zza = new zzj(false);
    static final zzl zzb = new zzl(0);
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
    private final boolean zzm;
    private final boolean zzn;
    private final List zzo;
    private final boolean zzp;
    private final boolean zzq;
    private final zzj zzr;
    private zzl zzs;

    public static final class Builder {
        private String zza;
        private boolean zzc;
        private List zzb = new ArrayList();
        private LaunchOptions zzd = new LaunchOptions();
        private boolean zze = true;
        private zzev zzf = zzev.zzb();
        private boolean zzg = true;
        private double zzh = 0.05000000074505806d;
        private boolean zzi = false;
        private final List zzj = new ArrayList();
        private boolean zzk = true;
        private final zzev zzl = zzev.zzb();
        private final zzev zzm = zzev.zzb();

        public CastOptions build() {
            Object objZza = this.zzf.zza(CastOptions.zzc);
            zzj zzjVar = CastOptions.zza;
            zzez.zzc(zzjVar, "use Optional.orNull() instead of Optional.or(null)");
            zzl zzlVar = CastOptions.zzb;
            zzez.zzc(zzlVar, "use Optional.orNull() instead of Optional.or(null)");
            return new CastOptions(this.zza, this.zzb, this.zzc, this.zzd, this.zze, (CastMediaOptions) objZza, this.zzg, this.zzh, false, false, this.zzi, this.zzj, this.zzk, 0, false, zzjVar, zzlVar);
        }

        public Builder setReceiverApplicationId(String str) {
            this.zza = str;
            return this;
        }
    }

    static {
        CastMediaOptions.Builder builder = new CastMediaOptions.Builder();
        builder.setMediaSessionEnabled(false);
        builder.setNotificationOptions(null);
        zzc = builder.build();
        CREATOR = new zzn();
    }

    CastOptions(String str, List list, boolean z, LaunchOptions launchOptions, boolean z2, CastMediaOptions castMediaOptions, boolean z3, double d, boolean z4, boolean z5, boolean z6, List list2, boolean z7, int i, boolean z8, zzj zzjVar, zzl zzlVar) {
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
        this.zzr = zzjVar;
        this.zzs = zzlVar;
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

    public boolean getStopReceiverApplicationWhenEndingSession() {
        return this.zzf;
    }

    public List getSupportedNamespaces() {
        return DesugarCollections.unmodifiableList(this.zze);
    }

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
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzm);
        SafeParcelWriter.writeBoolean(parcel, 12, this.zzn);
        SafeParcelWriter.writeStringList(parcel, 13, DesugarCollections.unmodifiableList(this.zzo), false);
        SafeParcelWriter.writeBoolean(parcel, 14, this.zzp);
        SafeParcelWriter.writeInt(parcel, 15, 0);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzq);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzr, i, false);
        SafeParcelWriter.writeParcelable(parcel, 18, this.zzs, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final List zza() {
        return DesugarCollections.unmodifiableList(this.zzo);
    }

    public final void zzb(zzl zzlVar) {
        this.zzs = zzlVar;
    }

    public final boolean zze() {
        return this.zzm;
    }

    public final boolean zzf() {
        return this.zzn;
    }

    public final boolean zzg() {
        return this.zzq;
    }

    public final boolean zzh() {
        return this.zzp;
    }
}
