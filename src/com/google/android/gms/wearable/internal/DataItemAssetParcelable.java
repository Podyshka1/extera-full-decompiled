package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.wearable.DataItemAsset;

/* JADX INFO: loaded from: classes5.dex */
@KeepName
public class DataItemAssetParcelable extends AbstractSafeParcelable implements DataItemAsset, ReflectedParcelable {
    public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new zzdf();
    private final String zza;
    private final String zzb;

    public DataItemAssetParcelable(DataItemAsset dataItemAsset) {
        this.zza = (String) Preconditions.checkNotNull(dataItemAsset.getId());
        this.zzb = (String) Preconditions.checkNotNull(dataItemAsset.getDataItemKey());
    }

    @Override // com.google.android.gms.wearable.DataItemAsset
    public final String getDataItemKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.DataItemAsset
    public final String getId() {
        return this.zza;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DataItemAssetParcelable[@");
        sb.append(Integer.toHexString(hashCode()));
        if (this.zza == null) {
            sb.append(",noid");
        } else {
            sb.append(",");
            sb.append(this.zza);
        }
        sb.append(", key=");
        sb.append(this.zzb);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public DataItemAssetParcelable(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }
}
