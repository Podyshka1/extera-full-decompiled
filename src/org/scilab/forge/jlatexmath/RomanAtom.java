package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class RomanAtom extends Atom {
    protected Atom base;

    public RomanAtom(Atom atom) {
        this.base = atom;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        if (this.base != null) {
            TeXEnvironment teXEnvironmentCopy = teXEnvironment.copy(teXEnvironment.getTeXFont().copy());
            teXEnvironmentCopy.getTeXFont().setRoman(true);
            return this.base.createBox(teXEnvironmentCopy);
        }
        return new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
    }
}
