package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzaa implements Parcelable.Creator {
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
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        boolean z = false;
        boolean z2 = false;
        ArrayList arrayListCreateStringList = null;
        int[] iArrCreateIntArray = null;
        String strCreateString = null;
        IBinder iBinder = null;
        long j = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 3:
                    iArrCreateIntArray = SafeParcelReader.createIntArray(parcel, header);
                    break;
                case 4:
                    j = SafeParcelReader.readLong(parcel, header);
                    break;
                case 5:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 9:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 10:
                    i5 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 11:
                    i6 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 12:
                    i7 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 13:
                    i8 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 14:
                    i9 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 15:
                    i10 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 16:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 17:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 18:
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 19:
                    i14 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 20:
                    i15 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 21:
                    i16 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 22:
                    i17 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 23:
                    i18 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 24:
                    i19 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 25:
                    i20 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 26:
                    i21 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 27:
                    i22 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 28:
                    i23 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 29:
                    i24 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 30:
                    i25 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 31:
                    i26 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 32:
                    i27 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 33:
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 34:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 35:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new NotificationOptions(arrayListCreateStringList, iArrCreateIntArray, j, strCreateString, i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, iBinder, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new NotificationOptions[i];
    }
}
