package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class TypedAtom extends Atom {
    private final Atom atom;
    private final int leftType;
    private final int rightType;

    public TypedAtom(int i, int i2, Atom atom) {
        this.leftType = i;
        this.rightType = i2;
        this.atom = atom;
        this.type_limits = atom.type_limits;
    }

    public Atom getBase() {
        Atom atom = this.atom;
        atom.type_limits = this.type_limits;
        return atom;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        return this.atom.createBox(teXEnvironment);
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getLeftType() {
        return this.leftType;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getRightType() {
        return this.rightType;
    }
}
