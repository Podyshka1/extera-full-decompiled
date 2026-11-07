package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbu implements Parcelable.Creator {
    public static final zzbt zza(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        byte[] bArrCreateByteArray = null;
        int[] iArrCreateIntArray = null;
        byte[] bArrCreateByteArray2 = null;
        byte[] bArrCreateByteArray3 = null;
        long[] jArrCreateLongArray = null;
        byte[] bArrCreateByteArray4 = null;
        byte[] bArrCreateByteArray5 = null;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
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
        boolean z = false;
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
        int i26 = -1;
        int i27 = -1;
        int i28 = -1;
        String strCreateString = "unknown";
        float f = 0.0f;
        double d = 0.0d;
        double d2 = 0.0d;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 2:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 3:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    j = SafeParcelReader.readLong(parcel, header);
                    break;
                case 6:
                    i5 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    i6 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    i7 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 9:
                    j2 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 10:
                    j3 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 11:
                    j4 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 12:
                    j5 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 13:
                    j6 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 14:
                    j7 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 15:
                    i8 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 16:
                    i9 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 17:
                    i10 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 18:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 19:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 20:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 21:
                    j8 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 22:
                    d = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 23:
                    d2 = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 24:
                    i13 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 25:
                    f = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 26:
                    bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                    break;
                case 27:
                    i14 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 28:
                    i15 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 29:
                    j9 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 30:
                    j10 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 31:
                    i26 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 32:
                    i16 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 33:
                    i17 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 34:
                    i18 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 35:
                    i19 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 36:
                    i20 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 37:
                    i27 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 38:
                    i21 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 39:
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 40:
                    j12 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 41:
                    iArrCreateIntArray = SafeParcelReader.createIntArray(parcel, header);
                    break;
                case 42:
                    i22 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 43:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 44:
                    bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header);
                    break;
                case 45:
                    i28 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 46:
                    j13 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 47:
                    bArrCreateByteArray3 = SafeParcelReader.createByteArray(parcel, header);
                    break;
                case 48:
                    i23 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 49:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 50:
                    jArrCreateLongArray = SafeParcelReader.createLongArray(parcel, header);
                    break;
                case 51:
                    j14 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 52:
                    j15 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 53:
                    i24 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 54:
                    i25 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 55:
                    j16 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 56:
                    j17 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 57:
                    bArrCreateByteArray4 = SafeParcelReader.createByteArray(parcel, header);
                    break;
                case 58:
                    bArrCreateByteArray5 = SafeParcelReader.createByteArray(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzbt(i, i2, i3, i4, j, i5, i6, i7, j2, j3, j4, j5, j6, j7, i8, i9, i10, i11, z, i12, j8, d, d2, i13, f, bArrCreateByteArray, i14, i15, j9, j10, i26, i16, i17, i18, i19, i20, i27, i21, j11, j12, iArrCreateIntArray, i22, strCreateString, bArrCreateByteArray2, i28, j13, bArrCreateByteArray3, i23, jArrCreateLongArray, j14, j15, i24, i25, j16, j17, bArrCreateByteArray4, bArrCreateByteArray5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zza(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbt[i];
    }
}
