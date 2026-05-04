package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.google.android.material.C1349R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class StateListSizeChange {
    private static final int INITIAL_CAPACITY = 10;
    private SizeChange defaultSizeChange;
    int stateCount;
    int[][] stateSpecs = new int[10][];
    SizeChange[] sizeChanges = new SizeChange[10];

    public enum SizeChangeType {
        PERCENT,
        PIXELS
    }

    public static StateListSizeChange create(Context context, TypedArray typedArray, int i) {
        int next;
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0 || !context.getResources().getResourceTypeName(resourceId).equals("xml")) {
            return null;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(resourceId);
            try {
                StateListSizeChange stateListSizeChange = new StateListSizeChange();
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (xml.getName().equals("selector")) {
                    stateListSizeChange.loadSizeChangeFromItems(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                xml.close();
                return stateListSizeChange;
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public boolean isStateful() {
        return this.stateCount > 1;
    }

    public SizeChange getDefaultSizeChange() {
        return this.defaultSizeChange;
    }

    public SizeChange getSizeChangeForState(int[] iArr) {
        int iIndexOfStateSet = indexOfStateSet(iArr);
        if (iIndexOfStateSet < 0) {
            iIndexOfStateSet = indexOfStateSet(StateSet.WILD_CARD);
        }
        return iIndexOfStateSet < 0 ? this.defaultSizeChange : this.sizeChanges[iIndexOfStateSet];
    }

    public int getMaxWidthChange(int i) {
        float fMax;
        int i2 = -i;
        for (int i3 = 0; i3 < this.stateCount; i3++) {
            SizeChangeAmount sizeChangeAmount = this.sizeChanges[i3].widthChange;
            SizeChangeType sizeChangeType = sizeChangeAmount.type;
            if (sizeChangeType == SizeChangeType.PIXELS) {
                fMax = Math.max(i2, sizeChangeAmount.amount);
            } else if (sizeChangeType == SizeChangeType.PERCENT) {
                fMax = Math.max(i2, i * sizeChangeAmount.amount);
            }
            i2 = (int) fMax;
        }
        return i2;
    }

    private int indexOfStateSet(int[] iArr) {
        int[][] iArr2 = this.stateSpecs;
        for (int i = 0; i < this.stateCount; i++) {
            if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                return i;
            }
        }
        return -1;
    }

    private void loadSizeChangeFromItems(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainStyledAttributes;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                Resources resources = context.getResources();
                if (theme == null) {
                    typedArrayObtainStyledAttributes = resources.obtainAttributes(attributeSet, C1349R.styleable.StateListSizeChange);
                } else {
                    typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1349R.styleable.StateListSizeChange, 0, 0);
                }
                SizeChangeAmount sizeChangeAmount = getSizeChangeAmount(typedArrayObtainStyledAttributes, C1349R.styleable.StateListSizeChange_widthChange, null);
                typedArrayObtainStyledAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != C1349R.attr.widthChange) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr[i] = attributeNameResource;
                        i = i3;
                    }
                }
                addStateSizeChange(StateSet.trimStateSet(iArr, i), new SizeChange(sizeChangeAmount));
            }
        }
    }

    private SizeChangeAmount getSizeChangeAmount(TypedArray typedArray, int i, SizeChangeAmount sizeChangeAmount) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue != null) {
            int i2 = typedValuePeekValue.type;
            if (i2 == 5) {
                return new SizeChangeAmount(SizeChangeType.PIXELS, TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new SizeChangeAmount(SizeChangeType.PERCENT, typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return sizeChangeAmount;
    }

    private void addStateSizeChange(int[] iArr, SizeChange sizeChange) {
        int i = this.stateCount;
        if (i == 0 || iArr.length == 0) {
            this.defaultSizeChange = sizeChange;
        }
        if (i >= this.stateSpecs.length) {
            growArray(i, i + 10);
        }
        int[][] iArr2 = this.stateSpecs;
        int i2 = this.stateCount;
        iArr2[i2] = iArr;
        this.sizeChanges[i2] = sizeChange;
        this.stateCount = i2 + 1;
    }

    private void growArray(int i, int i2) {
        int[][] iArr = new int[i2][];
        System.arraycopy(this.stateSpecs, 0, iArr, 0, i);
        this.stateSpecs = iArr;
        SizeChange[] sizeChangeArr = new SizeChange[i2];
        System.arraycopy(this.sizeChanges, 0, sizeChangeArr, 0, i);
        this.sizeChanges = sizeChangeArr;
    }

    public static class SizeChange {
        public SizeChangeAmount widthChange;

        SizeChange(SizeChangeAmount sizeChangeAmount) {
            this.widthChange = sizeChangeAmount;
        }

        SizeChange(SizeChange sizeChange) {
            SizeChangeAmount sizeChangeAmount = sizeChange.widthChange;
            this.widthChange = new SizeChangeAmount(sizeChangeAmount.type, sizeChangeAmount.amount);
        }
    }

    public static class SizeChangeAmount {
        float amount;
        SizeChangeType type;

        SizeChangeAmount(SizeChangeType sizeChangeType, float f) {
            this.type = sizeChangeType;
            this.amount = f;
        }

        public int getChange(int i) {
            SizeChangeType sizeChangeType = this.type;
            if (sizeChangeType == SizeChangeType.PERCENT) {
                return (int) (this.amount * i);
            }
            if (sizeChangeType == SizeChangeType.PIXELS) {
                return (int) this.amount;
            }
            return 0;
        }
    }
}
