package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class ExportCredentialsToDeviceSetupResponseCreator implements Parcelable.Creator {
    static void writeToParcel(ExportCredentialsToDeviceSetupResponse exportCredentialsToDeviceSetupResponse, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, exportCredentialsToDeviceSetupResponse.getResponseBundle(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public ExportCredentialsToDeviceSetupResponse createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        Bundle bundleCreateBundle = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            if (SafeParcelReader.getFieldId(header) != 1) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ExportCredentialsToDeviceSetupResponse(bundleCreateBundle);
    }

    @Override // android.os.Parcelable.Creator
    public ExportCredentialsToDeviceSetupResponse[] newArray(int i) {
        return new ExportCredentialsToDeviceSetupResponse[i];
    }
}
