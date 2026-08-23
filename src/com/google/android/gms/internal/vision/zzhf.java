package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhf implements zzkk {
    protected int zza = 0;

    abstract void zzb(int i);

    abstract int zzi();

    public final byte[] zzh() {
        try {
            byte[] bArr = new byte[zzm()];
            zzii zziiVarZza = zzii.zza(bArr);
            zza(zziiVarZza);
            zziiVarZza.zzb();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    protected static void zza(Iterable iterable, List list) {
        zzjf.zza(iterable);
        if (iterable instanceof zzjv) {
            List listZzd = ((zzjv) iterable).zzd();
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
                    throw new NullPointerException(string);
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
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                int size5 = list.size() - size4;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Element at index ");
                sb2.append(size5);
                sb2.append(" is null.");
                String string2 = sb2.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                throw new NullPointerException(string2);
            }
            list.add(obj2);
        }
    }
}
