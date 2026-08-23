package androidx.camera.video;

import androidx.camera.video.Quality;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_Quality_ConstantQuality extends Quality.ConstantQuality {
    private final int highSpeedValue;
    private final String name;
    private final List typicalSizes;
    private final int value;

    AutoValue_Quality_ConstantQuality(int i, int i2, String str, List list) {
        this.value = i;
        this.highSpeedValue = i2;
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.name = str;
        if (list == null) {
            throw new NullPointerException("Null typicalSizes");
        }
        this.typicalSizes = list;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    int getValue() {
        return this.value;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    int getHighSpeedValue() {
        return this.highSpeedValue;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public String getName() {
        return this.name;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public List getTypicalSizes() {
        return this.typicalSizes;
    }

    public String toString() {
        return "ConstantQuality{value=" + this.value + ", highSpeedValue=" + this.highSpeedValue + ", name=" + this.name + ", typicalSizes=" + this.typicalSizes + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Quality.ConstantQuality) {
            Quality.ConstantQuality constantQuality = (Quality.ConstantQuality) obj;
            if (this.value == constantQuality.getValue() && this.highSpeedValue == constantQuality.getHighSpeedValue() && this.name.equals(constantQuality.getName()) && this.typicalSizes.equals(constantQuality.getTypicalSizes())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.value ^ 1000003) * 1000003) ^ this.highSpeedValue) * 1000003) ^ this.name.hashCode()) * 1000003) ^ this.typicalSizes.hashCode();
    }
}
