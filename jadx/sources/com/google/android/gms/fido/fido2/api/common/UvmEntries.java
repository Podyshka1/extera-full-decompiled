package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class UvmEntries extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UvmEntries> CREATOR = new zzbd();
    private final List zza;

    UvmEntries(List list) {
        this.zza = list;
    }

    public boolean equals(Object obj) {
        List list;
        if (!(obj instanceof UvmEntries)) {
            return false;
        }
        UvmEntries uvmEntries = (UvmEntries) obj;
        List list2 = this.zza;
        if (list2 == null && uvmEntries.zza == null) {
            return true;
        }
        return list2 != null && (list = uvmEntries.zza) != null && list2.containsAll(list) && uvmEntries.zza.containsAll(this.zza);
    }

    public List getUvmEntryList() {
        return this.zza;
    }

    public int hashCode() {
        List list = this.zza;
        return Objects.hashCode(list == null ? null : new HashSet(list));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getUvmEntryList(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final JSONArray zza() {
        try {
            JSONArray jSONArray = new JSONArray();
            if (this.zza != null) {
                for (int i = 0; i < this.zza.size(); i++) {
                    UvmEntry uvmEntry = (UvmEntry) this.zza.get(i);
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put((int) uvmEntry.getMatcherProtectionType());
                    jSONArray2.put((int) uvmEntry.getKeyProtectionType());
                    jSONArray2.put((int) uvmEntry.getMatcherProtectionType());
                    jSONArray.put(i, jSONArray2);
                }
            }
            return jSONArray;
        } catch (JSONException e) {
            throw new RuntimeException("Error encoding UvmEntries to JSON object", e);
        }
    }
}
