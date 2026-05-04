package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class SignalCredentialStateRequestCreator implements Parcelable.Creator {
    static void writeToParcel(SignalCredentialStateRequest signalCredentialStateRequest, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, signalCredentialStateRequest.getType(), false);
        SafeParcelWriter.writeString(parcel, 2, signalCredentialStateRequest.getOrigin(), false);
        SafeParcelWriter.writeBundle(parcel, 3, signalCredentialStateRequest.getRequestData(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public SignalCredentialStateRequest createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        Bundle bundleCreateBundle = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                strCreateString = SafeParcelReader.createString(parcel, header);
            } else if (fieldId == 2) {
                strCreateString2 = SafeParcelReader.createString(parcel, header);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new SignalCredentialStateRequest(strCreateString, strCreateString2, bundleCreateBundle);
    }

    @Override // android.os.Parcelable.Creator
    public SignalCredentialStateRequest[] newArray(int i) {
        return new SignalCredentialStateRequest[i];
    }
}
