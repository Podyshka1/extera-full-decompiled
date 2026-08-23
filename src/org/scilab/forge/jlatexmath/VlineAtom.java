package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class VlineAtom extends Atom {
    private float height;

    /* JADX INFO: renamed from: n */
    private int f808n;
    private float shift;

    public VlineAtom(int i) {
        this.f808n = i;
    }

    public void setHeight(float f) {
        this.height = f;
    }

    public void setShift(float f) {
        this.shift = f;
    }

    public float getWidth(TeXEnvironment teXEnvironment) {
        if (this.f808n != 0) {
            return teXEnvironment.getTeXFont().getDefaultRuleThickness(teXEnvironment.getStyle()) * ((this.f808n * 3) - 2);
        }
        return 0.0f;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        int i;
        if (this.f808n != 0) {
            float defaultRuleThickness = teXEnvironment.getTeXFont().getDefaultRuleThickness(teXEnvironment.getStyle());
            HorizontalRule horizontalRule = new HorizontalRule(this.height, defaultRuleThickness, this.shift);
            StrutBox strutBox = new StrutBox(defaultRuleThickness * 2.0f, 0.0f, 0.0f, 0.0f);
            HorizontalBox horizontalBox = new HorizontalBox();
            int i2 = 0;
            while (true) {
                i = this.f808n;
                if (i2 >= i - 1) {
                    break;
                }
                horizontalBox.add(horizontalRule);
                horizontalBox.add(strutBox);
                i2++;
            }
            if (i > 0) {
                horizontalBox.add(horizontalRule);
            }
            return horizontalBox;
        }
        return new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
    }
}
