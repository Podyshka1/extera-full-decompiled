package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzfu;
import com.google.android.gms.internal.play_billing.zzfv;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzfu<MessageType extends zzfv<MessageType, BuilderType>, BuilderType extends zzfu<MessageType, BuilderType>> implements zzil {
    private static void zza(List list, int i) {
        String str = "Element at index " + (list.size() - i) + " is null.";
        int size = list.size();
        while (true) {
            size--;
            if (size < i) {
                throw new NullPointerException(str);
            }
            list.remove(size);
        }
    }

    public static void zzc(Iterable iterable, List list) {
        byte[] bArr = zzhp.zzb;
        iterable.getClass();
        if (iterable instanceof zzhy) {
            List listZza = ((zzhy) iterable).zza();
            zzhy zzhyVar = (zzhy) list;
            int size = list.size();
            for (Object obj : listZza) {
                if (obj == null) {
                    String str = "Element at index " + (zzhyVar.size() - size) + " is null.";
                    int size2 = zzhyVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            f$$ExternalSyntheticBUOutline2.m179m(str);
                            return;
                        }
                        zzhyVar.remove(size2);
                    }
                } else if (obj instanceof zzgk) {
                    zzhyVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    zzgk.zzj(bArr2, 0, bArr2.length);
                    zzhyVar.zzb();
                } else {
                    zzhyVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzit) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size3 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size3);
            }
            if (list instanceof zziv) {
                ((zziv) list).zzf(list.size() + size3);
            }
        }
        int size4 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    zza(list, size4);
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size5 = list2.size();
        for (int i = 0; i < size5; i++) {
            Object obj3 = list2.get(i);
            if (obj3 == null) {
                zza(list, size4);
            }
            list.add(obj3);
        }
    }
}
