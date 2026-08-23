package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class ItAtom extends Atom {
    private Atom base;

    public ItAtom(Atom atom) {
        this.base = atom;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        if (this.base != null) {
            TeXEnvironment teXEnvironmentCopy = teXEnvironment.copy(teXEnvironment.getTeXFont().copy());
            teXEnvironmentCopy.getTeXFont().setIt(true);
            return this.base.createBox(teXEnvironmentCopy);
        }
        return new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
    }
}
