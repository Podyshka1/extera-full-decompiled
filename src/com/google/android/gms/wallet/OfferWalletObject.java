package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

/* JADX INFO: loaded from: classes4.dex */
public final class OfferWalletObject extends AbstractSafeParcelable {
    public static final Parcelable.Creator<OfferWalletObject> CREATOR = new zzv();
    String zza;
    String zzb;
    CommonWalletObject zzc;
    private final int zzd;

    public int getVersionCode() {
        return this.zzd;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getVersionCode());
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    OfferWalletObject(int i, String str, String str2, CommonWalletObject commonWalletObject) {
        this.zzd = i;
        this.zzb = str2;
        if (i >= 3) {
            this.zzc = commonWalletObject;
            return;
        }
        com.google.android.gms.wallet.wobs.zzb zzbVarZzb = CommonWalletObject.zzb();
        zzbVarZzb.zzr(str);
        this.zzc = zzbVarZzb.zzz();
    }
}
