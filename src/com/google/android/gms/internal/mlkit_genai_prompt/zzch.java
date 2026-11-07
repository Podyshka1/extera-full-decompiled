package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class zzch implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayListCreateTypedList = null;
        ArrayList<String> arrayListCreateStringList = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        String strCreateString = null;
        Bundle bundleCreateBundle = null;
        zzcw zzcwVar = null;
        zzcb zzcbVar = null;
        zzcp zzcpVar = null;
        zzdf zzdfVar = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        boolean z2 = false;
        float f = 1.0f;
        float f2 = 0.0f;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzbz.CREATOR);
                    break;
                case 2:
                    f2 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 3:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 5:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 7:
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 8:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 10:
                    iBinder2 = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 11:
                    i5 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 12:
                    i6 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 13:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 14:
                    bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                    break;
                case 15:
                    i7 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 16:
                    zzcwVar = (zzcw) SafeParcelReader.createParcelable(parcel, header, zzcw.CREATOR);
                    break;
                case 17:
                    i8 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 18:
                    zzcbVar = (zzcb) SafeParcelReader.createParcelable(parcel, header, zzcb.CREATOR);
                    break;
                case 19:
                    i9 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 20:
                    f = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 21:
                    zzcpVar = (zzcp) SafeParcelReader.createParcelable(parcel, header, zzcp.CREATOR);
                    break;
                case 22:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 23:
                    zzdfVar = (zzdf) SafeParcelReader.createParcelable(parcel, header, zzdf.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzcg(arrayListCreateTypedList, f2, i, arrayListCreateStringList, i2, i3, iBinder, z, i4, iBinder2, i5, i6, strCreateString, bundleCreateBundle, i7, zzcwVar, i8, zzcbVar, i9, f, zzcpVar, z2, zzdfVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcg[i];
    }
}
