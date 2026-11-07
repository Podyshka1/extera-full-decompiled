package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcq implements Parcelable.Creator {
    public static void zza(zzcp zzcpVar, Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, zzcpVar.zza());
        SafeParcelWriter.writeString(parcel, 2, zzcpVar.zzb(), false);
        SafeParcelWriter.writeString(parcel, 3, zzcpVar.zzc(), false);
        SafeParcelWriter.writeBooleanObject(parcel, 4, zzcpVar.zzd(), false);
        SafeParcelWriter.writeStringList(parcel, 5, zzcpVar.zze(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, zzcpVar.zzf(), i, false);
        SafeParcelWriter.writeLongObject(parcel, 7, zzcpVar.zzg(), false);
        SafeParcelWriter.writeLongObject(parcel, 8, zzcpVar.zzh(), false);
        SafeParcelWriter.writeStringList(parcel, 9, zzcpVar.zzi(), false);
        SafeParcelWriter.writeLongObject(parcel, 10, zzcpVar.zzj(), false);
        SafeParcelWriter.writeLongObject(parcel, 11, zzcpVar.zzk(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 12, zzcpVar.zzl(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 13, zzcpVar.zzm(), false);
        SafeParcelWriter.writeLongObject(parcel, 14, zzcpVar.zzn(), false);
        SafeParcelWriter.writeLongObject(parcel, 15, zzcpVar.zzo(), false);
        SafeParcelWriter.writeString(parcel, 16, zzcpVar.zzp(), false);
        SafeParcelWriter.writeTypedList(parcel, 17, zzcpVar.zzq(), false);
        SafeParcelWriter.writeStringList(parcel, 18, zzcpVar.zzr(), false);
        SafeParcelWriter.writeString(parcel, 19, zzcpVar.zzs(), false);
        SafeParcelWriter.writeBundle(parcel, 20, zzcpVar.zzt(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        Boolean booleanObject = null;
        ArrayList<String> arrayListCreateStringList = null;
        zzcp zzcpVar = null;
        Long longObject = null;
        Long longObject2 = null;
        ArrayList<String> arrayListCreateStringList2 = null;
        Long longObject3 = null;
        Long longObject4 = null;
        Double doubleObject = null;
        Double doubleObject2 = null;
        Long longObject5 = null;
        Long longObject6 = null;
        String strCreateString3 = null;
        ArrayList arrayListCreateTypedList = null;
        ArrayList<String> arrayListCreateStringList3 = null;
        String strCreateString4 = null;
        Bundle bundleCreateBundle = null;
        int i = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 2:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 4:
                    booleanObject = SafeParcelReader.readBooleanObject(parcel, header);
                    break;
                case 5:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 6:
                    zzcpVar = (zzcp) SafeParcelReader.createParcelable(parcel, header, zzcp.CREATOR);
                    break;
                case 7:
                    longObject = SafeParcelReader.readLongObject(parcel, header);
                    break;
                case 8:
                    longObject2 = SafeParcelReader.readLongObject(parcel, header);
                    break;
                case 9:
                    arrayListCreateStringList2 = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 10:
                    longObject3 = SafeParcelReader.readLongObject(parcel, header);
                    break;
                case 11:
                    longObject4 = SafeParcelReader.readLongObject(parcel, header);
                    break;
                case 12:
                    doubleObject = SafeParcelReader.readDoubleObject(parcel, header);
                    break;
                case 13:
                    doubleObject2 = SafeParcelReader.readDoubleObject(parcel, header);
                    break;
                case 14:
                    longObject5 = SafeParcelReader.readLongObject(parcel, header);
                    break;
                case 15:
                    longObject6 = SafeParcelReader.readLongObject(parcel, header);
                    break;
                case 16:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 17:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzcp.CREATOR);
                    break;
                case 18:
                    arrayListCreateStringList3 = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 19:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 20:
                    bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzcp(i, strCreateString, strCreateString2, booleanObject, arrayListCreateStringList, zzcpVar, longObject, longObject2, arrayListCreateStringList2, longObject3, longObject4, doubleObject, doubleObject2, longObject5, longObject6, strCreateString3, arrayListCreateTypedList, arrayListCreateStringList3, strCreateString4, bundleCreateBundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcp[i];
    }
}
