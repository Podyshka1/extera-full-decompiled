package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzn implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        ArrayList arrayListCreateStringList = null;
        LaunchOptions launchOptions = null;
        CastMediaOptions castMediaOptions = null;
        ArrayList arrayListCreateStringList2 = null;
        zzj zzjVar = null;
        zzl zzlVar = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i = 0;
        boolean z8 = false;
        double d = 0.0d;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 4:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 5:
                    launchOptions = (LaunchOptions) SafeParcelReader.createParcelable(parcel, header, LaunchOptions.CREATOR);
                    break;
                case 6:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    castMediaOptions = (CastMediaOptions) SafeParcelReader.createParcelable(parcel, header, CastMediaOptions.CREATOR);
                    break;
                case 8:
                    z3 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    d = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 10:
                    z4 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 11:
                    z5 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 12:
                    z6 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 13:
                    arrayListCreateStringList2 = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 14:
                    z7 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 15:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 16:
                    z8 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 17:
                    zzjVar = (zzj) SafeParcelReader.createParcelable(parcel, header, zzj.CREATOR);
                    break;
                case 18:
                    zzlVar = (zzl) SafeParcelReader.createParcelable(parcel, header, zzl.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new CastOptions(strCreateString, arrayListCreateStringList, z, launchOptions, z2, castMediaOptions, z3, d, z4, z5, z6, arrayListCreateStringList2, z7, i, z8, zzjVar, zzlVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new CastOptions[i];
    }
}
