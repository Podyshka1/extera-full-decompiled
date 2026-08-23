package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class ApplicationMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new zzd();
    String zza;
    String zzb;
    final List zzc;
    String zzd;
    Uri zze;
    String zzf;
    private String zzg;
    private Boolean zzh;
    private Boolean zzi;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        return CastUtils.zze(this.zza, applicationMetadata.zza) && CastUtils.zze(this.zzb, applicationMetadata.zzb) && CastUtils.zze(this.zzc, applicationMetadata.zzc) && CastUtils.zze(this.zzd, applicationMetadata.zzd) && CastUtils.zze(this.zze, applicationMetadata.zze) && CastUtils.zze(this.zzf, applicationMetadata.zzf) && CastUtils.zze(this.zzg, applicationMetadata.zzg);
    }

    public String getApplicationId() {
        return this.zza;
    }

    public String getIconUrl() {
        return this.zzf;
    }

    public List getImages() {
        return null;
    }

    public String getName() {
        return this.zzb;
    }

    public String getSenderAppIdentifier() {
        return this.zzd;
    }

    public List getSupportedNamespaces() {
        return DesugarCollections.unmodifiableList(this.zzc);
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf);
    }

    public String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        List list = this.zzc;
        return "applicationId: " + str + ", name: " + str2 + ", namespaces.count: " + (list == null ? 0 : list.size()) + ", senderAppIdentifier: " + this.zzd + ", senderAppLaunchUrl: " + String.valueOf(this.zze) + ", iconUrl: " + this.zzf + ", type: " + this.zzg;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getApplicationId(), false);
        SafeParcelWriter.writeString(parcel, 3, getName(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getImages(), false);
        SafeParcelWriter.writeStringList(parcel, 5, getSupportedNamespaces(), false);
        SafeParcelWriter.writeString(parcel, 6, getSenderAppIdentifier(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zze, i, false);
        SafeParcelWriter.writeString(parcel, 8, getIconUrl(), false);
        SafeParcelWriter.writeString(parcel, 9, this.zzg, false);
        SafeParcelWriter.writeBooleanObject(parcel, 10, this.zzh, false);
        SafeParcelWriter.writeBooleanObject(parcel, 11, this.zzi, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    ApplicationMetadata(String str, String str2, List list, List list2, String str3, Uri uri, String str4, String str5, Boolean bool, Boolean bool2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = list2;
        this.zzd = str3;
        this.zze = uri;
        this.zzf = str4;
        this.zzg = str5;
        this.zzh = bool;
        this.zzi = bool2;
    }
}
