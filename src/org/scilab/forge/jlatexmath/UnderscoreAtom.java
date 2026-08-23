package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class UnderscoreAtom extends Atom {

    /* JADX INFO: renamed from: w */
    public static SpaceAtom f807w = new SpaceAtom(0, 0.7f, 0.0f, 0.0f);

    /* JADX INFO: renamed from: s */
    public static SpaceAtom f806s = new SpaceAtom(0, 0.06f, 0.0f, 0.0f);

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        float defaultRuleThickness = teXEnvironment.getTeXFont().getDefaultRuleThickness(teXEnvironment.getStyle());
        HorizontalBox horizontalBox = new HorizontalBox(f806s.createBox(teXEnvironment));
        horizontalBox.add(new HorizontalRule(defaultRuleThickness, f807w.createBox(teXEnvironment).getWidth(), 0.0f));
        return horizontalBox;
    }
}
