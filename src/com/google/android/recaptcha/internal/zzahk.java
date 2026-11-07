package com.google.android.recaptcha.internal;

import java.util.ArrayDeque;
import java.util.Arrays;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzahk {
    public static final /* synthetic */ zzaer zza(zzaer zzaerVar, zzaer zzaerVar2, ArrayDeque arrayDeque) {
        zzb(zzaerVar, arrayDeque);
        zzb(zzaerVar2, arrayDeque);
        zzaer zzahmVar = (zzaer) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            zzahmVar = new zzahm((zzaer) arrayDeque.pop(), zzahmVar, null);
        }
        return zzahmVar;
    }

    private static final void zzb(zzaer zzaerVar, ArrayDeque arrayDeque) {
        byte[] bArr;
        if (!zzaerVar.zzp()) {
            if (!(zzaerVar instanceof zzahm)) {
                f$$ExternalSyntheticBUOutline1.m215m("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzaerVar.getClass())));
                return;
            }
            zzahm zzahmVar = (zzahm) zzaerVar;
            zzb(zzahmVar.zzn(), arrayDeque);
            zzb(zzahmVar.zzD(), arrayDeque);
            return;
        }
        int iZzc = zzc(zzaerVar.zzb(), arrayDeque);
        int iZzm = zzahm.zzm(iZzc + 1);
        if (arrayDeque.isEmpty() || ((zzaer) arrayDeque.peek()).zzb() >= iZzm) {
            arrayDeque.push(zzaerVar);
            return;
        }
        int iZzm2 = zzahm.zzm(iZzc);
        zzaer zzahmVar2 = (zzaer) arrayDeque.pop();
        while (true) {
            bArr = null;
            if (arrayDeque.isEmpty() || ((zzaer) arrayDeque.peek()).zzb() >= iZzm2) {
                break;
            } else {
                zzahmVar2 = new zzahm((zzaer) arrayDeque.pop(), zzahmVar2, bArr);
            }
        }
        zzahm zzahmVar3 = new zzahm(zzahmVar2, zzaerVar, bArr);
        while (!arrayDeque.isEmpty()) {
            if (((zzaer) arrayDeque.peek()).zzb() >= zzahm.zzm(zzc(zzahmVar3.zzb(), arrayDeque) + 1)) {
                break;
            } else {
                zzahmVar3 = new zzahm((zzaer) arrayDeque.pop(), zzahmVar3, bArr);
            }
        }
        arrayDeque.push(zzahmVar3);
    }

    private static final int zzc(int i, ArrayDeque arrayDeque) {
        int iBinarySearch = Arrays.binarySearch(zzahm.zzb, i);
        return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
    }
}
