package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class ScriptsAtom extends Atom {
    private static final int MAX_WRAP_DEPTH = 64;
    private static final SpaceAtom SCRIPT_SPACE = new SpaceAtom(3, 0.5f, 0.0f, 0.0f);
    private static int boxWrapDepth;
    private int align;
    private final Atom base;
    private final Atom subscript;
    private final Atom superscript;
    private final int wrapDepth;

    public ScriptsAtom(Atom atom, Atom atom2, Atom atom3) {
        this.align = 0;
        this.base = atom;
        this.subscript = atom2;
        this.superscript = atom3;
        int i = atom instanceof ScriptsAtom ? 1 + ((ScriptsAtom) atom).wrapDepth : 1;
        this.wrapDepth = i;
        if (i > 64) {
            throw new DepthLimitExceededException();
        }
    }

    public ScriptsAtom(Atom atom, Atom atom2, Atom atom3, boolean z) {
        this(atom, atom2, atom3);
        if (z) {
            return;
        }
        this.align = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0180 A[Catch: all -> 0x001a, TRY_LEAVE, TryCatch #0 {all -> 0x001a, blocks: (B:5:0x000f, B:7:0x0014, B:11:0x0023, B:13:0x002c, B:17:0x0036, B:22:0x004d, B:24:0x0059, B:25:0x005d, B:27:0x006b, B:28:0x0090, B:60:0x0178, B:62:0x0180, B:66:0x01b1, B:68:0x01bf, B:70:0x01c5, B:72:0x01d4, B:29:0x0097, B:31:0x009e, B:33:0x00a2, B:35:0x00ae, B:37:0x00b4, B:38:0x00b8, B:40:0x00f0, B:42:0x00f4, B:43:0x00fc, B:44:0x011f, B:46:0x0123, B:48:0x0133, B:55:0x014a, B:57:0x014e, B:52:0x013e, B:59:0x015d, B:10:0x001f), top: B:101:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01b1 A[Catch: all -> 0x001a, TRY_ENTER, TryCatch #0 {all -> 0x001a, blocks: (B:5:0x000f, B:7:0x0014, B:11:0x0023, B:13:0x002c, B:17:0x0036, B:22:0x004d, B:24:0x0059, B:25:0x005d, B:27:0x006b, B:28:0x0090, B:60:0x0178, B:62:0x0180, B:66:0x01b1, B:68:0x01bf, B:70:0x01c5, B:72:0x01d4, B:29:0x0097, B:31:0x009e, B:33:0x00a2, B:35:0x00ae, B:37:0x00b4, B:38:0x00b8, B:40:0x00f0, B:42:0x00f4, B:43:0x00fc, B:44:0x011f, B:46:0x0123, B:48:0x0133, B:55:0x014a, B:57:0x014e, B:52:0x013e, B:59:0x015d, B:10:0x001f), top: B:101:0x000f }] */
    @Override // org.scilab.forge.jlatexmath.Atom
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Box createBox(TeXEnvironment teXEnvironment) throws Throwable {
        float height;
        float depth;
        float subDrop;
        float f;
        HorizontalBox horizontalBox;
        Box box;
        float f2;
        float depth2;
        Atom atom;
        float f3;
        int i;
        int i2 = boxWrapDepth;
        int i3 = i2 + 1;
        boxWrapDepth = i3;
        if (i3 > 64) {
            boxWrapDepth = i2;
            throw new DepthLimitExceededException();
        }
        try {
            Atom atom2 = this.base;
            Box strutBox = atom2 == null ? new StrutBox(0.0f, 0.0f, 0.0f, 0.0f) : atom2.createBox(teXEnvironment);
            StrutBox strutBox2 = new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
            if (this.subscript == null && this.superscript == null) {
                boxWrapDepth--;
                return strutBox;
            }
            TeXFont teXFont = teXEnvironment.getTeXFont();
            int style = teXEnvironment.getStyle();
            Atom atom3 = this.base;
            int i4 = atom3.type_limits;
            try {
                if (i4 == 2 || (i4 == 0 && style == 0)) {
                    boxWrapDepth--;
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
                if (!(atom4 instanceof AccentedAtom)) {
                    if ((atom4 instanceof SymbolAtom) && atom4.type == 1) {
                        Char nextLarger = teXFont.getChar(((SymbolAtom) atom4).getName(), style);
                        if (style < 2 && teXFont.hasNextLarger(nextLarger)) {
                            nextLarger = teXFont.getNextLarger(nextLarger, style);
                        }
                        CharBox charBox = new CharBox(nextLarger);
                        charBox.setShift(((-(charBox.getHeight() + charBox.getDepth())) / 2.0f) - teXEnvironment.getTeXFont().getAxisHeight(teXEnvironment.getStyle()));
                        HorizontalBox horizontalBox3 = new HorizontalBox(charBox);
                        float italic = nextLarger.getItalic();
                        Box boxCreateBox = new SpaceAtom(2).createBox(teXEnvironment);
                        if (italic > 1.0E-7f && this.subscript == null) {
                            horizontalBox3.add(new StrutBox(italic, 0.0f, 0.0f, 0.0f));
                        }
                        float height2 = horizontalBox3.getHeight() - teXFont.getSupDrop(teXEnvironmentSupStyle.getStyle());
                        f2 = italic;
                        depth2 = horizontalBox3.getDepth() + teXFont.getSubDrop(teXEnvironmentSubStyle.getStyle());
                        f = height2;
                        horizontalBox = horizontalBox3;
                        box = boxCreateBox;
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
                        Box boxCreateBox2 = this.subscript.createBox(teXEnvironmentSubStyle);
                        boxCreateBox2.setShift(Math.max(Math.max(depth2, teXFont.getSub1(style)), boxCreateBox2.getHeight() - ((Math.abs(teXFont.getXHeight(style, lastFontId)) * 4.0f) / 5.0f)));
                        horizontalBox.add(boxCreateBox2);
                        horizontalBox.add(box);
                        i = boxWrapDepth - 1;
                    } else {
                        Box boxCreateBox3 = atom.createBox(teXEnvironmentSupStyle);
                        float width = boxCreateBox3.getWidth();
                        Atom atom5 = this.subscript;
                        if (atom5 != null) {
                            f3 = 0.0f;
                            if (this.align == 1) {
                                width = Math.max(width, atom5.createBox(teXEnvironmentSubStyle).getWidth());
                            }
                        } else {
                            f3 = 0.0f;
                        }
                        HorizontalBox horizontalBox4 = new HorizontalBox(boxCreateBox3, width, this.align);
                        SpaceAtom spaceAtom = SCRIPT_SPACE;
                        horizontalBox4.add(spaceAtom.createBox(teXEnvironment));
                        float fMax = Math.max(Math.max(f, style == 0 ? teXFont.getSup1(style) : teXEnvironment.crampStyle().getStyle() == style ? teXFont.getSup3(style) : teXFont.getSup2(style)), boxCreateBox3.getDepth() + (Math.abs(teXFont.getXHeight(style, lastFontId)) / 4.0f));
                        Atom atom6 = this.subscript;
                        if (atom6 == null) {
                            horizontalBox4.setShift(-fMax);
                            horizontalBox.add(horizontalBox4);
                        } else {
                            Box boxCreateBox4 = atom6.createBox(teXEnvironmentSubStyle);
                            HorizontalBox horizontalBox5 = new HorizontalBox(boxCreateBox4, width, this.align);
                            horizontalBox5.add(spaceAtom.createBox(teXEnvironment));
                            float fMax2 = Math.max(depth2, teXFont.getSub2(style));
                            float defaultRuleThickness = teXFont.getDefaultRuleThickness(style);
                            float depth3 = ((fMax - boxCreateBox3.getDepth()) + fMax2) - boxCreateBox4.getHeight();
                            float f4 = defaultRuleThickness * 4.0f;
                            if (depth3 < f4) {
                                fMax += f4 - depth3;
                                float fAbs = ((Math.abs(teXFont.getXHeight(style, lastFontId)) * 4.0f) / 5.0f) - (fMax - boxCreateBox3.getDepth());
                                if (fAbs > f3) {
                                    fMax += fAbs;
                                    fMax2 -= fAbs;
                                }
                            }
                            VerticalBox verticalBox = new VerticalBox();
                            horizontalBox4.setShift(f2);
                            verticalBox.add(horizontalBox4);
                            float f5 = f3;
                            verticalBox.add(new StrutBox(f5, ((fMax - boxCreateBox3.getDepth()) + fMax2) - boxCreateBox4.getHeight(), f5, f5));
                            verticalBox.add(horizontalBox5);
                            verticalBox.setHeight(fMax + boxCreateBox3.getHeight());
                            verticalBox.setDepth(fMax2 + boxCreateBox4.getDepth());
                            horizontalBox.add(verticalBox);
                        }
                        horizontalBox.add(box);
                        i = boxWrapDepth - 1;
                    }
                    boxWrapDepth = i;
                    return horizontalBox;
                }
                Box boxCreateBox5 = ((AccentedAtom) atom4).base.createBox(teXEnvironment.crampStyle());
                height = boxCreateBox5.getHeight() - teXFont.getSupDrop(teXEnvironmentSupStyle.getStyle());
                depth = boxCreateBox5.getDepth();
                subDrop = teXFont.getSubDrop(teXEnvironmentSubStyle.getStyle());
                depth2 = depth + subDrop;
                f = height;
                horizontalBox = horizontalBox2;
                box = strutBox2;
                f2 = 0.0f;
                atom = this.superscript;
                if (atom != null) {
                }
                boxWrapDepth = i;
                return horizontalBox;
            } catch (Throwable th) {
                th = th;
                boxWrapDepth--;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
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
