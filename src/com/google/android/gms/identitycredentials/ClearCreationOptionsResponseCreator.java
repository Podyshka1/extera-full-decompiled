package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class ClearCreationOptionsResponseCreator implements Parcelable.Creator<ClearCreationOptionsResponse> {
    public static void writeToParcel(ClearCreationOptionsResponse clearCreationOptionsResponse, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, clearCreationOptionsResponse.getIsDeleted());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public ClearCreationOptionsResponse createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            if (SafeParcelReader.getFieldId(header) != 1) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                z = SafeParcelReader.readBoolean(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ClearCreationOptionsResponse(z);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public ClearCreationOptionsResponse[] newArray(int i) {
        return new ClearCreationOptionsResponse[i];
    }
}
