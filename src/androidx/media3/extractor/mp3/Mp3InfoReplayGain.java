package androidx.media3.extractor.mp3;

import androidx.media3.common.Metadata;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class Mp3InfoReplayGain implements Metadata.Entry {
    public GainField field1;
    public GainField field2;
    public final float peak;

    public static final class GainField {
        public final float gain;
        public final int name;
        public final int originator;

        private GainField(int i, int i2, float f) {
            this.name = i;
            this.originator = i2;
            this.gain = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static GainField parse(int i) {
            int i2 = (i >> 13) & 7;
            if (i2 == 0) {
                return null;
            }
            return new GainField(i2, (i >> 10) & 7, ((i & 511) * ((i & 512) != 0 ? -1 : 1)) / 10.0f);
        }

        public String toString() {
            return "GainField{name=" + this.name + ", originator=" + this.originator + ", gain=" + this.gain + '}';
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof GainField)) {
                return false;
            }
            GainField gainField = (GainField) obj;
            return this.name == gainField.name && this.originator == gainField.originator && Float.compare(this.gain, gainField.gain) == 0;
        }

        public int hashCode() {
            return (((this.name * 31) + this.originator) * 31) + Float.hashCode(this.gain);
        }
    }

    private Mp3InfoReplayGain(float f, GainField gainField, GainField gainField2) {
        this.peak = f;
        this.field1 = gainField;
        this.field2 = gainField2;
    }

    public static Mp3InfoReplayGain parse(float f, int i, int i2) {
        GainField gainField = GainField.parse(i);
        GainField gainField2 = GainField.parse(i2);
        if (f <= 0.0f && gainField == null && gainField2 == null) {
            return null;
        }
        return new Mp3InfoReplayGain(f, gainField, gainField2);
    }

    public String toString() {
        return "ReplayGain Xing/Info: peak=" + this.peak + ", field 1=" + this.field1 + ", field 2=" + this.field2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Mp3InfoReplayGain)) {
            return false;
        }
        Mp3InfoReplayGain mp3InfoReplayGain = (Mp3InfoReplayGain) obj;
        return Float.compare(this.peak, mp3InfoReplayGain.peak) == 0 && Objects.equals(this.field1, mp3InfoReplayGain.field1) && Objects.equals(this.field2, mp3InfoReplayGain.field2);
    }

    public int hashCode() {
        int iHashCode = Float.hashCode(this.peak) * 31;
        GainField gainField = this.field1;
        int iHashCode2 = (iHashCode + (gainField != null ? gainField.hashCode() : 0)) * 31;
        GainField gainField2 = this.field2;
        return iHashCode2 + (gainField2 != null ? gainField2.hashCode() : 0);
    }
}
