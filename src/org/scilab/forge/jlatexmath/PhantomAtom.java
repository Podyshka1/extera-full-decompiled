package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class PhantomAtom extends Atom implements Row {

    /* JADX INFO: renamed from: d */
    private boolean f791d;
    private RowAtom elements;

    /* JADX INFO: renamed from: h */
    private boolean f792h;

    /* JADX INFO: renamed from: w */
    private boolean f793w;

    public PhantomAtom(Atom atom) {
        this.f793w = true;
        this.f792h = true;
        this.f791d = true;
        if (atom == null) {
            this.elements = new RowAtom();
        } else {
            this.elements = new RowAtom(atom);
        }
    }

    public PhantomAtom(Atom atom, boolean z, boolean z2, boolean z3) {
        this(atom);
        this.f793w = z;
        this.f792h = z2;
        this.f791d = z3;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        Box boxCreateBox = this.elements.createBox(teXEnvironment);
        return new StrutBox(this.f793w ? boxCreateBox.getWidth() : 0.0f, this.f792h ? boxCreateBox.getHeight() : 0.0f, this.f791d ? boxCreateBox.getDepth() : 0.0f, boxCreateBox.getShift());
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
