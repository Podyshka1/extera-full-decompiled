package com.google.common.collect;

import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
abstract class Hashing {
    public static int smear(int i) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i) * (-862048943)), 15)) * 461845907);
    }

    public static int smearedHash(Object obj) {
        return smear(obj == null ? 0 : obj.hashCode());
    }

    public static int closedTableSize(int i, double d) {
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax <= ((int) (d * ((double) iHighestOneBit)))) {
            return iHighestOneBit;
        }
        int i2 = iHighestOneBit << 1;
        return i2 > 0 ? i2 : TLObject.FLAG_30;
    }
}
