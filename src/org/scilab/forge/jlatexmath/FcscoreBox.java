package org.scilab.forge.jlatexmath;

import ru.noties.jlatexmath.awt.BasicStroke;
import ru.noties.jlatexmath.awt.Graphics2D;
import ru.noties.jlatexmath.awt.Stroke;
import ru.noties.jlatexmath.awt.geom.AffineTransform;
import ru.noties.jlatexmath.awt.geom.Line2D;

/* JADX INFO: loaded from: classes5.dex */
public class FcscoreBox extends Box {

    /* JADX INFO: renamed from: N */
    private int f939N;
    private float space;
    private boolean strike;
    private float thickness;

    @Override // org.scilab.forge.jlatexmath.Box
    public int getLastFontId() {
        return -1;
    }

    public FcscoreBox(int i, float f, float f2, float f3, boolean z) {
        if (i < 0) {
            i = 0;
        } else if (i > 4096) {
            i = 4096;
        }
        this.f939N = i;
        this.width = (i * (f2 + f3)) + (2.0f * f3);
        this.height = f;
        this.depth = 0.0f;
        this.strike = z;
        this.space = f3;
        this.thickness = f2;
    }

    @Override // org.scilab.forge.jlatexmath.Box
    public void draw(Graphics2D graphics2D, float f, float f2) {
        AffineTransform transform = graphics2D.getTransform();
        Stroke stroke = graphics2D.getStroke();
        double scaleX = transform.getScaleX();
        double scaleY = transform.getScaleY();
        if (scaleX == scaleY) {
            AffineTransform affineTransformClone = transform.clone();
            affineTransformClone.scale(1.0d / scaleX, 1.0d / scaleY);
            graphics2D.setTransform(affineTransformClone);
        } else {
            scaleX = 1.0d;
        }
        int i = 0;
        graphics2D.setStroke(new BasicStroke((float) (((double) this.thickness) * scaleX), 0, 0));
        float f3 = 2.0f;
        float f4 = this.thickness / 2.0f;
        Line2D.Float r10 = new Line2D.Float();
        float f5 = this.space;
        float f6 = (float) ((((double) (f + f5)) * scaleX) + (((double) (f5 / 2.0f)) * scaleX));
        int iRound = (int) Math.round(((double) (f5 + this.thickness)) * scaleX);
        while (i < this.f939N) {
            double d = ((double) f6) + (((double) f4) * scaleX);
            double d2 = scaleX;
            int i2 = iRound;
            r10.setLine(d, ((double) (f2 - this.height)) * scaleX, d, ((double) f2) * d2);
            graphics2D.draw(r10);
            f6 += i2;
            i++;
            iRound = i2;
            f3 = f3;
            scaleX = d2;
        }
        double d3 = scaleX;
        float f7 = f3;
        float f8 = f6;
        if (this.strike) {
            float f9 = this.space;
            float f10 = this.height;
            r10.setLine(((double) (f + f9)) * d3, ((double) (f2 - (f10 / f7))) * d3, ((double) f8) - ((((double) f9) * d3) / 2.0d), ((double) (f2 - (f10 / f7))) * d3);
            graphics2D.draw(r10);
        }
        graphics2D.setTransform(transform);
        graphics2D.setStroke(stroke);
    }
}
