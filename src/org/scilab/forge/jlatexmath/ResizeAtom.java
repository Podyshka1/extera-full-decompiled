package org.scilab.forge.jlatexmath;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class ResizeAtom extends Atom {
    private Atom base;

    /* JADX INFO: renamed from: h */
    private float f953h;
    private int hunit;
    private boolean keepaspectratio;

    /* JADX INFO: renamed from: w */
    private float f954w;
    private int wunit;

    public ResizeAtom(Atom atom, String str, String str2, boolean z) {
        this.type = atom.type;
        this.base = atom;
        this.keepaspectratio = z;
        float[] length = SpaceAtom.getLength(str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str);
        float[] length2 = SpaceAtom.getLength(str2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : str2);
        if (length.length != 2) {
            this.wunit = -1;
        } else {
            this.wunit = (int) length[0];
            this.f954w = length[1];
        }
        if (length2.length != 2) {
            this.hunit = -1;
        } else {
            this.hunit = (int) length2[0];
            this.f953h = length2[1];
        }
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
        double factor;
        double d;
        double d2;
        Box boxCreateBox = this.base.createBox(teXEnvironment);
        int i = this.wunit;
        if (i == -1 && this.hunit == -1) {
            return boxCreateBox;
        }
        if (i != -1 && this.hunit != -1) {
            double factor2 = (this.f954w * SpaceAtom.getFactor(i, teXEnvironment)) / boxCreateBox.width;
            double factor3 = (this.f953h * SpaceAtom.getFactor(this.hunit, teXEnvironment)) / boxCreateBox.height;
            if (this.keepaspectratio) {
                factor = Math.min(factor2, factor3);
            } else {
                d = factor3;
                d2 = factor2;
                return new ScaleBox(boxCreateBox, d2, d);
            }
        } else if (i != -1 && this.hunit == -1) {
            factor = (this.f954w * SpaceAtom.getFactor(i, teXEnvironment)) / boxCreateBox.width;
        } else {
            factor = (this.f953h * SpaceAtom.getFactor(this.hunit, teXEnvironment)) / boxCreateBox.height;
        }
        d2 = factor;
        d = d2;
        return new ScaleBox(boxCreateBox, d2, d);
    }
}
