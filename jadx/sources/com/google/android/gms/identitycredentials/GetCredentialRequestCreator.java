package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class GetCredentialRequestCreator implements Parcelable.Creator {
    static void writeToParcel(GetCredentialRequest getCredentialRequest, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getCredentialRequest.getCredentialOptions(), false);
        SafeParcelWriter.writeBundle(parcel, 2, getCredentialRequest.getData(), false);
        SafeParcelWriter.writeString(parcel, 3, getCredentialRequest.getOrigin(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getCredentialRequest.getResultReceiver(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public GetCredentialRequest createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayListCreateTypedList = null;
        Bundle bundleCreateBundle = null;
        String strCreateString = null;
        ResultReceiver resultReceiver = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, CredentialOption.CREATOR);
            } else if (fieldId == 2) {
                bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
            } else if (fieldId == 3) {
                strCreateString = SafeParcelReader.createString(parcel, header);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                resultReceiver = (ResultReceiver) SafeParcelReader.createParcelable(parcel, header, ResultReceiver.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new GetCredentialRequest(arrayListCreateTypedList, bundleCreateBundle, strCreateString, resultReceiver);
    }

    @Override // android.os.Parcelable.Creator
    public GetCredentialRequest[] newArray(int i) {
        return new GetCredentialRequest[i];
    }
}
