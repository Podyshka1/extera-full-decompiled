package org.scilab.forge.jlatexmath;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MatrixAtom extends Atom {
    public static final int ALIGN = 2;
    public static final int ALIGNAT = 3;
    public static final int ALIGNED = 6;
    public static final int ALIGNEDAT = 7;
    public static final int ARRAY = 0;
    public static final int FLALIGN = 4;
    public static final int MATRIX = 1;
    public static final int SMALLMATRIX = 5;
    private boolean isPartial;
    private ArrayOfAtoms matrix;
    private int[] position;
    private boolean spaceAround;
    private int type;
    private Map<Integer, VlineAtom> vlines;
    public static SpaceAtom hsep = new SpaceAtom(0, 1.0f, 0.0f, 0.0f);
    public static SpaceAtom semihsep = new SpaceAtom(0, 0.5f, 0.0f, 0.0f);
    public static SpaceAtom vsep_in = new SpaceAtom(1, 0.0f, 1.0f, 0.0f);
    public static SpaceAtom vsep_ext_top = new SpaceAtom(1, 0.0f, 0.4f, 0.0f);
    public static SpaceAtom vsep_ext_bot = new SpaceAtom(1, 0.0f, 0.4f, 0.0f);
    private static final Box nullBox = new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
    private static SpaceAtom align = new SpaceAtom(2);

    public MatrixAtom(boolean z, ArrayOfAtoms arrayOfAtoms, String str, boolean z2) {
        this.vlines = new HashMap();
        this.isPartial = z;
        this.matrix = arrayOfAtoms;
        this.type = 0;
        this.spaceAround = z2;
        parsePositions(new StringBuffer(str));
    }

    public MatrixAtom(boolean z, ArrayOfAtoms arrayOfAtoms, String str) {
        this(z, arrayOfAtoms, str, false);
    }

    public MatrixAtom(ArrayOfAtoms arrayOfAtoms, String str) {
        this(false, arrayOfAtoms, str);
    }

    public MatrixAtom(boolean z, ArrayOfAtoms arrayOfAtoms, int i) {
        this(z, arrayOfAtoms, i, false);
    }

    public MatrixAtom(boolean z, ArrayOfAtoms arrayOfAtoms, int i, boolean z2) {
        this.vlines = new HashMap();
        this.isPartial = z;
        this.matrix = arrayOfAtoms;
        this.type = i;
        this.spaceAround = z2;
        if (i != 1 && i != 5) {
            this.position = new int[arrayOfAtoms.col];
            int i2 = 0;
            while (true) {
                int i3 = this.matrix.col;
                if (i2 >= i3) {
                    return;
                }
                int[] iArr = this.position;
                iArr[i2] = 1;
                int i4 = i2 + 1;
                if (i4 < i3) {
                    iArr[i4] = 0;
                }
                i2 += 2;
            }
        } else {
            this.position = new int[arrayOfAtoms.col];
            for (int i5 = 0; i5 < this.matrix.col; i5++) {
                this.position[i5] = 2;
            }
        }
    }

    public MatrixAtom(boolean z, ArrayOfAtoms arrayOfAtoms, int i, int i2) {
        this(z, arrayOfAtoms, i, i2, true);
    }

    public MatrixAtom(boolean z, ArrayOfAtoms arrayOfAtoms, int i, int i2, boolean z2) {
        this.vlines = new HashMap();
        this.isPartial = z;
        this.matrix = arrayOfAtoms;
        this.type = i;
        this.spaceAround = z2;
        this.position = new int[arrayOfAtoms.col];
        for (int i3 = 0; i3 < this.matrix.col; i3++) {
            this.position[i3] = i2;
        }
    }

    public MatrixAtom(ArrayOfAtoms arrayOfAtoms, int i) {
        this(false, arrayOfAtoms, i);
    }

    private void parsePositions(StringBuffer stringBuffer) {
        int pos;
        int length = stringBuffer.length();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            i2++;
            if (i2 > 100000 || length > 10000) {
                Box$$ExternalSyntheticBUOutline0.m1027m("Column specification is too complex");
                return;
            }
            char cCharAt = stringBuffer.charAt(i);
            if (cCharAt != '\t' && cCharAt != ' ') {
                if (cCharAt == '*') {
                    int i3 = i + 1;
                    TeXParser teXParser = new TeXParser(this.isPartial, stringBuffer.substring(i3), new TeXFormula(), false);
                    String[] optsArgs = teXParser.getOptsArgs(2, 0);
                    pos = i3 + teXParser.getPos();
                    int i4 = Integer.parseInt(optsArgs[1]);
                    if (i4 < 0 || i4 > 4096) {
                        i4 = 4096;
                    }
                    StringBuilder sb = new StringBuilder(optsArgs[2].length() * i4);
                    for (int i5 = 0; i5 < i4; i5++) {
                        sb.append(optsArgs[2]);
                    }
                    stringBuffer.insert(pos, sb.toString());
                    length = stringBuffer.length();
                } else if (cCharAt == '@') {
                    int i6 = i + 1;
                    TeXParser teXParser2 = new TeXParser(this.isPartial, stringBuffer.substring(i6), new TeXFormula(), false);
                    Atom argument = teXParser2.getArgument();
                    this.matrix.col++;
                    int i7 = 0;
                    while (true) {
                        ArrayOfAtoms arrayOfAtoms = this.matrix;
                        if (i7 >= arrayOfAtoms.row) {
                            break;
                        }
                        arrayOfAtoms.array.get(i7).add(arrayList.size(), argument);
                        i7++;
                    }
                    arrayList.add(5);
                    pos = i6 + teXParser2.getPos();
                } else if (cCharAt == 'c') {
                    arrayList.add(2);
                } else if (cCharAt == 'l') {
                    arrayList.add(0);
                } else if (cCharAt == 'r') {
                    arrayList.add(1);
                } else if (cCharAt == '|') {
                    int i8 = 1;
                    while (true) {
                        int i9 = i + 1;
                        if (i9 >= length) {
                            i = i9;
                            break;
                        } else {
                            if (stringBuffer.charAt(i9) != '|') {
                                break;
                            }
                            i8++;
                            i = i9;
                        }
                    }
                    this.vlines.put(Integer.valueOf(arrayList.size()), new VlineAtom(i8));
                } else {
                    arrayList.add(2);
                }
                i = pos - 1;
            }
            i++;
        }
        for (int size = arrayList.size(); size < this.matrix.col; size++) {
            arrayList.add(2);
        }
        if (arrayList.size() != 0) {
            Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
            this.position = new int[numArr.length];
            for (int i10 = 0; i10 < numArr.length; i10++) {
                this.position[i10] = numArr[i10].intValue();
            }
            return;
        }
        this.position = new int[]{2};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Box[] getColumnSep(TeXEnvironment teXEnvironment, float f) {
        Box boxCreateBox;
        Box boxCreateBox2;
        int i = this.matrix.col;
        Box[] boxArr = new Box[i + 1];
        float textwidth = teXEnvironment.getTextwidth();
        int i2 = this.type;
        if (i2 == 6 || i2 == 7) {
            textwidth = Float.POSITIVE_INFINITY;
        }
        int i3 = 2;
        int i4 = 1;
        switch (i2) {
            case 0:
                if (this.position[0] == 5) {
                    boxArr[1] = new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
                } else {
                    i3 = 1;
                }
                if (this.spaceAround) {
                    boxArr[0] = semihsep.createBox(teXEnvironment);
                } else {
                    boxArr[0] = new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
                }
                boxArr[i] = boxArr[0];
                Box boxCreateBox3 = hsep.createBox(teXEnvironment);
                while (i3 < i) {
                    if (this.position[i3] == 5) {
                        StrutBox strutBox = new StrutBox(0.0f, 0.0f, 0.0f, 0.0f);
                        boxArr[i3] = strutBox;
                        i3++;
                        boxArr[i3] = strutBox;
                    } else {
                        boxArr[i3] = boxCreateBox3;
                    }
                    i3++;
                }
                break;
            case 1:
            case 5:
                Box box = nullBox;
                boxArr[0] = box;
                boxArr[i] = box;
                Box boxCreateBox4 = hsep.createBox(teXEnvironment);
                while (i4 < i) {
                    boxArr[i4] = boxCreateBox4;
                    i4++;
                }
                break;
            case 2:
            case 6:
                Box boxCreateBox5 = align.createBox(teXEnvironment);
                if (textwidth != Float.POSITIVE_INFINITY) {
                    boxCreateBox = new StrutBox(Math.max(((textwidth - f) - ((i / 2) * boxCreateBox5.getWidth())) / ((float) Math.floor((i + 3) / 2)), 0.0f), 0.0f, 0.0f, 0.0f);
                } else {
                    boxCreateBox = hsep.createBox(teXEnvironment);
                }
                boxArr[i] = boxCreateBox;
                for (int i5 = 0; i5 < i; i5++) {
                    if (i5 % 2 == 0) {
                        boxArr[i5] = boxCreateBox;
                    } else {
                        boxArr[i5] = boxCreateBox5;
                    }
                }
                if (textwidth == Float.POSITIVE_INFINITY) {
                    Box box2 = nullBox;
                    boxArr[0] = box2;
                    boxArr[i] = box2;
                }
                break;
            case 3:
            case 7:
                float fMax = textwidth != Float.POSITIVE_INFINITY ? Math.max((textwidth - f) / 2.0f, 0.0f) : 0.0f;
                Box boxCreateBox6 = align.createBox(teXEnvironment);
                Box box3 = nullBox;
                StrutBox strutBox2 = new StrutBox(fMax, 0.0f, 0.0f, 0.0f);
                boxArr[0] = strutBox2;
                boxArr[i] = strutBox2;
                while (i4 < i) {
                    if (i4 % 2 == 0) {
                        boxArr[i4] = box3;
                    } else {
                        boxArr[i4] = boxCreateBox6;
                    }
                    i4++;
                }
                if (textwidth == Float.POSITIVE_INFINITY) {
                }
                break;
            case 4:
                Box boxCreateBox7 = align.createBox(teXEnvironment);
                if (textwidth != Float.POSITIVE_INFINITY) {
                    boxCreateBox2 = new StrutBox(Math.max(((textwidth - f) - ((i / 2) * boxCreateBox7.getWidth())) / ((float) Math.floor((i - 1) / 2)), 0.0f), 0.0f, 0.0f, 0.0f);
                } else {
                    boxCreateBox2 = hsep.createBox(teXEnvironment);
                }
                Box box4 = nullBox;
                boxArr[0] = box4;
                boxArr[i] = box4;
                while (i4 < i) {
                    if (i4 % 2 == 0) {
                        boxArr[i4] = boxCreateBox2;
                    } else {
                        boxArr[i4] = boxCreateBox7;
                    }
                    i4++;
                }
                if (textwidth == Float.POSITIVE_INFINITY) {
                }
                break;
            default:
                if (textwidth == Float.POSITIVE_INFINITY) {
                }
                break;
        }
        return boxArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01fc  */
    @Override // org.scilab.forge.jlatexmath.Atom
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Box createBox(TeXEnvironment teXEnvironment) {
        TeXEnvironment teXEnvironmentCopy;
        float f;
        TeXEnvironment teXEnvironment2;
        HorizontalBox horizontalBox;
        float[] fArr;
        int i;
        Box[] boxArr;
        boolean zHasRightVline;
        float[] fArr2;
        int i2;
        boolean z;
        int i3;
        Atom atom;
        MatrixAtom matrixAtom = this;
        ArrayOfAtoms arrayOfAtoms = matrixAtom.matrix;
        int i4 = arrayOfAtoms.row;
        int i5 = arrayOfAtoms.col;
        int i6 = 0;
        Box[][] boxArr2 = (Box[][]) Array.newInstance((Class<?>) Box.class, i4, i5);
        float[] fArr3 = new float[i4];
        float[] fArr4 = new float[i4];
        float[] fArr5 = new float[i5];
        float defaultRuleThickness = teXEnvironment.getTeXFont().getDefaultRuleThickness(teXEnvironment.getStyle());
        if (matrixAtom.type == 5) {
            teXEnvironmentCopy = teXEnvironment.copy();
            teXEnvironmentCopy.setStyle(4);
        } else {
            teXEnvironmentCopy = teXEnvironment;
        }
        ArrayList arrayList = new ArrayList();
        int i7 = 0;
        while (true) {
            f = 0.0f;
            if (i7 >= i4) {
                break;
            }
            fArr3[i7] = 0.0f;
            fArr4[i7] = 0.0f;
            int i8 = i6;
            while (i8 < i5) {
                try {
                    atom = matrixAtom.matrix.array.get(i7).get(i8);
                } catch (Exception unused) {
                    boxArr2[i7][i8 - 1].type = 11;
                    i8 = i5 - 1;
                    atom = null;
                }
                boxArr2[i7][i8] = atom == null ? nullBox : atom.createBox(teXEnvironmentCopy);
                fArr3[i7] = Math.max(boxArr2[i7][i8].getDepth(), fArr3[i7]);
                fArr4[i7] = Math.max(boxArr2[i7][i8].getHeight(), fArr4[i7]);
                Box box = boxArr2[i7][i8];
                float[] fArr6 = fArr5;
                if (box.type != 12) {
                    fArr6[i8] = Math.max(box.getWidth(), fArr6[i8]);
                } else {
                    MulticolumnAtom multicolumnAtom = (MulticolumnAtom) atom;
                    multicolumnAtom.setRowColumn(i7, i8);
                    arrayList.add(multicolumnAtom);
                }
                i8++;
                fArr5 = fArr6;
            }
            i7++;
            i6 = 0;
        }
        float[] fArr7 = fArr5;
        int i9 = 0;
        while (i9 < arrayList.size()) {
            MulticolumnAtom multicolumnAtom2 = (MulticolumnAtom) arrayList.get(i9);
            int col = multicolumnAtom2.getCol();
            int row = multicolumnAtom2.getRow();
            int skipped = multicolumnAtom2.getSkipped();
            float f2 = f;
            int i10 = col;
            while (true) {
                i3 = col + skipped;
                if (i10 >= i3) {
                    break;
                }
                f2 += fArr7[i10];
                i10++;
            }
            if (boxArr2[row][col].getWidth() > f2) {
                float width = (boxArr2[row][col].getWidth() - f2) / skipped;
                while (col < i3) {
                    fArr7[col] = fArr7[col] + width;
                    col++;
                }
            }
            i9++;
            f = 0.0f;
        }
        float f3 = 0.0f;
        for (int i11 = 0; i11 < i5; i11++) {
            f3 += fArr7[i11];
        }
        Box[] columnSep = matrixAtom.getColumnSep(teXEnvironmentCopy, f3);
        float width2 = f3;
        for (int i12 = 0; i12 < i5 + 1; i12++) {
            width2 += columnSep[i12].getWidth();
            if (matrixAtom.vlines.get(Integer.valueOf(i12)) != null) {
                width2 += matrixAtom.vlines.get(Integer.valueOf(i12)).getWidth(teXEnvironmentCopy);
            }
        }
        VerticalBox verticalBox = new VerticalBox();
        Box boxCreateBox = vsep_in.createBox(teXEnvironmentCopy);
        verticalBox.add(vsep_ext_top.createBox(teXEnvironmentCopy));
        int i13 = 0;
        while (i13 < i4) {
            HorizontalBox horizontalBox2 = new HorizontalBox();
            int skipped2 = 0;
            while (skipped2 < i5) {
                Box[] boxArr3 = columnSep;
                int i14 = boxArr2[i13][skipped2].type;
                int i15 = i4;
                if (i14 != -1) {
                    switch (i14) {
                        case 11:
                            int i16 = i13;
                            float textwidth = teXEnvironmentCopy.getTextwidth();
                            if (textwidth == Float.POSITIVE_INFINITY) {
                                textwidth = fArr7[skipped2];
                            }
                            HorizontalBox horizontalBox3 = new HorizontalBox(boxArr2[i16][skipped2], textwidth, 0);
                            skipped2 = i5 - 1;
                            horizontalBox2 = horizontalBox3;
                            boxArr = boxArr3;
                            i13 = i16;
                            i = i5;
                            fArr2 = fArr7;
                            break;
                        case 12:
                            int i17 = i13;
                            if (skipped2 != 0) {
                                teXEnvironment2 = teXEnvironmentCopy;
                            } else if (matrixAtom.vlines.get(0) != null) {
                                VlineAtom vlineAtom = matrixAtom.vlines.get(0);
                                vlineAtom.setHeight(fArr4[i17] + fArr3[i17] + boxCreateBox.getHeight());
                                vlineAtom.setShift(fArr3[i17] + (boxCreateBox.getHeight() / 2.0f));
                                Box boxCreateBox2 = vlineAtom.createBox(teXEnvironmentCopy);
                                teXEnvironment2 = teXEnvironmentCopy;
                                horizontalBox2.add(new HorizontalBox(boxCreateBox2, boxArr3[0].getWidth() + boxCreateBox2.getWidth(), 0));
                            } else {
                                teXEnvironment2 = teXEnvironmentCopy;
                                horizontalBox2.add(boxArr3[0]);
                            }
                            if (boxArr2[i17][skipped2].type == -1) {
                                horizontalBox2.add(new HorizontalBox(boxArr2[i17][skipped2], fArr7[skipped2], matrixAtom.position[skipped2]));
                                horizontalBox = horizontalBox2;
                                fArr = fArr7;
                                boxArr = boxArr3;
                                i13 = i17;
                                teXEnvironmentCopy = teXEnvironment2;
                                zHasRightVline = true;
                                i = i5;
                            } else {
                                horizontalBox = horizontalBox2;
                                fArr = fArr7;
                                i13 = i17;
                                teXEnvironmentCopy = teXEnvironment2;
                                i = i5;
                                Box boxGenerateMulticolumn = matrixAtom.generateMulticolumn(teXEnvironmentCopy, boxArr3, fArr, i13, skipped2);
                                boxArr = boxArr3;
                                MulticolumnAtom multicolumnAtom3 = (MulticolumnAtom) matrixAtom.matrix.array.get(i13).get(skipped2);
                                skipped2 += multicolumnAtom3.getSkipped() - 1;
                                horizontalBox.add(boxGenerateMulticolumn);
                                zHasRightVline = multicolumnAtom3.hasRightVline();
                            }
                            if (zHasRightVline) {
                                int i18 = skipped2 + 1;
                                fArr2 = fArr;
                                if (matrixAtom.vlines.get(Integer.valueOf(i18)) != null) {
                                    VlineAtom vlineAtom2 = matrixAtom.vlines.get(Integer.valueOf(i18));
                                    vlineAtom2.setHeight(fArr4[i13] + fArr3[i13] + boxCreateBox.getHeight());
                                    vlineAtom2.setShift(fArr3[i13] + (boxCreateBox.getHeight() / 2.0f));
                                    Box boxCreateBox3 = vlineAtom2.createBox(teXEnvironmentCopy);
                                    if (skipped2 < i - 1) {
                                        horizontalBox.add(new HorizontalBox(boxCreateBox3, boxArr[i18].getWidth() + boxCreateBox3.getWidth(), 2));
                                    } else {
                                        horizontalBox.add(new HorizontalBox(boxCreateBox3, boxArr[i18].getWidth() + boxCreateBox3.getWidth(), 1));
                                    }
                                }
                                horizontalBox2 = horizontalBox;
                            } else {
                                fArr2 = fArr;
                            }
                            horizontalBox.add(boxArr[skipped2 + 1]);
                            horizontalBox2 = horizontalBox;
                            break;
                        case 13:
                            HlineAtom hlineAtom = (HlineAtom) matrixAtom.matrix.array.get(i13).get(skipped2);
                            hlineAtom.setWidth(width2);
                            if (i13 >= 1) {
                                i2 = i13;
                                if (matrixAtom.matrix.array.get(i2 - 1).get(skipped2) instanceof HlineAtom) {
                                    z = false;
                                    horizontalBox2.add(new StrutBox(0.0f, defaultRuleThickness * 2.0f, 0.0f, 0.0f));
                                    hlineAtom.setShift(((-boxCreateBox.getHeight()) / 2.0f) + defaultRuleThickness);
                                }
                                horizontalBox2.add(hlineAtom.createBox(teXEnvironmentCopy));
                                skipped2 = i5;
                                boxArr = boxArr3;
                                i13 = i2;
                                i = skipped2;
                                fArr2 = fArr7;
                            } else {
                                i2 = i13;
                            }
                            z = false;
                            hlineAtom.setShift((-boxCreateBox.getHeight()) / 2.0f);
                            horizontalBox2.add(hlineAtom.createBox(teXEnvironmentCopy));
                            skipped2 = i5;
                            boxArr = boxArr3;
                            i13 = i2;
                            i = skipped2;
                            fArr2 = fArr7;
                            break;
                        default:
                            fArr2 = fArr7;
                            boxArr = boxArr3;
                            i = i5;
                            break;
                    }
                }
                skipped2++;
                matrixAtom = this;
                columnSep = boxArr;
                i4 = i15;
                i5 = i;
                fArr7 = fArr2;
            }
            Box[] boxArr4 = columnSep;
            int i19 = i4;
            int i20 = i5;
            float[] fArr8 = fArr7;
            HorizontalBox horizontalBox4 = horizontalBox2;
            if (boxArr2[i13][0].type != 13) {
                horizontalBox4.setHeight(fArr4[i13]);
                horizontalBox4.setDepth(fArr3[i13]);
                verticalBox.add(horizontalBox4);
                if (i13 < i19 - 1) {
                    verticalBox.add(boxCreateBox);
                }
            } else {
                verticalBox.add(horizontalBox4);
            }
            i13++;
            matrixAtom = this;
            columnSep = boxArr4;
            i4 = i19;
            i5 = i20;
            fArr7 = fArr8;
        }
        verticalBox.add(vsep_ext_bot.createBox(teXEnvironmentCopy));
        float height = verticalBox.getHeight() + verticalBox.getDepth();
        float axisHeight = teXEnvironmentCopy.getTeXFont().getAxisHeight(teXEnvironmentCopy.getStyle());
        float f4 = height / 2.0f;
        verticalBox.setHeight(f4 + axisHeight);
        verticalBox.setDepth(f4 - axisHeight);
        return verticalBox;
    }

    private Box generateMulticolumn(TeXEnvironment teXEnvironment, Box[] boxArr, float[] fArr, int i, int i2) {
        MulticolumnAtom multicolumnAtom = (MulticolumnAtom) this.matrix.array.get(i).get(i2);
        int skipped = multicolumnAtom.getSkipped();
        int i3 = i2;
        float width = 0.0f;
        while (i3 < (i2 + skipped) - 1) {
            float f = fArr[i3];
            i3++;
            width += f + boxArr[i3].getWidth();
            if (this.vlines.get(Integer.valueOf(i3)) != null) {
                width += this.vlines.get(Integer.valueOf(i3)).getWidth(teXEnvironment);
            }
        }
        float f2 = width + fArr[i3];
        multicolumnAtom.setWidth(multicolumnAtom.createBox(teXEnvironment).getWidth() <= f2 ? f2 : 0.0f);
        return multicolumnAtom.createBox(teXEnvironment);
    }
}
