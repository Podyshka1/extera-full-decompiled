package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzui implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayListCreateTypedList = null;
        float[] fArrCreateFloatArray = null;
        Bitmap bitmap = null;
        ArrayList arrayListCreateFloatList = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzuf.CREATOR);
            } else if (fieldId == 2) {
                fArrCreateFloatArray = SafeParcelReader.createFloatArray(parcel, header);
            } else if (fieldId == 3) {
                bitmap = (Bitmap) SafeParcelReader.createParcelable(parcel, header, Bitmap.CREATOR);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                arrayListCreateFloatList = SafeParcelReader.createFloatList(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzuh(arrayListCreateTypedList, fArrCreateFloatArray, bitmap, arrayListCreateFloatList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzuh[i];
    }
}
