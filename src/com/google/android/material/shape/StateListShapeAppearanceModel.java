package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import com.google.android.material.C1349R;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class StateListShapeAppearanceModel implements ShapeAppearance {
    private static final int INITIAL_CAPACITY = 10;
    final StateListCornerSize bottomLeftCornerSizeOverride;
    final StateListCornerSize bottomRightCornerSizeOverride;
    final ShapeAppearanceModel defaultShape;
    final ShapeAppearanceModel[] shapeAppearanceModels;
    final int stateCount;
    final int[][] stateSpecs;
    final StateListCornerSize topLeftCornerSizeOverride;
    final StateListCornerSize topRightCornerSizeOverride;

    public static int swapCornerPositionRtl(int i) {
        int i2 = i & 5;
        return ((i & 10) >> 1) | (i2 << 1);
    }

    public static final class Builder {
        private StateListCornerSize bottomLeftCornerSizeOverride;
        private StateListCornerSize bottomRightCornerSizeOverride;
        private ShapeAppearanceModel defaultShape;
        private ShapeAppearanceModel[] shapeAppearanceModels;
        private int stateCount;
        private int[][] stateSpecs;
        private StateListCornerSize topLeftCornerSizeOverride;
        private StateListCornerSize topRightCornerSizeOverride;

        public Builder(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
            int i = stateListShapeAppearanceModel.stateCount;
            this.stateCount = i;
            this.defaultShape = stateListShapeAppearanceModel.defaultShape;
            int[][] iArr = stateListShapeAppearanceModel.stateSpecs;
            int[][] iArr2 = new int[iArr.length][];
            this.stateSpecs = iArr2;
            this.shapeAppearanceModels = new ShapeAppearanceModel[stateListShapeAppearanceModel.shapeAppearanceModels.length];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(stateListShapeAppearanceModel.shapeAppearanceModels, 0, this.shapeAppearanceModels, 0, this.stateCount);
            this.topLeftCornerSizeOverride = stateListShapeAppearanceModel.topLeftCornerSizeOverride;
            this.topRightCornerSizeOverride = stateListShapeAppearanceModel.topRightCornerSizeOverride;
            this.bottomLeftCornerSizeOverride = stateListShapeAppearanceModel.bottomLeftCornerSizeOverride;
            this.bottomRightCornerSizeOverride = stateListShapeAppearanceModel.bottomRightCornerSizeOverride;
        }

        public Builder(ShapeAppearanceModel shapeAppearanceModel) {
            initialize();
            addStateShapeAppearanceModel(StateSet.WILD_CARD, shapeAppearanceModel);
        }

        private Builder(Context context, int i) {
            int next;
            initialize();
            try {
                XmlResourceParser xml = context.getResources().getXml(i);
                try {
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
                        StateListShapeAppearanceModel.loadShapeAppearanceModelsFromItems(this, context, xml, attributeSetAsAttributeSet, context.getTheme());
                    }
                    xml.close();
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
                initialize();
            }
        }

        private void initialize() {
            this.defaultShape = new ShapeAppearanceModel();
            this.stateSpecs = new int[10][];
            this.shapeAppearanceModels = new ShapeAppearanceModel[10];
        }

        public Builder setCornerSizeOverride(StateListCornerSize stateListCornerSize, int i) {
            if (ShapeAppearanceModel.containsFlag(i, 1)) {
                this.topLeftCornerSizeOverride = stateListCornerSize;
            }
            if (ShapeAppearanceModel.containsFlag(i, 2)) {
                this.topRightCornerSizeOverride = stateListCornerSize;
            }
            if (ShapeAppearanceModel.containsFlag(i, 4)) {
                this.bottomLeftCornerSizeOverride = stateListCornerSize;
            }
            if (ShapeAppearanceModel.containsFlag(i, 8)) {
                this.bottomRightCornerSizeOverride = stateListCornerSize;
            }
            return this;
        }

        public Builder addStateShapeAppearanceModel(int[] iArr, ShapeAppearanceModel shapeAppearanceModel) {
            int i = this.stateCount;
            if (i == 0 || iArr.length == 0) {
                this.defaultShape = shapeAppearanceModel;
            }
            if (i >= this.stateSpecs.length) {
                growArray(i, i + 10);
            }
            int[][] iArr2 = this.stateSpecs;
            int i2 = this.stateCount;
            iArr2[i2] = iArr;
            this.shapeAppearanceModels[i2] = shapeAppearanceModel;
            this.stateCount = i2 + 1;
            return this;
        }

        public Builder withTransformedCornerSizes(ShapeAppearanceModel.CornerSizeUnaryOperator cornerSizeUnaryOperator) {
            ShapeAppearanceModel[] shapeAppearanceModelArr = new ShapeAppearanceModel[this.shapeAppearanceModels.length];
            for (int i = 0; i < this.stateCount; i++) {
                shapeAppearanceModelArr[i] = this.shapeAppearanceModels[i].withTransformedCornerSizes(cornerSizeUnaryOperator);
            }
            this.shapeAppearanceModels = shapeAppearanceModelArr;
            StateListCornerSize stateListCornerSize = this.topLeftCornerSizeOverride;
            if (stateListCornerSize != null) {
                this.topLeftCornerSizeOverride = stateListCornerSize.withTransformedCornerSizes(cornerSizeUnaryOperator);
            }
            StateListCornerSize stateListCornerSize2 = this.topRightCornerSizeOverride;
            if (stateListCornerSize2 != null) {
                this.topRightCornerSizeOverride = stateListCornerSize2.withTransformedCornerSizes(cornerSizeUnaryOperator);
            }
            StateListCornerSize stateListCornerSize3 = this.bottomLeftCornerSizeOverride;
            if (stateListCornerSize3 != null) {
                this.bottomLeftCornerSizeOverride = stateListCornerSize3.withTransformedCornerSizes(cornerSizeUnaryOperator);
            }
            StateListCornerSize stateListCornerSize4 = this.bottomRightCornerSizeOverride;
            if (stateListCornerSize4 != null) {
                this.bottomRightCornerSizeOverride = stateListCornerSize4.withTransformedCornerSizes(cornerSizeUnaryOperator);
            }
            return this;
        }

        private void growArray(int i, int i2) {
            int[][] iArr = new int[i2][];
            System.arraycopy(this.stateSpecs, 0, iArr, 0, i);
            this.stateSpecs = iArr;
            ShapeAppearanceModel[] shapeAppearanceModelArr = new ShapeAppearanceModel[i2];
            System.arraycopy(this.shapeAppearanceModels, 0, shapeAppearanceModelArr, 0, i);
            this.shapeAppearanceModels = shapeAppearanceModelArr;
        }

        public StateListShapeAppearanceModel build() {
            if (this.stateCount == 0) {
                return null;
            }
            return new StateListShapeAppearanceModel(this);
        }
    }

    public static StateListShapeAppearanceModel create(Context context, TypedArray typedArray, int i) {
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId != 0 && Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return new Builder(context, resourceId).build();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loadShapeAppearanceModelsFromItems(Builder builder, Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                    typedArrayObtainStyledAttributes = resources.obtainAttributes(attributeSet, C1349R.styleable.MaterialShape);
                } else {
                    typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1349R.styleable.MaterialShape, 0, 0);
                }
                ShapeAppearanceModel shapeAppearanceModelBuild = ShapeAppearanceModel.builder(context, typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.MaterialShape_shapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.MaterialShape_shapeAppearanceOverlay, 0)).build();
                typedArrayObtainStyledAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != C1349R.attr.shapeAppearance && attributeNameResource != C1349R.attr.shapeAppearanceOverlay) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr[i] = attributeNameResource;
                        i = i3;
                    }
                }
                builder.addStateShapeAppearanceModel(StateSet.trimStateSet(iArr, i), shapeAppearanceModelBuild);
            }
        }
    }

    private StateListShapeAppearanceModel(Builder builder) {
        this.stateCount = builder.stateCount;
        this.defaultShape = builder.defaultShape;
        this.stateSpecs = builder.stateSpecs;
        this.shapeAppearanceModels = builder.shapeAppearanceModels;
        this.topLeftCornerSizeOverride = builder.topLeftCornerSizeOverride;
        this.topRightCornerSizeOverride = builder.topRightCornerSizeOverride;
        this.bottomLeftCornerSizeOverride = builder.bottomLeftCornerSizeOverride;
        this.bottomRightCornerSizeOverride = builder.bottomRightCornerSizeOverride;
    }

    public int getStateCount() {
        return this.stateCount;
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public ShapeAppearanceModel getDefaultShape() {
        return getDefaultShape(true);
    }

    public ShapeAppearanceModel getDefaultShape(boolean z) {
        if (!z || (this.topLeftCornerSizeOverride == null && this.topRightCornerSizeOverride == null && this.bottomLeftCornerSizeOverride == null && this.bottomRightCornerSizeOverride == null)) {
            return this.defaultShape;
        }
        ShapeAppearanceModel.Builder builder = this.defaultShape.toBuilder();
        StateListCornerSize stateListCornerSize = this.topLeftCornerSizeOverride;
        if (stateListCornerSize != null) {
            builder.setTopLeftCornerSize(stateListCornerSize.getDefaultCornerSize());
        }
        StateListCornerSize stateListCornerSize2 = this.topRightCornerSizeOverride;
        if (stateListCornerSize2 != null) {
            builder.setTopRightCornerSize(stateListCornerSize2.getDefaultCornerSize());
        }
        StateListCornerSize stateListCornerSize3 = this.bottomLeftCornerSizeOverride;
        if (stateListCornerSize3 != null) {
            builder.setBottomLeftCornerSize(stateListCornerSize3.getDefaultCornerSize());
        }
        StateListCornerSize stateListCornerSize4 = this.bottomRightCornerSizeOverride;
        if (stateListCornerSize4 != null) {
            builder.setBottomRightCornerSize(stateListCornerSize4.getDefaultCornerSize());
        }
        return builder.build();
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public ShapeAppearanceModel getShapeForState(int[] iArr) {
        int iIndexOfStateSet = indexOfStateSet(iArr);
        if (iIndexOfStateSet < 0) {
            iIndexOfStateSet = indexOfStateSet(StateSet.WILD_CARD);
        }
        if (this.topLeftCornerSizeOverride == null && this.topRightCornerSizeOverride == null && this.bottomLeftCornerSizeOverride == null && this.bottomRightCornerSizeOverride == null) {
            return this.shapeAppearanceModels[iIndexOfStateSet];
        }
        ShapeAppearanceModel.Builder builder = this.shapeAppearanceModels[iIndexOfStateSet].toBuilder();
        StateListCornerSize stateListCornerSize = this.topLeftCornerSizeOverride;
        if (stateListCornerSize != null) {
            builder.setTopLeftCornerSize(stateListCornerSize.getCornerSizeForState(iArr));
        }
        StateListCornerSize stateListCornerSize2 = this.topRightCornerSizeOverride;
        if (stateListCornerSize2 != null) {
            builder.setTopRightCornerSize(stateListCornerSize2.getCornerSizeForState(iArr));
        }
        StateListCornerSize stateListCornerSize3 = this.bottomLeftCornerSizeOverride;
        if (stateListCornerSize3 != null) {
            builder.setBottomLeftCornerSize(stateListCornerSize3.getCornerSizeForState(iArr));
        }
        StateListCornerSize stateListCornerSize4 = this.bottomRightCornerSizeOverride;
        if (stateListCornerSize4 != null) {
            builder.setBottomRightCornerSize(stateListCornerSize4.getCornerSizeForState(iArr));
        }
        return builder.build();
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public ShapeAppearanceModel[] getShapeAppearanceModels() {
        return this.shapeAppearanceModels;
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

    public StateListShapeAppearanceModel withTransformedCornerSizes(ShapeAppearanceModel.CornerSizeUnaryOperator cornerSizeUnaryOperator) {
        return toBuilder().withTransformedCornerSizes(cornerSizeUnaryOperator).build();
    }

    public Builder toBuilder() {
        return new Builder(this);
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public ShapeAppearanceModel withCornerSize(float f) {
        return getDefaultShape().withCornerSize(f);
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public ShapeAppearanceModel withCornerSize(CornerSize cornerSize) {
        return getDefaultShape().withCornerSize(cornerSize);
    }

    @Override // com.google.android.material.shape.ShapeAppearance
    public boolean isStateful() {
        StateListCornerSize stateListCornerSize;
        StateListCornerSize stateListCornerSize2;
        StateListCornerSize stateListCornerSize3;
        StateListCornerSize stateListCornerSize4;
        return this.stateCount > 1 || ((stateListCornerSize = this.topLeftCornerSizeOverride) != null && stateListCornerSize.isStateful()) || (((stateListCornerSize2 = this.topRightCornerSizeOverride) != null && stateListCornerSize2.isStateful()) || (((stateListCornerSize3 = this.bottomLeftCornerSizeOverride) != null && stateListCornerSize3.isStateful()) || ((stateListCornerSize4 = this.bottomRightCornerSizeOverride) != null && stateListCornerSize4.isStateful())));
    }
}
