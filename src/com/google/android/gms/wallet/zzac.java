package com.google.android.gms.wallet;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class zzac implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        CardRequirements cardRequirements = null;
        ShippingAddressRequirements shippingAddressRequirements = null;
        ArrayList<Integer> arrayListCreateIntegerList = null;
        PaymentMethodTokenizationParameters paymentMethodTokenizationParameters = null;
        TransactionInfo transactionInfo = null;
        String strCreateString = null;
        byte[] bArrCreateByteArray = null;
        Bundle bundleCreateBundle = null;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 2:
                    z3 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 3:
                    cardRequirements = (CardRequirements) SafeParcelReader.createParcelable(parcel, header, CardRequirements.CREATOR);
                    break;
                case 4:
                    z4 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 5:
                    shippingAddressRequirements = (ShippingAddressRequirements) SafeParcelReader.createParcelable(parcel, header, ShippingAddressRequirements.CREATOR);
                    break;
                case 6:
                    arrayListCreateIntegerList = SafeParcelReader.createIntegerList(parcel, header);
                    break;
                case 7:
                    paymentMethodTokenizationParameters = (PaymentMethodTokenizationParameters) SafeParcelReader.createParcelable(parcel, header, PaymentMethodTokenizationParameters.CREATOR);
                    break;
                case 8:
                    transactionInfo = (TransactionInfo) SafeParcelReader.createParcelable(parcel, header, TransactionInfo.CREATOR);
                    break;
                case 9:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 10:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 11:
                    bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                    break;
                case 12:
                    bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new PaymentDataRequest(z2, z3, cardRequirements, z4, shippingAddressRequirements, arrayListCreateIntegerList, paymentMethodTokenizationParameters, transactionInfo, z, strCreateString, bArrCreateByteArray, bundleCreateBundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new PaymentDataRequest[i];
    }
}
