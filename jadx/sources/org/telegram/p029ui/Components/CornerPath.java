package org.telegram.p029ui.Components;

import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CornerPath extends Path {
    private static ArrayList recycled;
    private boolean isPathCreated;
    private int paddingX;
    private int paddingY;
    private final ArrayList rects;
    private float rectsUnionDiffDelta;
    protected boolean useCornerPathImplementation;

    public CornerPath() {
        this.isPathCreated = false;
        this.useCornerPathImplementation = true;
        this.rectsUnionDiffDelta = 0.0f;
        this.rects = new ArrayList(1);
    }

    public CornerPath(int i) {
        this.isPathCreated = false;
        this.useCornerPathImplementation = true;
        this.rectsUnionDiffDelta = 0.0f;
        this.rects = new ArrayList(i);
    }

    public void setPadding(int i, int i2) {
        this.paddingX = i;
        this.paddingY = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    @Override // android.graphics.Path
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addRect(RectF rectF, Path.Direction direction) {
        RectF rectF2;
        if (Build.VERSION.SDK_INT < 34 || !this.useCornerPathImplementation) {
            float f = rectF.left;
            int i = this.paddingX;
            float f2 = f - i;
            float f3 = rectF.top;
            int i2 = this.paddingY;
            super.addRect(f2, f3 - i2, rectF.right + i, rectF.bottom + i2, direction);
            return;
        }
        if (this.rects.size() > 0) {
            if (((RectF) this.rects.get(r11.size() - 1)).contains(rectF)) {
                return;
            }
        }
        if (this.rects.size() > 0) {
            if (Math.abs(rectF.top - ((RectF) this.rects.get(r1.size() - 1)).top) <= this.rectsUnionDiffDelta) {
                if (Math.abs(rectF.bottom - ((RectF) this.rects.get(r1.size() - 1)).bottom) <= this.rectsUnionDiffDelta) {
                    ((RectF) this.rects.get(r11.size() - 1)).union(rectF);
                } else {
                    ArrayList arrayList = recycled;
                    if (arrayList != null && arrayList.size() > 0) {
                        rectF2 = (RectF) recycled.remove(0);
                    } else {
                        rectF2 = new RectF();
                    }
                    rectF2.set(rectF);
                    this.rects.add(rectF2);
                }
            }
        }
        this.isPathCreated = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007c  */
    @Override // android.graphics.Path
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        RectF rectF;
        if (Build.VERSION.SDK_INT < 34 || !this.useCornerPathImplementation) {
            int i = this.paddingX;
            float f5 = f - i;
            int i2 = this.paddingY;
            super.addRect(f5, f2 - i2, f3 + i, f4 + i2, direction);
            return;
        }
        if (this.rects.size() > 0) {
            if (((RectF) this.rects.get(r13.size() - 1)).contains(f, f2, f3, f4)) {
                return;
            }
        }
        if (this.rects.size() > 0) {
            if (Math.abs(f2 - ((RectF) this.rects.get(r13.size() - 1)).top) <= this.rectsUnionDiffDelta) {
                if (Math.abs(f4 - ((RectF) this.rects.get(r13.size() - 1)).bottom) <= this.rectsUnionDiffDelta) {
                    ((RectF) this.rects.get(r13.size() - 1)).union(f, f2, f3, f4);
                } else {
                    ArrayList arrayList = recycled;
                    if (arrayList != null && arrayList.size() > 0) {
                        rectF = (RectF) recycled.remove(0);
                    } else {
                        rectF = new RectF();
                    }
                    rectF.set(f, f2, f3, f4);
                    this.rects.add(rectF);
                }
            }
        }
        this.isPathCreated = false;
    }

    @Override // android.graphics.Path
    public void reset() {
        super.reset();
        if (Build.VERSION.SDK_INT < 34 || !this.useCornerPathImplementation) {
            return;
        }
        resetRects();
    }

    @Override // android.graphics.Path
    public void rewind() {
        super.rewind();
        if (Build.VERSION.SDK_INT < 34 || !this.useCornerPathImplementation) {
            return;
        }
        resetRects();
    }

    private void resetRects() {
        if (recycled == null) {
            recycled = new ArrayList(this.rects.size());
        }
        recycled.addAll(this.rects);
        this.rects.clear();
        this.isPathCreated = false;
    }

    public void closeRects() {
        if (Build.VERSION.SDK_INT < 34 || !this.useCornerPathImplementation || this.isPathCreated) {
            return;
        }
        createClosedPathsFromRects(this.rects);
        this.isPathCreated = true;
    }

    public void setUseCornerPathImplementation(boolean z) {
        this.useCornerPathImplementation = z;
    }

    public void setRectsUnionDiffDelta(float f) {
        this.rectsUnionDiffDelta = f;
    }

    private void createClosedPathsFromRects(List list) {
        if (list.isEmpty()) {
            return;
        }
        boolean z = false;
        if (list.size() == 1) {
            super.addRect(((RectF) list.get(0)).left - this.paddingX, ((RectF) list.get(0)).top - this.paddingY, ((RectF) list.get(0)).right + this.paddingX, ((RectF) list.get(0)).bottom + this.paddingY, Path.Direction.CW);
            return;
        }
        RectF rectF = (RectF) list.get(0);
        int size = list.size() - 1;
        super.moveTo(rectF.left - this.paddingX, rectF.top - this.paddingY);
        for (int i = 1; i < list.size(); i++) {
            RectF rectF2 = (RectF) list.get(i);
            if (rectF2.width() != 0.0f) {
                float f = rectF.bottom;
                int i2 = this.paddingY;
                float f2 = f + i2;
                float f3 = rectF2.top;
                if (f2 >= f3 - i2) {
                    float f4 = rectF.left;
                    if (f4 <= rectF2.right) {
                        float f5 = rectF.right;
                        float f6 = rectF2.left;
                        if (f5 >= f6) {
                            if (f4 != f6) {
                                super.lineTo(f4 - this.paddingX, f3);
                                super.lineTo(rectF2.left - this.paddingX, rectF2.top);
                            }
                            rectF = rectF2;
                        }
                    }
                }
                z = true;
                size = i;
                break;
            }
        }
        super.lineTo(rectF.left - this.paddingX, rectF.bottom + this.paddingY);
        super.lineTo(rectF.right + this.paddingX, rectF.bottom + this.paddingY);
        for (int i3 = size - 1; i3 >= 0; i3--) {
            RectF rectF3 = (RectF) list.get(i3);
            if (rectF3.width() != 0.0f) {
                float f7 = rectF.right;
                if (f7 != rectF3.right) {
                    super.lineTo(f7 + this.paddingX, rectF.top);
                    super.lineTo(rectF3.right + this.paddingX, rectF.top);
                }
                rectF = rectF3;
            }
        }
        super.lineTo(rectF.right + this.paddingX, rectF.top - this.paddingY);
        super.close();
        if (z) {
            createClosedPathsFromRects(list.subList(size, list.size()));
        }
    }
}
