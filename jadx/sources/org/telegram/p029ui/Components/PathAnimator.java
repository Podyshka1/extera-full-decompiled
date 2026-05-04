package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes3.dex */
public class PathAnimator {
    private float durationScale;
    private float scale;

    /* JADX INFO: renamed from: tx */
    private float f2004tx;

    /* JADX INFO: renamed from: ty */
    private float f2005ty;
    private Path path = new Path();
    private float pathTime = -1.0f;
    private ArrayList keyFrames = new ArrayList();

    private static class KeyFrame {
        public ArrayList commands;
        public float time;

        private KeyFrame() {
            this.commands = new ArrayList();
        }
    }

    private static class MoveTo {

        /* JADX INFO: renamed from: x */
        public float f2014x;

        /* JADX INFO: renamed from: y */
        public float f2015y;

        private MoveTo() {
        }
    }

    private static class LineTo {

        /* JADX INFO: renamed from: x */
        public float f2012x;

        /* JADX INFO: renamed from: y */
        public float f2013y;

        private LineTo() {
        }
    }

    private static class CurveTo {

        /* JADX INFO: renamed from: x */
        public float f2006x;

        /* JADX INFO: renamed from: x1 */
        public float f2007x1;

        /* JADX INFO: renamed from: x2 */
        public float f2008x2;

        /* JADX INFO: renamed from: y */
        public float f2009y;

        /* JADX INFO: renamed from: y1 */
        public float f2010y1;

        /* JADX INFO: renamed from: y2 */
        public float f2011y2;

        private CurveTo() {
        }
    }

    public PathAnimator(float f, float f2, float f3, float f4) {
        this.scale = f;
        this.f2004tx = f2;
        this.f2005ty = f3;
        this.durationScale = f4;
    }

    public void addSvgKeyFrame(String str, float f) {
        if (str == null) {
            return;
        }
        try {
            KeyFrame keyFrame = new KeyFrame();
            keyFrame.time = f * this.durationScale;
            String[] strArrSplit = str.split(" ");
            int i = 0;
            while (i < strArrSplit.length) {
                char cCharAt = strArrSplit[i].charAt(0);
                if (cCharAt == 'C') {
                    CurveTo curveTo = new CurveTo();
                    curveTo.f2007x1 = (Float.parseFloat(strArrSplit[i + 1]) + this.f2004tx) * this.scale;
                    curveTo.f2010y1 = (Float.parseFloat(strArrSplit[i + 2]) + this.f2005ty) * this.scale;
                    curveTo.f2008x2 = (Float.parseFloat(strArrSplit[i + 3]) + this.f2004tx) * this.scale;
                    curveTo.f2011y2 = (Float.parseFloat(strArrSplit[i + 4]) + this.f2005ty) * this.scale;
                    curveTo.f2006x = (Float.parseFloat(strArrSplit[i + 5]) + this.f2004tx) * this.scale;
                    i += 6;
                    curveTo.f2009y = (Float.parseFloat(strArrSplit[i]) + this.f2005ty) * this.scale;
                    keyFrame.commands.add(curveTo);
                } else if (cCharAt == 'L') {
                    LineTo lineTo = new LineTo();
                    lineTo.f2012x = (Float.parseFloat(strArrSplit[i + 1]) + this.f2004tx) * this.scale;
                    i += 2;
                    lineTo.f2013y = (Float.parseFloat(strArrSplit[i]) + this.f2005ty) * this.scale;
                    keyFrame.commands.add(lineTo);
                } else if (cCharAt == 'M') {
                    MoveTo moveTo = new MoveTo();
                    moveTo.f2014x = (Float.parseFloat(strArrSplit[i + 1]) + this.f2004tx) * this.scale;
                    i += 2;
                    moveTo.f2015y = (Float.parseFloat(strArrSplit[i]) + this.f2005ty) * this.scale;
                    keyFrame.commands.add(moveTo);
                }
                i++;
            }
            this.keyFrames.add(keyFrame);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void draw(Canvas canvas, Paint paint, float f) {
        float f2;
        if (this.pathTime != f) {
            this.pathTime = f;
            int size = this.keyFrames.size();
            KeyFrame keyFrame = null;
            KeyFrame keyFrame2 = null;
            for (int i = 0; i < size; i++) {
                KeyFrame keyFrame3 = (KeyFrame) this.keyFrames.get(i);
                if ((keyFrame2 == null || keyFrame2.time < keyFrame3.time) && keyFrame3.time <= f) {
                    keyFrame2 = keyFrame3;
                }
                if ((keyFrame == null || keyFrame.time > keyFrame3.time) && keyFrame3.time >= f) {
                    keyFrame = keyFrame3;
                }
            }
            if (keyFrame == keyFrame2) {
                keyFrame2 = null;
            }
            if (keyFrame2 != null && keyFrame == null) {
                keyFrame = keyFrame2;
                keyFrame2 = null;
            }
            if (keyFrame == null) {
                return;
            }
            if (keyFrame2 != null && keyFrame2.commands.size() != keyFrame.commands.size()) {
                return;
            }
            this.path.reset();
            int size2 = keyFrame.commands.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Object obj = keyFrame2 != null ? keyFrame2.commands.get(i2) : null;
                Object obj2 = keyFrame.commands.get(i2);
                if (obj != null && obj.getClass() != obj2.getClass()) {
                    return;
                }
                if (keyFrame2 != null) {
                    float f3 = keyFrame2.time;
                    f2 = (f - f3) / (keyFrame.time - f3);
                } else {
                    f2 = 1.0f;
                }
                if (obj2 instanceof MoveTo) {
                    MoveTo moveTo = (MoveTo) obj2;
                    MoveTo moveTo2 = (MoveTo) obj;
                    if (moveTo2 != null) {
                        Path path = this.path;
                        float f4 = moveTo2.f2014x;
                        float fDpf2 = AndroidUtilities.dpf2(f4 + ((moveTo.f2014x - f4) * f2));
                        float f5 = moveTo2.f2015y;
                        path.moveTo(fDpf2, AndroidUtilities.dpf2(f5 + ((moveTo.f2015y - f5) * f2)));
                    } else {
                        this.path.moveTo(AndroidUtilities.dpf2(moveTo.f2014x), AndroidUtilities.dpf2(moveTo.f2015y));
                    }
                } else if (obj2 instanceof LineTo) {
                    LineTo lineTo = (LineTo) obj2;
                    LineTo lineTo2 = (LineTo) obj;
                    if (lineTo2 != null) {
                        Path path2 = this.path;
                        float f6 = lineTo2.f2012x;
                        float fDpf22 = AndroidUtilities.dpf2(f6 + ((lineTo.f2012x - f6) * f2));
                        float f7 = lineTo2.f2013y;
                        path2.lineTo(fDpf22, AndroidUtilities.dpf2(f7 + ((lineTo.f2013y - f7) * f2)));
                    } else {
                        this.path.lineTo(AndroidUtilities.dpf2(lineTo.f2012x), AndroidUtilities.dpf2(lineTo.f2013y));
                    }
                } else if (obj2 instanceof CurveTo) {
                    CurveTo curveTo = (CurveTo) obj2;
                    CurveTo curveTo2 = (CurveTo) obj;
                    if (curveTo2 != null) {
                        Path path3 = this.path;
                        float f8 = curveTo2.f2007x1;
                        float fDpf23 = AndroidUtilities.dpf2(f8 + ((curveTo.f2007x1 - f8) * f2));
                        float f9 = curveTo2.f2010y1;
                        float fDpf24 = AndroidUtilities.dpf2(f9 + ((curveTo.f2010y1 - f9) * f2));
                        float f10 = curveTo2.f2008x2;
                        float fDpf25 = AndroidUtilities.dpf2(f10 + ((curveTo.f2008x2 - f10) * f2));
                        float f11 = curveTo2.f2011y2;
                        float fDpf26 = AndroidUtilities.dpf2(f11 + ((curveTo.f2011y2 - f11) * f2));
                        float f12 = curveTo2.f2006x;
                        float fDpf27 = AndroidUtilities.dpf2(f12 + ((curveTo.f2006x - f12) * f2));
                        float f13 = curveTo2.f2009y;
                        path3.cubicTo(fDpf23, fDpf24, fDpf25, fDpf26, fDpf27, AndroidUtilities.dpf2(f13 + ((curveTo.f2009y - f13) * f2)));
                    } else {
                        this.path.cubicTo(AndroidUtilities.dpf2(curveTo.f2007x1), AndroidUtilities.dpf2(curveTo.f2010y1), AndroidUtilities.dpf2(curveTo.f2008x2), AndroidUtilities.dpf2(curveTo.f2011y2), AndroidUtilities.dpf2(curveTo.f2006x), AndroidUtilities.dpf2(curveTo.f2009y));
                    }
                }
            }
            this.path.close();
        }
        canvas.drawPath(this.path, paint);
    }
}
