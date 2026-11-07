package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzag implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        ArrayList arrayListCreateTypedList = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        ArrayList arrayListCreateTypedList2 = null;
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        String strCreateString4 = null;
        float f = 0.0f;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzaa.CREATOR);
                    break;
                case 2:
                    f = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 3:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 6:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    iBinder2 = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 8:
                    arrayListCreateTypedList2 = SafeParcelReader.createTypedList(parcel, header, ParcelFileDescriptor.CREATOR);
                    break;
                case 9:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 10:
                    i5 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 11:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 12:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 13:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 14:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 15:
                    i6 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 16:
                    i7 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 17:
                    i8 = SafeParcelReader.readInt(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzaf(arrayListCreateTypedList, f, i, i2, iBinder, i3, iBinder2, arrayListCreateTypedList2, i4, i5, strCreateString, strCreateString2, strCreateString3, strCreateString4, i6, i7, i8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzaf[i];
    }
}
