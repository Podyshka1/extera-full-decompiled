package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class HdotsforAtom extends MulticolumnAtom {
    private static final Atom ldotp = SymbolAtom.get("ldotp");
    private static final Atom thin = new SpaceAtom(1);
    private float coeff;

    public HdotsforAtom(int i, float f) {
        super(i, "c", ldotp);
        this.coeff = f;
    }

    @Override // org.scilab.forge.jlatexmath.MulticolumnAtom, org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        StrutBox strutBox = new StrutBox(this.coeff * thin.createBox(teXEnvironment).getWidth(), 0.0f, 0.0f, 0.0f);
        HorizontalBox horizontalBox = new HorizontalBox(strutBox);
        horizontalBox.add(ldotp.createBox(teXEnvironment));
        horizontalBox.add(strutBox);
        if (this.f790w != 0.0f) {
            horizontalBox.getWidth();
            HorizontalBox horizontalBox2 = new HorizontalBox(horizontalBox);
            while (horizontalBox2.getWidth() < this.f790w) {
                horizontalBox2.add(horizontalBox);
            }
            horizontalBox = new HorizontalBox(horizontalBox2, this.f790w, 2);
        }
        horizontalBox.type = 12;
        return horizontalBox;
    }
}
