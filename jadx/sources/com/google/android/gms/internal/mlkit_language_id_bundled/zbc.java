package com.google.android.gms.internal.mlkit_language_id_bundled;

/* JADX INFO: loaded from: classes.dex */
public abstract class zbc {
    public static int zba(int i, int i2, String str) {
        String strZba;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZba = zbd.zba("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new IllegalArgumentException("negative size: " + i2);
            }
            strZba = zbd.zba("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZba);
    }

    public static int zbb(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(zbd(i, i2, "index"));
        }
        return i;
    }

    public static void zbc(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zbd(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zbd(i2, i3, "end index") : zbd.zba("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private static String zbd(int i, int i2, String str) {
        if (i < 0) {
            return zbd.zba("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zbd.zba("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }
}
