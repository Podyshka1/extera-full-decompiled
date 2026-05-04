package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import org.mvel2.asm.Opcodes;

/* JADX INFO: loaded from: classes.dex */
public abstract class SafeParcelWriter {
    public static int beginObjectHeader(Parcel parcel) {
        return zza(parcel, 20293);
    }

    public static void finishObjectHeader(Parcel parcel, int i) {
        zzb(parcel, i);
    }

    public static void writeBoolean(Parcel parcel, int i, boolean z) {
        zzc(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void writeBooleanObject(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool != null) {
            zzc(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z) {
            zzc(parcel, i, 0);
        }
    }

    public static void writeBundle(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeBundle(bundle);
            zzb(parcel, iZza);
        }
    }

    public static void writeByte(Parcel parcel, int i, byte b) {
        zzc(parcel, i, 4);
        parcel.writeInt(b);
    }

    public static void writeByteArray(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeByteArray(bArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeByteArrayArray(Parcel parcel, int i, byte[][] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                zzc(parcel, i, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        zzb(parcel, iZza);
    }

    public static void writeDouble(Parcel parcel, int i, double d) {
        zzc(parcel, i, 8);
        parcel.writeDouble(d);
    }

    public static void writeDoubleObject(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            zzc(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (z) {
            zzc(parcel, i, 0);
        }
    }

    public static void writeFloat(Parcel parcel, int i, float f) {
        zzc(parcel, i, 4);
        parcel.writeFloat(f);
    }

    public static void writeFloatArray(Parcel parcel, int i, float[] fArr, boolean z) {
        if (fArr == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeFloatArray(fArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeFloatList(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                zzc(parcel, i, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeFloat(((Float) list.get(i2)).floatValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeFloatObject(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            zzc(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (z) {
            zzc(parcel, i, 0);
        }
    }

    public static void writeIBinder(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeStrongBinder(iBinder);
            zzb(parcel, iZza);
        }
    }

    public static void writeInt(Parcel parcel, int i, int i2) {
        zzc(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static void writeIntArray(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeIntArray(iArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeIntegerList(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                zzc(parcel, i, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(((Integer) list.get(i2)).intValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeIntegerObject(Parcel parcel, int i, Integer num, boolean z) {
        if (num != null) {
            zzc(parcel, i, 4);
            parcel.writeInt(num.intValue());
        } else if (z) {
            zzc(parcel, i, 0);
        }
    }

    public static void writeLong(Parcel parcel, int i, long j) {
        zzc(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void writeLongArray(Parcel parcel, int i, long[] jArr, boolean z) {
        if (jArr == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeLongArray(jArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeLongObject(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            zzc(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (z) {
            zzc(parcel, i, 0);
        }
    }

    public static void writeParcelable(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            zzb(parcel, iZza);
        }
    }

    public static void writeShort(Parcel parcel, int i, short s) {
        zzc(parcel, i, 4);
        parcel.writeInt(s);
    }

    public static void writeString(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeString(str);
            zzb(parcel, iZza);
        }
    }

    public static void writeStringArray(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeStringArray(strArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeStringList(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                zzc(parcel, i, 0);
            }
        } else {
            int iZza = zza(parcel, i);
            parcel.writeStringList(list);
            zzb(parcel, iZza);
        }
    }

    public static void writeTypedArray(Parcel parcel, int i, Parcelable[] parcelableArr, int i2, boolean z) {
        if (parcelableArr == null) {
            if (z) {
                zzc(parcel, i, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, parcelable, i2);
            }
        }
        zzb(parcel, iZza);
    }

    public static void writeTypedList(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                zzc(parcel, i, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcelable parcelable = (Parcelable) list.get(i2);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, parcelable, 0);
            }
        }
        zzb(parcel, iZza);
    }

    private static int zza(Parcel parcel, int i) {
        parcel.writeInt(i | Opcodes.V_PREVIEW);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void zzb(Parcel parcel, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(iDataPosition - i);
        parcel.setDataPosition(iDataPosition);
    }

    private static void zzc(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    private static void zzd(Parcel parcel, Parcelable parcelable, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int iDataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i);
        int iDataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition3 - iDataPosition2);
        parcel.setDataPosition(iDataPosition3);
    }
}
