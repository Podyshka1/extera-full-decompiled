package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class PatternItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PatternItem> CREATOR = new zzq();
    private final int zzb;
    private final Float zzc;

    public PatternItem(int i, Float f) {
        boolean z = true;
        if (i != 1 && (f == null || f.floatValue() < 0.0f)) {
            z = false;
        }
        Preconditions.checkArgument(z, "Invalid PatternItem: type=" + i + " length=" + f);
        this.zzb = i;
        this.zzc = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.zzb == patternItem.zzb && Objects.equal(this.zzc, patternItem.zzc);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzb), this.zzc);
    }

    public String toString() {
        return "[PatternItem: type=" + this.zzb + " length=" + this.zzc + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, i2);
        SafeParcelWriter.writeFloatObject(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
