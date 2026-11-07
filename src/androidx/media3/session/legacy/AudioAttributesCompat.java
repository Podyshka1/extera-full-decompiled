package androidx.media3.session.legacy;

import android.annotation.SuppressLint;
import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.media3.common.util.Assertions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class AudioAttributesCompat {
    private static final int[] SDK_USAGES;
    private static final SparseIntArray SUPPRESSIBLE_USAGES;
    private final AudioAttributesImpl impl;

    public interface AudioAttributesImpl {

        public interface Builder {
            AudioAttributesImpl build();

            Builder setContentType(int i);

            Builder setFlags(int i);

            Builder setUsage(int i);
        }

        int getLegacyStreamType();
    }

    public static int toVolumeStreamType(int i, int i2) {
        if ((i & 1) == 1) {
            return 7;
        }
        if ((i & 4) == 4) {
            return 6;
        }
        switch (i2) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        SUPPRESSIBLE_USAGES = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
        SDK_USAGES = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};
    }

    public AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.impl = audioAttributesImpl;
    }

    public int getLegacyStreamType() {
        return this.impl.getLegacyStreamType();
    }

    public static class Builder {
        final AudioAttributesImpl.Builder builderImpl;

        public Builder() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.builderImpl = new AudioAttributesImplApi26.Builder();
            } else {
                this.builderImpl = new AudioAttributesImplApi21.Builder();
            }
        }

        public AudioAttributesCompat build() {
            return new AudioAttributesCompat(this.builderImpl.build());
        }

        public Builder setUsage(int i) {
            this.builderImpl.setUsage(i);
            return this;
        }

        public Builder setContentType(int i) {
            this.builderImpl.setContentType(i);
            return this;
        }

        public Builder setFlags(int i) {
            this.builderImpl.setFlags(i);
            return this;
        }
    }

    public int hashCode() {
        return this.impl.hashCode();
    }

    public String toString() {
        return this.impl.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesCompat) {
            return this.impl.equals(((AudioAttributesCompat) obj).impl);
        }
        return false;
    }

    public static class AudioAttributesImplApi21 implements AudioAttributesImpl {
        public AudioAttributes audioAttributes;
        public final int legacyStreamType;

        public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
            this(audioAttributes, -1);
        }

        public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i) {
            this.audioAttributes = audioAttributes;
            this.legacyStreamType = i;
        }

        @Override // androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImpl
        public int getLegacyStreamType() {
            int i = this.legacyStreamType;
            return i != -1 ? i : AudioAttributesCompat.toVolumeStreamType(getFlags(), getUsage());
        }

        public int getUsage() {
            return ((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).getUsage();
        }

        public int getFlags() {
            return ((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).getFlags();
        }

        public int hashCode() {
            return ((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof AudioAttributesImplApi21) {
                return Objects.equals(this.audioAttributes, ((AudioAttributesImplApi21) obj).audioAttributes);
            }
            return false;
        }

        public String toString() {
            return "AudioAttributesCompat: audioattributes=" + this.audioAttributes;
        }

        public static class Builder implements AudioAttributesImpl.Builder {
            final AudioAttributes.Builder fwkBuilder = new AudioAttributes.Builder();

            @Override // androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImpl.Builder
            public AudioAttributesImpl build() {
                return new AudioAttributesImplApi21(this.fwkBuilder.build());
            }

            @Override // androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImpl.Builder
            @SuppressLint({"WrongConstant"})
            public Builder setUsage(int i) {
                if (i == 16) {
                    i = 12;
                }
                this.fwkBuilder.setUsage(i);
                return this;
            }

            @Override // androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImpl.Builder
            public Builder setContentType(int i) {
                this.fwkBuilder.setContentType(i);
                return this;
            }

            @Override // androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImpl.Builder
            public Builder setFlags(int i) {
                this.fwkBuilder.setFlags(i);
                return this;
            }
        }
    }

    public static class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {
        public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
            super(audioAttributes, -1);
        }

        public static class Builder extends AudioAttributesImplApi21.Builder {
            @Override // androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImplApi21.Builder, androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImpl.Builder
            public AudioAttributesImpl build() {
                return new AudioAttributesImplApi26(this.fwkBuilder.build());
            }

            @Override // androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImplApi21.Builder, androidx.media3.session.legacy.AudioAttributesCompat.AudioAttributesImpl.Builder
            @SuppressLint({"WrongConstant"})
            public Builder setUsage(int i) {
                this.fwkBuilder.setUsage(i);
                return this;
            }
        }
    }
}
