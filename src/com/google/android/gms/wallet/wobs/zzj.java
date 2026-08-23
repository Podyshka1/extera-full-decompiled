package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        LoyaltyPointsBalance loyaltyPointsBalance = null;
        TimeInterval timeInterval = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 2) {
                strCreateString = SafeParcelReader.createString(parcel, header);
            } else if (fieldId == 3) {
                loyaltyPointsBalance = (LoyaltyPointsBalance) SafeParcelReader.createParcelable(parcel, header, LoyaltyPointsBalance.CREATOR);
            } else if (fieldId != 5) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                timeInterval = (TimeInterval) SafeParcelReader.createParcelable(parcel, header, TimeInterval.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LoyaltyPoints(strCreateString, loyaltyPointsBalance, timeInterval);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new LoyaltyPoints[i];
    }
}
