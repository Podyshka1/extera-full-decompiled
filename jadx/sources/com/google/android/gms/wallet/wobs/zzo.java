package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzo implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        TimeInterval timeInterval = null;
        UriData uriData = null;
        UriData uriData2 = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 2) {
                strCreateString = SafeParcelReader.createString(parcel, header);
            } else if (fieldId == 3) {
                strCreateString2 = SafeParcelReader.createString(parcel, header);
            } else if (fieldId == 4) {
                timeInterval = (TimeInterval) SafeParcelReader.createParcelable(parcel, header, TimeInterval.CREATOR);
            } else if (fieldId == 5) {
                uriData = (UriData) SafeParcelReader.createParcelable(parcel, header, UriData.CREATOR);
            } else if (fieldId != 6) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                uriData2 = (UriData) SafeParcelReader.createParcelable(parcel, header, UriData.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new WalletObjectMessage(strCreateString, strCreateString2, timeInterval, uriData, uriData2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new WalletObjectMessage[i];
    }
}
