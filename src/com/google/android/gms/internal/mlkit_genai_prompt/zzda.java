package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.IOException;
import java.util.Iterator;
import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzda extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzda> CREATOR;
    private final String zza;
    private final Bundle zzb;
    private transient zzmo zzc = null;

    static {
        zzco zzcoVarZzu = zzcp.zzu();
        zzcoVarZzu.zzn("FunctionCall");
        zzcoVarZzu.zza(6);
        zzcoVarZzu.zzc("The function call schema");
        zzco zzcoVarZzu2 = zzcp.zzu();
        zzcoVarZzu2.zza(1);
        zzcoVarZzu2.zzc("The function name");
        zzcp zzcpVarZzp = zzcoVarZzu2.zzp();
        zzco zzcoVarZzu3 = zzcp.zzu();
        zzcoVarZzu3.zza(5);
        zzcoVarZzu3.zzc("An array of function arguments in an OBJECT format, e.g. [{'argName': 'argName1', 'argValue': 'argValue1'}, {'argName': 'argName2', 'argValue': 123.0}]");
        zzco zzcoVarZzu4 = zzcp.zzu();
        zzcoVarZzu4.zza(6);
        zzcoVarZzu4.zzc("The function argument root schema, which contains the argument name and its value.");
        zzco zzcoVarZzu5 = zzcp.zzu();
        zzcoVarZzu5.zza(1);
        zzcoVarZzu5.zzc("The argument name");
        zzcoVarZzu4.zzo(zzmo.zzc("argName", zzcoVarZzu5.zzp(), "argValue", zzcy.zza));
        zzcoVarZzu4.zzm(zzml.zzm("argName", "argValue"));
        zzcoVarZzu4.zzi(zzml.zzm("argName", "argValue"));
        zzcoVarZzu3.zzf(zzcoVarZzu4.zzp());
        zzcoVarZzu.zzo(zzmo.zzc("name", zzcpVarZzp, "args", zzcoVarZzu3.zzp()));
        zzcoVarZzu.zzm(zzml.zzm("name", "args"));
        zzcoVarZzu.zzi(zzml.zzm("name", "args"));
        zzcoVarZzu.zzp();
        CREATOR = new zzdb();
    }

    public zzda(String str, Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    public final String toString() {
        zzmo zzmoVarZzb = zzb();
        if (zzmoVarZzb == null || zzmoVarZzb.isEmpty()) {
            return String.valueOf(this.zza).concat("()");
        }
        String str = this.zza;
        zzku zzkuVarZza = zzku.zza(", ");
        Iterator<E> it = zzmoVarZzb.entrySet().iterator();
        StringBuilder sb = new StringBuilder();
        try {
            zzkt.zza(sb, it, zzkuVarZza, "=");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + string.length() + 1);
            sb2.append(str);
            sb2.append("(");
            sb2.append(string);
            sb2.append(")");
            return sb2.toString();
        } catch (IOException e) {
            Buffer$$ExternalSyntheticBUOutline2.m917m(e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeBundle(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zza() {
        return this.zza;
    }

    public final zzmo zzb() {
        Bundle bundle;
        if (this.zzc == null && (bundle = this.zzb) != null) {
            zzmn zzmnVar = new zzmn();
            for (String str : bundle.keySet()) {
                Parcelable.Creator<zzcy> creator = zzcy.CREATOR;
                byte[] byteArray = bundle.getByteArray(str);
                byteArray.getClass();
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.unmarshall(byteArray, 0, byteArray.length);
                    parcelObtain.setDataPosition(0);
                    zzcy zzcyVarCreateFromParcel = creator.createFromParcel(parcelObtain);
                    parcelObtain.recycle();
                    zzcy zzcyVar = zzcyVarCreateFromParcel;
                    if (zzcyVar != null) {
                        zzmnVar.zza(str, zzcyVar);
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }
            this.zzc = zzmnVar.zzc();
        }
        return this.zzc;
    }
}
