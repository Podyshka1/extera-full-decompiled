package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes4.dex */
public final class zzds implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        float f = 0.0f;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
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
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    i5 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    i6 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 9:
                    i7 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 10:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 11:
                    i8 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 12:
                    i9 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 13:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new TextTrackStyle(f, i, i2, i3, i4, i5, i6, i7, strCreateString, i8, i9, strCreateString2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new TextTrackStyle[i];
    }
}
