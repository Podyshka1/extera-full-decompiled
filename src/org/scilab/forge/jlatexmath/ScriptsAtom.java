package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class ScriptsAtom extends Atom {
    private static final SpaceAtom SCRIPT_SPACE = new SpaceAtom(3, 0.5f, 0.0f, 0.0f);
    private int align;
    private final Atom base;
    private final Atom subscript;
    private final Atom superscript;

    public ScriptsAtom(Atom atom, Atom atom2, Atom atom3) {
        this.align = 0;
        this.base = atom;
        this.subscript = atom2;
        this.superscript = atom3;
    }

    public ScriptsAtom(Atom atom, Atom atom2, Atom atom3, boolean z) {
        this(atom, atom2, atom3);
        if (z) {
            return;
        }
        this.align = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0196  */
    @Override // org.scilab.forge.jlatexmath.Atom
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Box createBox(TeXEnvironment teXEnvironment) {
        float height;
        float depth;
        float subDrop;
        float f;
        HorizontalBox horizontalBox;
        Box box;
        float f2;
        float depth2;
        Atom atom;
        float sup2;
        Atom atom2 = this.base;
        Box strutBox = atom2 == null ? new StrutBox(0.0f, 0.0f, 0.0f, 0.0f) : atom2.createBox(teXEnvironment);
        StrutBox strutBox2 = new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
        if (this.subscript == null && this.superscript == null) {
            return strutBox;
        }
        TeXFont teXFont = teXEnvironment.getTeXFont();
        int style = teXEnvironment.getStyle();
        Atom atom3 = this.base;
        int i = atom3.type_limits;
        if (i == 2 || (i == 0 && style == 0)) {
            return new UnderOverAtom(new UnderOverAtom(atom3, this.subscript, 3, 0.3f, true, false), this.superscript, 3, 3.0f, true, true).createBox(teXEnvironment);
        }
        HorizontalBox horizontalBox2 = new HorizontalBox(strutBox);
        int lastFontId = strutBox.getLastFontId();
        if (lastFontId == -1) {
            lastFontId = teXFont.getMuFontId();
        }
        TeXEnvironment teXEnvironmentSubStyle = teXEnvironment.subStyle();
        TeXEnvironment teXEnvironmentSupStyle = teXEnvironment.supStyle();
        Atom atom4 = this.base;
        if (atom4 instanceof AccentedAtom) {
            Box boxCreateBox = ((AccentedAtom) atom4).base.createBox(teXEnvironment.crampStyle());
            height = boxCreateBox.getHeight() - teXFont.getSupDrop(teXEnvironmentSupStyle.getStyle());
            depth = boxCreateBox.getDepth();
            subDrop = teXFont.getSubDrop(teXEnvironmentSubStyle.getStyle());
        } else {
            if ((atom4 instanceof SymbolAtom) && atom4.type == 1) {
                Char nextLarger = teXFont.getChar(((SymbolAtom) atom4).getName(), style);
                if (style < 2 && teXFont.hasNextLarger(nextLarger)) {
                    nextLarger = teXFont.getNextLarger(nextLarger, style);
                }
                CharBox charBox = new CharBox(nextLarger);
                charBox.setShift(((-(charBox.getHeight() + charBox.getDepth())) / 2.0f) - teXEnvironment.getTeXFont().getAxisHeight(teXEnvironment.getStyle()));
                HorizontalBox horizontalBox3 = new HorizontalBox(charBox);
                float italic = nextLarger.getItalic();
                Box boxCreateBox2 = new SpaceAtom(2).createBox(teXEnvironment);
                if (italic > 1.0E-7f && this.subscript == null) {
                    horizontalBox3.add(new StrutBox(italic, 0.0f, 0.0f, 0.0f));
                }
                float height2 = horizontalBox3.getHeight() - teXFont.getSupDrop(teXEnvironmentSupStyle.getStyle());
                f2 = italic;
                depth2 = horizontalBox3.getDepth() + teXFont.getSubDrop(teXEnvironmentSubStyle.getStyle());
                f = height2;
                horizontalBox = horizontalBox3;
                box = boxCreateBox2;
            } else if (atom4 instanceof CharSymbol) {
                CharFont charFont = ((CharSymbol) atom4).getCharFont(teXFont);
                float italic2 = (((CharSymbol) this.base).isMarkedAsTextSymbol() && teXFont.hasSpace(charFont.fontId)) ? 0.0f : teXFont.getChar(charFont, style).getItalic();
                if (italic2 > 1.0E-7f && this.subscript == null) {
                    horizontalBox2.add(new StrutBox(italic2, 0.0f, 0.0f, 0.0f));
                    italic2 = 0.0f;
                }
                f = 0.0f;
                horizontalBox = horizontalBox2;
                box = strutBox2;
                f2 = italic2;
                depth2 = 0.0f;
            } else {
                height = strutBox.getHeight() - teXFont.getSupDrop(teXEnvironmentSupStyle.getStyle());
                depth = strutBox.getDepth();
                subDrop = teXFont.getSubDrop(teXEnvironmentSubStyle.getStyle());
            }
            atom = this.superscript;
            if (atom != null) {
                Box boxCreateBox3 = this.subscript.createBox(teXEnvironmentSubStyle);
                boxCreateBox3.setShift(Math.max(Math.max(depth2, teXFont.getSub1(style)), boxCreateBox3.getHeight() - ((Math.abs(teXFont.getXHeight(style, lastFontId)) * 4.0f) / 5.0f)));
                horizontalBox.add(boxCreateBox3);
                horizontalBox.add(box);
                return horizontalBox;
            }
            Box boxCreateBox4 = atom.createBox(teXEnvironmentSupStyle);
            float width = boxCreateBox4.getWidth();
            Atom atom5 = this.subscript;
            if (atom5 != null && this.align == 1) {
                width = Math.max(width, atom5.createBox(teXEnvironmentSubStyle).getWidth());
            }
            HorizontalBox horizontalBox4 = new HorizontalBox(boxCreateBox4, width, this.align);
            SpaceAtom spaceAtom = SCRIPT_SPACE;
            horizontalBox4.add(spaceAtom.createBox(teXEnvironment));
            if (style == 0) {
                sup2 = teXFont.getSup1(style);
            } else if (teXEnvironment.crampStyle().getStyle() == style) {
                sup2 = teXFont.getSup3(style);
            } else {
                sup2 = teXFont.getSup2(style);
            }
            float fMax = Math.max(Math.max(f, sup2), boxCreateBox4.getDepth() + (Math.abs(teXFont.getXHeight(style, lastFontId)) / 4.0f));
            Atom atom6 = this.subscript;
            if (atom6 == null) {
                horizontalBox4.setShift(-fMax);
                horizontalBox.add(horizontalBox4);
            } else {
                Box boxCreateBox5 = atom6.createBox(teXEnvironmentSubStyle);
                HorizontalBox horizontalBox5 = new HorizontalBox(boxCreateBox5, width, this.align);
                horizontalBox5.add(spaceAtom.createBox(teXEnvironment));
                float fMax2 = Math.max(depth2, teXFont.getSub2(style));
                float defaultRuleThickness = teXFont.getDefaultRuleThickness(style);
                float depth3 = ((fMax - boxCreateBox4.getDepth()) + fMax2) - boxCreateBox5.getHeight();
                float f3 = defaultRuleThickness * 4.0f;
                if (depth3 < f3) {
                    fMax += f3 - depth3;
                    float fAbs = ((Math.abs(teXFont.getXHeight(style, lastFontId)) * 4.0f) / 5.0f) - (fMax - boxCreateBox4.getDepth());
                    if (fAbs > 0.0f) {
                        fMax += fAbs;
                        fMax2 -= fAbs;
                    }
                }
                VerticalBox verticalBox = new VerticalBox();
                horizontalBox4.setShift(f2);
                verticalBox.add(horizontalBox4);
                verticalBox.add(new StrutBox(0.0f, ((fMax - boxCreateBox4.getDepth()) + fMax2) - boxCreateBox5.getHeight(), 0.0f, 0.0f));
                verticalBox.add(horizontalBox5);
                verticalBox.setHeight(fMax + boxCreateBox4.getHeight());
                verticalBox.setDepth(fMax2 + boxCreateBox5.getDepth());
                horizontalBox.add(verticalBox);
            }
            horizontalBox.add(box);
            return horizontalBox;
        }
        depth2 = depth + subDrop;
        f = height;
        horizontalBox = horizontalBox2;
        box = strutBox2;
        f2 = 0.0f;
        atom = this.superscript;
        if (atom != null) {
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
}
