package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.internal.zzaeb;
import com.google.android.recaptcha.internal.zzaec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaeb<MessageType extends zzaec<MessageType, BuilderType>, BuilderType extends zzaeb<MessageType, BuilderType>> implements zzagw {
    private static void zza(List list, int i) {
        int size = list.size() - i;
        StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 26);
        sb.append("Element at index ");
        sb.append(size);
        sb.append(" is null.");
        String string = sb.toString();
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 < i) {
                throw new NullPointerException(string);
            }
            list.remove(size2);
        }
    }

    public static void zzj(Iterable iterable, List list) {
        iterable.getClass();
        if (iterable instanceof zzagn) {
            List listZza = ((zzagn) iterable).zza();
            zzagn zzagnVar = (zzagn) list;
            int size = list.size();
            for (Object obj : listZza) {
                if (obj == null) {
                    int size2 = zzagnVar.size() - size;
                    StringBuilder sb = new StringBuilder(String.valueOf(size2).length() + 26);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    int size3 = zzagnVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            f$$ExternalSyntheticBUOutline2.m216m(string);
                            return;
                        }
                        zzagnVar.remove(size3);
                    }
                } else if (obj instanceof zzaer) {
                    zzagnVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    zzaer.zzs(bArr, 0, bArr.length);
                    zzagnVar.zzb();
                } else {
                    zzagnVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzahf) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size4 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size4);
            } else if (list instanceof zzahh) {
                ((zzahh) list).zze(list.size() + size4);
            }
        }
        int size5 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    zza(list, size5);
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size6 = list2.size();
        for (int i = 0; i < size6; i++) {
            Object obj3 = list2.get(i);
            if (obj3 == null) {
                zza(list, size5);
            }
            list.add(obj3);
        }
    }
}
