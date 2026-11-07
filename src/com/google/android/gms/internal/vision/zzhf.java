package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.cast.zzwz$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.vision.zzhe;
import com.google.android.gms.internal.vision.zzhf;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzhf<MessageType extends zzhf<MessageType, BuilderType>, BuilderType extends zzhe<MessageType, BuilderType>> implements zzkk {
    protected int zza = 0;

    public abstract void zzb(int i);

    public abstract int zzi();

    public final byte[] zzh() {
        try {
            byte[] bArr = new byte[zzm()];
            zzii zziiVarZza = zzii.zza(bArr);
            zza(zziiVarZza);
            zziiVarZza.zzb();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            zzwz$$ExternalSyntheticBUOutline0.m312m(name.length() + 62 + "byte array".length(), name, " to a byte array threw an IOException (should never happen).", e);
            return null;
        }
    }

    public static <T> void zza(Iterable<T> iterable, List<? super T> list) {
        zzjf.zza(iterable);
        if (iterable instanceof zzjv) {
            List<?> listZzd = ((zzjv) iterable).zzd();
            zzjv zzjvVar = (zzjv) list;
            int size = list.size();
            for (Object obj : listZzd) {
                if (obj == null) {
                    int size2 = zzjvVar.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    for (int size3 = zzjvVar.size() - 1; size3 >= size; size3--) {
                        zzjvVar.remove(size3);
                    }
                    f$$ExternalSyntheticBUOutline2.m213m(string);
                    return;
                }
                if (obj instanceof zzht) {
                    zzjvVar.zza((zzht) obj);
                } else {
                    zzjvVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzkw) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size4 = list.size();
        for (T t : iterable) {
            if (t == null) {
                int size5 = list.size() - size4;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Element at index ");
                sb2.append(size5);
                sb2.append(" is null.");
                String string2 = sb2.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                f$$ExternalSyntheticBUOutline2.m213m(string2);
                return;
            }
            list.add(t);
        }
    }
}
