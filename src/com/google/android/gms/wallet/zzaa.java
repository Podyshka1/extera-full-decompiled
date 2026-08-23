package com.google.android.gms.wallet;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.identity.intents.model.UserAddress;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaa implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        CardInfo cardInfo = null;
        UserAddress userAddress = null;
        PaymentMethodToken paymentMethodToken = null;
        String strCreateString2 = null;
        Bundle bundleCreateBundle = null;
        String strCreateString3 = null;
        Bundle bundleCreateBundle2 = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 2:
                    cardInfo = (CardInfo) SafeParcelReader.createParcelable(parcel, header, CardInfo.CREATOR);
                    break;
                case 3:
                    userAddress = (UserAddress) SafeParcelReader.createParcelable(parcel, header, UserAddress.CREATOR);
                    break;
                case 4:
                    paymentMethodToken = (PaymentMethodToken) SafeParcelReader.createParcelable(parcel, header, PaymentMethodToken.CREATOR);
                    break;
                case 5:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                    break;
                case 7:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 8:
                    bundleCreateBundle2 = SafeParcelReader.createBundle(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new PaymentData(strCreateString, cardInfo, userAddress, paymentMethodToken, strCreateString2, bundleCreateBundle, strCreateString3, bundleCreateBundle2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new PaymentData[i];
    }
}
