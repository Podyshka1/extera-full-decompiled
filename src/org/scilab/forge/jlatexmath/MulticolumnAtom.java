package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class MulticolumnAtom extends Atom {
    protected int afterVlines;
    protected int align;
    protected int beforeVlines;
    protected int col;
    protected Atom cols;

    /* JADX INFO: renamed from: n */
    protected int f945n;
    protected int row;

    /* JADX INFO: renamed from: w */
    protected float f946w = 0.0f;

    public MulticolumnAtom(int i, String str, Atom atom) {
        this.f945n = i < 1 ? 1 : i;
        this.cols = atom;
        this.align = parseAlign(str);
    }

    public void setWidth(float f) {
        this.f946w = f;
    }

    public int getSkipped() {
        return this.f945n;
    }

    public boolean hasRightVline() {
        return this.afterVlines != 0;
    }

    public void setRowColumn(int i, int i2) {
        this.row = i;
        this.col = i2;
    }

    public int getRow() {
        return this.row;
    }

    public int getCol() {
        return this.col;
    }

    private int parseAlign(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 2;
        boolean z = true;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 'c') {
                z = false;
                i2 = 2;
            } else if (cCharAt == 'l') {
                i2 = 0;
                z = false;
            } else if (cCharAt == 'r') {
                z = false;
                i2 = 1;
            } else if (cCharAt == '|') {
                if (z) {
                    this.beforeVlines = 1;
                } else {
                    this.afterVlines = 1;
                }
                while (true) {
                    int i3 = i + 1;
                    if (i3 >= length) {
                        i = i3;
                        break;
                    }
                    if (str.charAt(i3) != '|') {
                        break;
                    }
                    if (z) {
                        this.beforeVlines++;
                    } else {
                        this.afterVlines++;
                    }
                    i = i3;
                }
            }
            i++;
        }
        return i2;
    }

    @Override // org.scilab.forge.jlatexmath.Atom
    public Box createBox(TeXEnvironment teXEnvironment) {
        Box horizontalBox;
        if (this.f946w == 0.0f) {
            horizontalBox = this.cols.createBox(teXEnvironment);
        } else {
            horizontalBox = new HorizontalBox(this.cols.createBox(teXEnvironment), this.f946w, this.align);
        }
        horizontalBox.type = 12;
        return horizontalBox;
    }
}
