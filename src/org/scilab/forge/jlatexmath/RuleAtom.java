package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class RuleAtom extends Atom {
    private static final float MAX_LENGTH = 4096.0f;

    /* JADX INFO: renamed from: h */
    private float f959h;
    private int hunit;

    /* JADX INFO: renamed from: r */
    private float f960r;
    private int runit;

    /* JADX INFO: renamed from: w */
    private float f961w;
    private int wunit;

    public RuleAtom(int i, float f, int i2, float f2, int i3, float f3) {
        this.wunit = i;
        this.hunit = i2;
        this.runit = i3;
        this.f961w = f;
        this.f959h = f2;
        this.f960r = f3;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        float factor = this.f961w * SpaceAtom.getFactor(this.wunit, teXEnvironment);
        float factor2 = this.f959h * SpaceAtom.getFactor(this.hunit, teXEnvironment);
        float factor3 = this.f960r * SpaceAtom.getFactor(this.runit, teXEnvironment);
        if (!Float.isFinite(factor) || factor > MAX_LENGTH) {
            factor = 4096.0f;
        }
        if (!Float.isFinite(factor2) || factor2 > MAX_LENGTH) {
            factor2 = 4096.0f;
        }
        return new HorizontalRule(factor2, factor, factor3);
    }
}
