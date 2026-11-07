package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class SmashedAtom extends Atom {
    private Atom at;

    /* JADX INFO: renamed from: d */
    private boolean f962d;

    /* JADX INFO: renamed from: h */
    private boolean f963h;

    public SmashedAtom(Atom atom, String str) {
        this.f963h = true;
        this.f962d = true;
        this.at = atom;
        if ("t".equals(str)) {
            this.f962d = false;
        } else if ("b".equals(str)) {
            this.f963h = false;
        }
    }

    public SmashedAtom(Atom atom) {
        this.f963h = true;
        this.f962d = true;
        this.at = atom;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        Box boxCreateBox = this.at.createBox(teXEnvironment);
        if (this.f963h) {
            boxCreateBox.setHeight(0.0f);
        }
        if (this.f962d) {
            boxCreateBox.setDepth(0.0f);
        }
        return boxCreateBox;
    }
}
