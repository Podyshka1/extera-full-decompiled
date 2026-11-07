package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwy;
import com.google.android.gms.internal.cast.zzwz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzwz<MessageType extends zzwz<MessageType, BuilderType>, BuilderType extends zzwy<MessageType, BuilderType>> implements zzzi {
    protected transient int zza = 0;

    public static void zzu(Iterable iterable, List list) {
        byte[] bArr = zzym.zzb;
        int size = ((Collection) iterable).size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size);
        } else if (list instanceof zzzq) {
            ((zzzq) list).zze(list.size() + size);
        }
        int size2 = list.size();
        List list2 = (List) iterable;
        int size3 = list2.size();
        for (int i = 0; i < size3; i++) {
            Object obj = list2.get(i);
            if (obj == null) {
                int size4 = list.size() - size2;
                StringBuilder sb = new StringBuilder(String.valueOf(size4).length() + 26);
                sb.append("Element at index ");
                sb.append(size4);
                sb.append(" is null.");
                String string = sb.toString();
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size2) {
                        f$$ExternalSyntheticBUOutline2.m216m(string);
                        return;
                    }
                    list.remove(size5);
                }
            } else {
                list.add(obj);
            }
        }
    }

    public final byte[] zzs() {
        try {
            int iZzE = zzE();
            byte[] bArr = new byte[iZzE];
            int i = zzxp.$r8$clinit;
            zzxn zzxnVar = new zzxn(bArr, 0, iZzE);
            zzD(zzxnVar);
            zzxnVar.zzx();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            zzwz$$ExternalSyntheticBUOutline0.m336m(name.length() + 72, name, " to a byte array threw an IOException (should never happen).", e);
            return null;
        }
    }

    public abstract int zzt(zzzs zzzsVar);
}
