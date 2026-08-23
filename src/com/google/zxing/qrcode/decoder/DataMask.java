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

    public abstract boolean isMasked(int i, int i2);

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
    public enum C19301 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }

        private C19301(String str, int i) {
            super(str, i);
        }
    }

    static {
        DATA_MASK_000 = new C19301("DATA_MASK_000", 0);
        DATA_MASK_001 = new C19312("DATA_MASK_001", 1);
        DATA_MASK_010 = new C19323("DATA_MASK_010", 2);
        DATA_MASK_011 = new C19334("DATA_MASK_011", 3);
        DATA_MASK_100 = new C19345("DATA_MASK_100", 4);
        DATA_MASK_101 = new C19356("DATA_MASK_101", 5);
        DATA_MASK_110 = new C19367("DATA_MASK_110", 6);
        DATA_MASK_111 = new C19378("DATA_MASK_111", 7);
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$2 */
    public enum C19312 extends DataMask {
        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return (i & 1) == 0;
        }

        private C19312(String str, int i) {
            super(str, i);
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$3 */
    public enum C19323 extends DataMask {
        private C19323(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return i2 % 3 == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$4 */
    public enum C19334 extends DataMask {
        private C19334(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$5 */
    public enum C19345 extends DataMask {
        private C19345(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return (((i / 2) + (i2 / 3)) & 1) == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$6 */
    public enum C19356 extends DataMask {
        private C19356(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return (i * i2) % 6 == 0;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$7 */
    public enum C19367 extends DataMask {
        private C19367(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return (i * i2) % 6 < 3;
        }
    }

    /* JADX INFO: renamed from: com.google.zxing.qrcode.decoder.DataMask$8 */
    public enum C19378 extends DataMask {
        private C19378(String str, int i) {
            super(str, i);
        }

        @Override // com.google.zxing.qrcode.decoder.DataMask
        public boolean isMasked(int i, int i2) {
            return (((i + i2) + ((i * i2) % 3)) & 1) == 0;
        }
    }

    public final void unmaskBitMatrix(BitMatrix bitMatrix, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (isMasked(i2, i3)) {
                    bitMatrix.flip(i3, i2);
                }
            }
        }
    }
}
