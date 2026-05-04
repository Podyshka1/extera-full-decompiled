package androidx.camera.camera2.pipe.compat;

/* JADX INFO: loaded from: classes3.dex */
public final class InputConfigData {
    private final int format;
    private final int height;
    private final int width;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InputConfigData)) {
            return false;
        }
        InputConfigData inputConfigData = (InputConfigData) obj;
        return this.width == inputConfigData.width && this.height == inputConfigData.height && this.format == inputConfigData.format;
    }

    public int hashCode() {
        return (((this.width * 31) + this.height) * 31) + this.format;
    }

    public String toString() {
        return "InputConfigData(width=" + this.width + ", height=" + this.height + ", format=" + this.format + ')';
    }

    public InputConfigData(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.format = i3;
    }

    public final int getFormat() {
        return this.format;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }
}
