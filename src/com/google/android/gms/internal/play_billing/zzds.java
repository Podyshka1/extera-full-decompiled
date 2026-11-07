package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzdr;
import com.google.android.gms.internal.play_billing.zzds;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzds<MessageType extends zzds<MessageType, BuilderType>, BuilderType extends zzdr<MessageType, BuilderType>> implements zzgl {
    protected int zza = 0;

    public static void zzg(Iterable iterable, List list) {
        byte[] bArr = zzfo.zzb;
        int size = ((Collection) iterable).size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size);
        } else if (list instanceof zzgt) {
            ((zzgt) list).zzf(list.size() + size);
        }
        int size2 = list.size();
        List list2 = (List) iterable;
        int size3 = list2.size();
        for (int i = 0; i < size3; i++) {
            Object obj = list2.get(i);
            if (obj == null) {
                String str = "Element at index " + (list.size() - size2) + " is null.";
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size2) {
                        f$$ExternalSyntheticBUOutline2.m216m(str);
                        return;
                    }
                    list.remove(size4);
                }
            } else {
                list.add(obj);
            }
        }
    }

    public final byte[] zzM() {
        try {
            int iZzj = zzj();
            byte[] bArr = new byte[iZzj];
            int i = zzep.$r8$clinit;
            zzem zzemVar = new zzem(bArr, 0, iZzj);
            zzL(zzemVar);
            zzemVar.zzE();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }

    public abstract int zze(zzgv zzgvVar);
}
