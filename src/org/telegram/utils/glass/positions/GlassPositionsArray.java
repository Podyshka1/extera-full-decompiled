package org.telegram.utils.glass.positions;

import android.graphics.RectF;
import java.util.ArrayList;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes6.dex */
public class GlassPositionsArray {
    private final ArrayList<RectF> positions = new ArrayList<>();
    private int size;

    public RectF add(RectF rectF) {
        return add(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public RectF add(float f, float f2, float f3, float f4) {
        RectF rectF;
        if (this.size < this.positions.size()) {
            rectF = this.positions.get(this.size);
            rectF.set(f, f2, f3, f4);
        } else {
            rectF = new RectF(f, f2, f3, f4);
            this.positions.add(rectF);
        }
        this.size++;
        return rectF;
    }

    public RectF get(int i) {
        if (i < 0 || i >= this.size) {
            Regex$$ExternalSyntheticBUOutline0.m889m("index=", i, ", size=", this.size);
            return null;
        }
        return this.positions.get(i);
    }

    public void clear() {
        this.size = 0;
    }

    public int size() {
        return this.size;
    }

    public void removeUnordered(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.size)) {
            Regex$$ExternalSyntheticBUOutline0.m889m("index=", i, ", size=", this.size);
            return;
        }
        int i3 = i2 - 1;
        RectF rectF = this.positions.get(i);
        if (i != i3) {
            ArrayList<RectF> arrayList = this.positions;
            arrayList.set(i, arrayList.get(i3));
            this.positions.set(i3, rectF);
        }
        this.size = i3;
    }

    public void clip(float f, float f2, float f3, float f4) {
        int i = 0;
        while (i < this.size) {
            RectF rectF = this.positions.get(i);
            float f5 = rectF.right;
            if (f5 > f) {
                float f6 = rectF.bottom;
                if (f6 > f2) {
                    float f7 = rectF.left;
                    if (f7 < f3) {
                        float f8 = rectF.top;
                        if (f8 < f4) {
                            if (f7 < f) {
                                rectF.left = f;
                            }
                            if (f8 < f2) {
                                rectF.top = f2;
                            }
                            if (f5 > f3) {
                                rectF.right = f3;
                            }
                            if (f6 > f4) {
                                rectF.bottom = f4;
                            }
                            i++;
                        }
                    }
                }
            }
            removeUnordered(i);
        }
    }

    public void set(GlassPositionsArray glassPositionsArray) {
        if (this == glassPositionsArray) {
            return;
        }
        clear();
        int i = glassPositionsArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            add(glassPositionsArray.positions.get(i2));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GlassPositionsArray)) {
            return false;
        }
        GlassPositionsArray glassPositionsArray = (GlassPositionsArray) obj;
        if (this.size != glassPositionsArray.size) {
            return false;
        }
        for (int i = 0; i < this.size; i++) {
            if (!this.positions.get(i).equals(glassPositionsArray.positions.get(i))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (int i = 0; i < this.size; i++) {
            iHashCode = (iHashCode * 31) + this.positions.get(i).hashCode();
        }
        return iHashCode;
    }
}
