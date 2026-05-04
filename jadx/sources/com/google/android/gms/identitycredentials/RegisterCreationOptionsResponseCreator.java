package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class RegisterCreationOptionsResponseCreator implements Parcelable.Creator {
    static void writeToParcel(RegisterCreationOptionsResponse registerCreationOptionsResponse, Parcel parcel, int i) {
        SafeParcelWriter.finishObjectHeader(parcel, SafeParcelWriter.beginObjectHeader(parcel));
    }

    @Override // android.os.Parcelable.Creator
    public RegisterCreationOptionsResponse createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            SafeParcelReader.getFieldId(header);
            SafeParcelReader.skipUnknownField(parcel, header);
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new RegisterCreationOptionsResponse();
    }

    @Override // android.os.Parcelable.Creator
    public RegisterCreationOptionsResponse[] newArray(int i) {
        return new RegisterCreationOptionsResponse[i];
    }
}
