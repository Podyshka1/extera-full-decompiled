package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

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
    private final int zzj;

    private ApplicationMetadata() {
        this.zzc = new ArrayList();
        this.zzj = 1;
    }

    public boolean areNamespacesSupported(List<String> list) {
        List list2 = this.zzc;
        return list2 != null && list2.containsAll(list);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        return CastUtils.zza(this.zza, applicationMetadata.zza) && CastUtils.zza(this.zzb, applicationMetadata.zzb) && CastUtils.zza(this.zzc, applicationMetadata.zzc) && CastUtils.zza(this.zzd, applicationMetadata.zzd) && CastUtils.zza(this.zze, applicationMetadata.zze) && CastUtils.zza(this.zzf, applicationMetadata.zzf) && CastUtils.zza(this.zzg, applicationMetadata.zzg) && this.zzj == applicationMetadata.zzj;
    }

    public String getApplicationId() {
        return this.zza;
    }

    public String getIconUrl() {
        return this.zzf;
    }

    @Deprecated
    public List<WebImage> getImages() {
        return null;
    }

    public String getName() {
        return this.zzb;
    }

    public String getSenderAppIdentifier() {
        return this.zzd;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzc);
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, Integer.valueOf(this.zzj));
    }

    public boolean isNamespaceSupported(String str) {
        List list = this.zzc;
        return list != null && list.contains(str);
    }

    public void setIconUrl(String str) {
        this.zzf = str;
    }

    public String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        List list = this.zzc;
        int size = list == null ? 0 : list.size();
        String str3 = this.zzd;
        String strValueOf = String.valueOf(this.zze);
        String str4 = this.zzf;
        String str5 = this.zzg;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(str2).length() + 20 + String.valueOf(size).length() + 23 + String.valueOf(str3).length() + 22 + strValueOf.length() + 11 + String.valueOf(str4).length() + 8 + String.valueOf(str5).length());
        sb.append("applicationId: ");
        sb.append(str);
        sb.append(", name: ");
        sb.append(str2);
        sb.append(", namespaces.count: ");
        sb.append(size);
        sb.append(", senderAppIdentifier: ");
        sb.append(str3);
        sb.append(", senderAppLaunchUrl: ");
        sb.append(strValueOf);
        sb.append(", iconUrl: ");
        sb.append(str4);
        sb.append(", type: ");
        sb.append(str5);
        return sb.toString();
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
        SafeParcelWriter.writeInt(parcel, 12, this.zzj);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public ApplicationMetadata(String str, String str2, List list, List list2, String str3, Uri uri, String str4, String str5, Boolean bool, Boolean bool2, int i) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = list2;
        this.zzd = str3;
        this.zze = uri;
        this.zzf = str4;
        this.zzg = str5;
        this.zzh = bool;
        this.zzi = bool2;
        this.zzj = i;
    }
}
