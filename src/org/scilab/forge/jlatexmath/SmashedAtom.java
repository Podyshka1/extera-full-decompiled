package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class SmashedAtom extends Atom {
    private Atom at;

    /* JADX INFO: renamed from: d */
    private boolean f804d;

    /* JADX INFO: renamed from: h */
    private boolean f805h;

    public SmashedAtom(Atom atom, String str) {
        this.f805h = true;
        this.f804d = true;
        this.at = atom;
        if ("t".equals(str)) {
            this.f804d = false;
        } else if ("b".equals(str)) {
            this.f805h = false;
        }
    }

    public SmashedAtom(Atom atom) {
        this.f805h = true;
        this.f804d = true;
        this.at = atom;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        Box boxCreateBox = this.at.createBox(teXEnvironment);
        if (this.f805h) {
            boxCreateBox.setHeight(0.0f);
        }
        if (this.f804d) {
            boxCreateBox.setDepth(0.0f);
        }
        return boxCreateBox;
    }
}
