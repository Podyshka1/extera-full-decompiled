package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class SmashedAtom extends Atom {
    private Atom at;

    /* JADX INFO: renamed from: d */
    private boolean f960d;

    /* JADX INFO: renamed from: h */
    private boolean f961h;

    public SmashedAtom(Atom atom, String str) {
        this.f961h = true;
        this.f960d = true;
        this.at = atom;
        if ("t".equals(str)) {
            this.f960d = false;
        } else if ("b".equals(str)) {
            this.f961h = false;
        }
    }

    public SmashedAtom(Atom atom) {
        this.f961h = true;
        this.f960d = true;
        this.at = atom;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        Box boxCreateBox = this.at.createBox(teXEnvironment);
        if (this.f961h) {
            boxCreateBox.setHeight(0.0f);
        }
        if (this.f960d) {
            boxCreateBox.setDepth(0.0f);
        }
        return boxCreateBox;
    }
}
