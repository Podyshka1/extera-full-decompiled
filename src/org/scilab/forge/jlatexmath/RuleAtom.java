package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class RuleAtom extends Atom {

    /* JADX INFO: renamed from: h */
    private float f801h;
    private int hunit;

    /* JADX INFO: renamed from: r */
    private float f802r;
    private int runit;

    /* JADX INFO: renamed from: w */
    private float f803w;
    private int wunit;

    public RuleAtom(int i, float f, int i2, float f2, int i3, float f3) {
        this.wunit = i;
        this.hunit = i2;
        this.runit = i3;
        this.f803w = f;
        this.f801h = f2;
        this.f802r = f3;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        return new HorizontalRule(this.f801h * SpaceAtom.getFactor(this.hunit, teXEnvironment), this.f803w * SpaceAtom.getFactor(this.wunit, teXEnvironment), this.f802r * SpaceAtom.getFactor(this.runit, teXEnvironment));
    }
}
