package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class PhantomAtom extends Atom implements Row {

    /* JADX INFO: renamed from: d */
    private boolean f947d;
    private RowAtom elements;

    /* JADX INFO: renamed from: h */
    private boolean f948h;

    /* JADX INFO: renamed from: w */
    private boolean f949w;

    public PhantomAtom(Atom atom) {
        this.f949w = true;
        this.f948h = true;
        this.f947d = true;
        if (atom == null) {
            this.elements = new RowAtom();
        } else {
            this.elements = new RowAtom(atom);
        }
    }

    public PhantomAtom(Atom atom, boolean z, boolean z2, boolean z3) {
        this(atom);
        this.f949w = z;
        this.f948h = z2;
        this.f947d = z3;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        Box boxCreateBox = this.elements.createBox(teXEnvironment);
        return new StrutBox(this.f949w ? boxCreateBox.getWidth() : 0.0f, this.f948h ? boxCreateBox.getHeight() : 0.0f, this.f947d ? boxCreateBox.getDepth() : 0.0f, boxCreateBox.getShift());
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getLeftType() {
        return this.elements.getLeftType();
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public int getRightType() {
        return this.elements.getRightType();
    }

    @Override // org.scilab.forge.jlatexmath.Row
    public void setPreviousAtom(Dummy dummy) {
        this.elements.setPreviousAtom(dummy);
    }
}
