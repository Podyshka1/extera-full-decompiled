package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
abstract class DataMask {
    private static final /* synthetic */ DataMask[] $VALUES = $values();
    public static final DataMask DATA_MASK_000;
    public static final DataMask DATA_MASK_001;
    public static final DataMask DATA_MASK_010;
    public static final DataMask DATA_MASK_011;
    public static final DataMask DATA_MASK_100;
    public static final DataMask DATA_MASK_101;
    public static final DataMask DATA_MASK_110;
    public static final DataMask DATA_MASK_111;

    abstract boolean isMasked(int i, int i2);

    private static /* synthetic */ DataMask[] $values() {
        return new DataMask[]{DATA_MASK_000, DATA_MASK_001, DATA_MASK_010, DATA_MASK_011, DATA_MASK_100, DATA_MASK_101, DATA_MASK_110, DATA_MASK_111};
    }

    private DataMask(String str, int i) {
    }

    public static DataMask valueOf(String str) {
        return (DataMask) Enum.valueOf(DataMask.class, str);
    }

    public static DataMask[] values() {
        return (DataMask[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$1 */
    enum C20051 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }

        private C20051(String str, int i) {
            super(str, i);
        }
    }

    static {
        DATA_MASK_000 = new C20051("DATA_MASK_000", 0);
        DATA_MASK_001 = new C20062("DATA_MASK_001", 1);
        DATA_MASK_010 = new C20073("DATA_MASK_010", 2);
        DATA_MASK_011 = new C20084("DATA_MASK_011", 3);
        DATA_MASK_100 = new C20095("DATA_MASK_100", 4);
        DATA_MASK_101 = new C20106("DATA_MASK_101", 5);
        DATA_MASK_110 = new C20117("DATA_MASK_110", 6);
        DATA_MASK_111 = new C20128("DATA_MASK_111", 7);
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$2 */
    enum C20062 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i & 1) == 0;
        }

        private C20062(String str, int i) {
            super(str, i);
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$3 */
    enum C20073 extends DataMask {
        private C20073(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return i2 % 3 == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$4 */
    enum C20084 extends DataMask {
        private C20084(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$5 */
    enum C20095 extends DataMask {
        private C20095(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (((i / 2) + (i2 / 3)) & 1) == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$6 */
    enum C20106 extends DataMask {
        private C20106(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i * i2) % 6 == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$7 */
    enum C20117 extends DataMask {
        private C20117(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (i * i2) % 6 < 3;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$8 */
    enum C20128 extends DataMask {
        private C20128(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        boolean isMasked(int i, int i2) {
            return (((i + i2) + ((i * i2) % 3)) & 1) == 0;
        }
    }

    final void unmaskBitMatrix(BitMatrix bitMatrix, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (isMasked(i2, i3)) {
                    bitMatrix.flip(i3, i2);
                }
            }
        }
    }
}
