package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.fido.zzgx;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 0;
        byte[] bArrCreateByteArray = null;
        byte[] bArrCreateByteArray2 = null;
        byte[] bArrCreateByteArray3 = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
            } else if (fieldId == 2) {
                bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header);
            } else if (fieldId == 3) {
                bArrCreateByteArray3 = SafeParcelReader.createByteArray(parcel, header);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                i = SafeParcelReader.readInt(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzai(bArrCreateByteArray == null ? null : zzgx.zzl(bArrCreateByteArray, 0, bArrCreateByteArray.length), bArrCreateByteArray2 == null ? null : zzgx.zzl(bArrCreateByteArray2, 0, bArrCreateByteArray2.length), bArrCreateByteArray3 != null ? zzgx.zzl(bArrCreateByteArray3, 0, bArrCreateByteArray3.length) : null, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzai[i];
    }
}
