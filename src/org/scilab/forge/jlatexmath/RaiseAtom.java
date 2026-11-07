package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class RaiseAtom extends Atom {
    private Atom base;

    /* JADX INFO: renamed from: d */
    private float f950d;
    private int dunit;

    /* JADX INFO: renamed from: h */
    private float f951h;
    private int hunit;

    /* JADX INFO: renamed from: r */
    private float f952r;
    private int runit;

    public RaiseAtom(Atom atom, int i, float f, int i2, float f2, int i3, float f3) {
        this.base = atom;
        this.runit = i;
        this.f952r = f;
        this.hunit = i2;
        this.f951h = f2;
        this.dunit = i3;
        this.f950d = f3;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getLeftType() {
        return this.base.getLeftType();
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getRightType() {
        return this.base.getRightType();
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        Box boxCreateBox = this.base.createBox(teXEnvironment);
        int i = this.runit;
        if (i == -1) {
            boxCreateBox.setShift(0.0f);
        } else {
            boxCreateBox.setShift((-this.f952r) * SpaceAtom.getFactor(i, teXEnvironment));
        }
        if (this.hunit == -1) {
            return boxCreateBox;
        }
        HorizontalBox horizontalBox = new HorizontalBox(boxCreateBox);
        horizontalBox.setHeight(this.f951h * SpaceAtom.getFactor(this.hunit, teXEnvironment));
        int i2 = this.dunit;
        if (i2 == -1) {
            horizontalBox.setDepth(0.0f);
            return horizontalBox;
        }
        horizontalBox.setDepth(this.f950d * SpaceAtom.getFactor(i2, teXEnvironment));
        return horizontalBox;
    }
}
