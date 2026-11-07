package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.checkerframework.dataflow.qual.Pure;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends AbstractSafeParcelable {

    @JvmField
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    private final int zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final List zze;
    private final zzd zzf;

    static {
        Process.myUid();
        Process.myPid();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "only for Parcelable.Creator")
    public zzd(int i, String str, String str2, String str3, List list, zzd zzdVar) {
        if (zzdVar != null && zzdVar.zza()) {
            f$$ExternalSyntheticBUOutline1.m215m("Failed requirement.");
            throw null;
        }
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3 == null ? zzdVar != null ? zzdVar.zzd : null : str3;
        if (list == null) {
            list = zzdVar != null ? zzdVar.zze : null;
            if (list == null) {
                list = zzeu.zzi();
            }
        }
        this.zze = zzeu.zzj(list);
        this.zzf = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzd) {
            zzd zzdVar = (zzd) obj;
            if (this.zza == zzdVar.zza && Intrinsics.areEqual(this.zzb, zzdVar.zzb) && Intrinsics.areEqual(this.zzc, zzdVar.zzc) && Intrinsics.areEqual(this.zzd, zzdVar.zzd) && Intrinsics.areEqual(this.zzf, zzdVar.zzf) && Intrinsics.areEqual(this.zze, zzdVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.zza), this.zzb, this.zzc, this.zzd, this.zzf);
    }

    public final String toString() {
        String str = this.zzb;
        int length = str.length() + 18;
        String str2 = this.zzc;
        StringBuilder sb = new StringBuilder(length + (str2 != null ? str2.length() : 0));
        sb.append(this.zza);
        sb.append("/");
        sb.append(str);
        if (str2 != null) {
            sb.append("[");
            if (StringsKt.startsWith$default(str2, str, false, 2, (Object) null)) {
                sb.append((CharSequence) str2, str.length(), str2.length());
            } else {
                sb.append(str2);
            }
            sb.append("]");
        }
        String str3 = this.zzd;
        if (str3 != null) {
            sb.append("/");
            sb.append(Integer.toHexString(str3.hashCode()));
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzd, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
        SafeParcelWriter.writeTypedList(parcel, 8, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final boolean zza() {
        return this.zzf != null;
    }
}
