package com.google.android.recaptcha.internal;

import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
final class zzu implements Comparator {
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        return java.lang.Integer.compare(r1, r5.zza.length);
     */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzv zzvVar = (zzv) obj;
        zzv zzvVar2 = (zzv) obj2;
        int i = 0;
        int i2 = 0;
        while (true) {
            int length = zzvVar.zza.length;
            if (i >= length || i2 >= zzvVar2.zza.length) {
                break;
            }
            int iCompare = Integer.compare(zzv.zzg(zzvVar.zzb(i)), zzv.zzg(zzvVar2.zzb(i2)));
            if (iCompare != 0) {
                return iCompare;
            }
            i++;
            i2++;
        }
    }
}
