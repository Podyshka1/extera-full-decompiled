package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class FcscoreAtom extends Atom {

    /* JADX INFO: renamed from: N */
    private int f936N;

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getLeftType() {
        return 0;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getRightType() {
        return 0;
    }

    public FcscoreAtom(int i) {
        this.f936N = i;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        float factor = SpaceAtom.getFactor(5, teXEnvironment) * 12.0f;
        int i = this.f936N;
        return new FcscoreBox(i == 5 ? 4 : i, 1.0f * factor, 0.07f * factor, 0.125f * factor, i == 5);
    }
}
