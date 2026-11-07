package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            WidgetRun widgetRun = arrayList.get(i);
            i++;
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.mWidgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.mWidgets.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            wrapDimension = wrapDimension + ((long) widgetRun.start.mMargin) + widgetRun.getWrapDimension() + ((long) widgetRun.end.mMargin);
        }
        return wrapDimension;
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ArrayList<WidgetRun> arrayList;
        ConstraintWidget constraintWidget2 = this.mWidget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.mWidget = constraintWidget;
        this.mWidgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (true) {
            arrayList = this.mWidgets;
            if (nextChainMember == null) {
                break;
            }
            arrayList.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            WidgetRun widgetRun = arrayList.get(i);
            i++;
            WidgetRun widgetRun2 = widgetRun;
            int i2 = this.orientation;
            if (i2 == 0) {
                widgetRun2.mWidget.horizontalChainRun = this;
            } else if (i2 == 1) {
                widgetRun2.mWidget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.getParent()).isRtl() && this.mWidgets.size() > 1) {
            ArrayList<WidgetRun> arrayList2 = this.mWidgets;
            this.mWidget = arrayList2.get(arrayList2.size() - 1).mWidget;
        }
        int i3 = this.orientation;
        ConstraintWidget constraintWidget4 = this.mWidget;
        this.mChainStyle = i3 == 0 ? constraintWidget4.getHorizontalChainStyle() : constraintWidget4.getVerticalChainStyle();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.mRunGroup = null;
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            WidgetRun widgetRun = arrayList.get(i);
            i++;
            widgetRun.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x0160  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(Dependency dependency) {
        int i;
        int i2;
        boolean z;
        float f;
        float f2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f3;
        int i7;
        int i8;
        float verticalBiasPercent;
        int i9;
        float f4;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z2;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.mWidget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i14 = this.end.value - this.start.value;
            int size = this.mWidgets.size();
            int i15 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i15 >= size) {
                    i15 = -1;
                    break;
                } else if (this.mWidgets.get(i15).mWidget.getVisibility() != 8) {
                    break;
                } else {
                    i15++;
                }
            }
            int i16 = size - 1;
            int i17 = i16;
            while (true) {
                if (i17 < 0) {
                    break;
                }
                if (this.mWidgets.get(i17).mWidget.getVisibility() != 8) {
                    i = i17;
                    break;
                }
                i17--;
            }
            int i18 = 0;
            while (i18 < 2) {
                int i19 = 0;
                i4 = 0;
                i5 = 0;
                int i20 = 0;
                f2 = 0.0f;
                while (i19 < size) {
                    WidgetRun widgetRun = this.mWidgets.get(i19);
                    if (widgetRun.mWidget.getVisibility() == i2) {
                        z2 = zIsRtl;
                    } else {
                        i20++;
                        if (i19 > 0 && i19 >= i15) {
                            i4 += widgetRun.start.mMargin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.mDimension;
                        int i21 = dimensionDependency.value;
                        boolean z3 = widgetRun.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z3) {
                            int i22 = this.orientation;
                            if (i22 == 0 && !widgetRun.mWidget.mHorizontalRun.mDimension.resolved) {
                                return;
                            }
                            if (i22 == 1 && !widgetRun.mWidget.mVerticalRun.mDimension.resolved) {
                                return;
                            } else {
                                z2 = zIsRtl;
                            }
                        } else {
                            z2 = zIsRtl;
                            if (widgetRun.matchConstraintsType == 1 && i18 == 0) {
                                i21 = dimensionDependency.wrapValue;
                                i5++;
                            } else if (dimensionDependency.resolved) {
                            }
                            z3 = true;
                        }
                        if (z3) {
                            i4 += i21;
                        } else {
                            i5++;
                            float f5 = widgetRun.mWidget.mWeight[this.orientation];
                            if (f5 >= 0.0f) {
                                f2 += f5;
                            }
                        }
                        if (i19 < i16 && i19 < i) {
                            i4 += -widgetRun.end.mMargin;
                        }
                    }
                    i19++;
                    zIsRtl = z2;
                    i2 = 8;
                }
                z = zIsRtl;
                f = 0.0f;
                if (i4 < i14 || i5 == 0) {
                    i3 = i20;
                    break;
                } else {
                    i18++;
                    zIsRtl = z;
                    i2 = 8;
                }
            }
            z = zIsRtl;
            f = 0.0f;
            f2 = 0.0f;
            i3 = 0;
            i4 = 0;
            i5 = 0;
            int i23 = this.start.value;
            if (z) {
                i23 = this.end.value;
            }
            float f6 = 0.5f;
            if (i4 > i14) {
                i23 = z ? i23 + ((int) (((i4 - i14) / 2.0f) + 0.5f)) : i23 - ((int) (((i4 - i14) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f7 = i14 - i4;
                int i24 = (int) ((f7 / i5) + 0.5f);
                int i25 = 0;
                int i26 = 0;
                while (i25 < size) {
                    WidgetRun widgetRun2 = this.mWidgets.get(i25);
                    float f8 = f6;
                    int i27 = i23;
                    if (widgetRun2.mWidget.getVisibility() != 8 && widgetRun2.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.mDimension;
                        if (dimensionDependency2.resolved) {
                            f4 = f7;
                            i10 = i24;
                            i13 = i25;
                            i26 = i26;
                        } else {
                            int i28 = f2 > f ? (int) (((widgetRun2.mWidget.mWeight[this.orientation] * f7) / f2) + f8) : i24;
                            f4 = f7;
                            int i29 = this.orientation;
                            ConstraintWidget constraintWidget = widgetRun2.mWidget;
                            if (i29 == 0) {
                                i10 = i24;
                                i11 = constraintWidget.mMatchConstraintMaxWidth;
                                i12 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                i10 = i24;
                                i11 = constraintWidget.mMatchConstraintMaxHeight;
                                i12 = constraintWidget.mMatchConstraintMinHeight;
                            }
                            i13 = i25;
                            int i30 = i26;
                            int iMax = Math.max(i12, widgetRun2.matchConstraintsType == 1 ? Math.min(i28, dimensionDependency2.wrapValue) : i28);
                            if (i11 > 0) {
                                iMax = Math.min(i11, iMax);
                            }
                            if (iMax != i28) {
                                i26 = i30 + 1;
                                i28 = iMax;
                            } else {
                                i26 = i30;
                            }
                            widgetRun2.mDimension.resolve(i28);
                        }
                    }
                    i25 = i13 + 1;
                    f6 = f8;
                    i23 = i27;
                    f7 = f4;
                    i24 = i10;
                }
                i6 = i23;
                f3 = f6;
                int i31 = i26;
                if (i31 > 0) {
                    i5 -= i31;
                    i4 = 0;
                    for (int i32 = 0; i32 < size; i32++) {
                        WidgetRun widgetRun3 = this.mWidgets.get(i32);
                        if (widgetRun3.mWidget.getVisibility() != 8) {
                            if (i32 > 0 && i32 >= i15) {
                                i4 += widgetRun3.start.mMargin;
                            }
                            i4 += widgetRun3.mDimension.value;
                            if (i32 < i16 && i32 < i) {
                                i4 += -widgetRun3.end.mMargin;
                            }
                        }
                    }
                }
                i8 = 2;
                if (this.mChainStyle == 2 && i31 == 0) {
                    i7 = 0;
                    this.mChainStyle = 0;
                } else {
                    i7 = 0;
                }
            } else {
                i6 = i23;
                f3 = 0.5f;
                i7 = 0;
                i8 = 2;
            }
            if (i4 > i14) {
                this.mChainStyle = i8;
            }
            if (i3 > 0 && i5 == 0 && i15 == i) {
                this.mChainStyle = i8;
            }
            int i33 = this.mChainStyle;
            if (i33 == 1) {
                if (i3 > 1) {
                    i9 = (i14 - i4) / (i3 - 1);
                } else {
                    i9 = i3 == 1 ? (i14 - i4) / 2 : i7;
                }
                if (i5 > 0) {
                    i9 = i7;
                }
                int i34 = i6;
                while (i7 < size) {
                    WidgetRun widgetRun4 = this.mWidgets.get(z ? size - (i7 + 1) : i7);
                    if (widgetRun4.mWidget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i34);
                        widgetRun4.end.resolve(i34);
                    } else {
                        if (i7 > 0) {
                            i34 = z ? i34 - i9 : i34 + i9;
                        }
                        if (i7 > 0 && i7 >= i15) {
                            DependencyNode dependencyNode = widgetRun4.start;
                            if (z) {
                                i34 -= dependencyNode.mMargin;
                            } else {
                                i34 += dependencyNode.mMargin;
                            }
                        }
                        if (z) {
                            widgetRun4.end.resolve(i34);
                        } else {
                            widgetRun4.start.resolve(i34);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.mDimension;
                        int i35 = dimensionDependency3.value;
                        if (widgetRun4.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i35 = dimensionDependency3.wrapValue;
                        }
                        i34 = z ? i34 - i35 : i34 + i35;
                        if (z) {
                            widgetRun4.start.resolve(i34);
                        } else {
                            widgetRun4.end.resolve(i34);
                        }
                        widgetRun4.mResolved = true;
                        if (i7 < i16 && i7 < i) {
                            DependencyNode dependencyNode2 = widgetRun4.end;
                            if (z) {
                                i34 -= -dependencyNode2.mMargin;
                            } else {
                                i34 += -dependencyNode2.mMargin;
                            }
                        }
                    }
                    i7++;
                }
                return;
            }
            if (i33 == 0) {
                int i36 = (i14 - i4) / (i3 + 1);
                if (i5 > 0) {
                    i36 = i7;
                }
                int i37 = i6;
                while (i7 < size) {
                    WidgetRun widgetRun5 = this.mWidgets.get(z ? size - (i7 + 1) : i7);
                    if (widgetRun5.mWidget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i37);
                        widgetRun5.end.resolve(i37);
                    } else {
                        int i38 = z ? i37 - i36 : i37 + i36;
                        if (i7 > 0 && i7 >= i15) {
                            DependencyNode dependencyNode3 = widgetRun5.start;
                            if (z) {
                                i38 -= dependencyNode3.mMargin;
                            } else {
                                i38 += dependencyNode3.mMargin;
                            }
                        }
                        if (z) {
                            widgetRun5.end.resolve(i38);
                        } else {
                            widgetRun5.start.resolve(i38);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.mDimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i37 = z ? i38 - iMin : i38 + iMin;
                        if (z) {
                            widgetRun5.start.resolve(i37);
                        } else {
                            widgetRun5.end.resolve(i37);
                        }
                        if (i7 < i16 && i7 < i) {
                            DependencyNode dependencyNode4 = widgetRun5.end;
                            if (z) {
                                i37 -= -dependencyNode4.mMargin;
                            } else {
                                i37 += -dependencyNode4.mMargin;
                            }
                        }
                    }
                    i7++;
                }
                return;
            }
            if (i33 == 2) {
                int i39 = this.orientation;
                ConstraintWidget constraintWidget2 = this.mWidget;
                if (i39 == 0) {
                    verticalBiasPercent = constraintWidget2.getHorizontalBiasPercent();
                } else {
                    verticalBiasPercent = constraintWidget2.getVerticalBiasPercent();
                }
                if (z) {
                    verticalBiasPercent = 1.0f - verticalBiasPercent;
                }
                int i40 = (int) (((i14 - i4) * verticalBiasPercent) + f3);
                if (i40 < 0 || i5 > 0) {
                    i40 = i7;
                }
                int i41 = z ? i6 - i40 : i6 + i40;
                while (i7 < size) {
                    WidgetRun widgetRun6 = this.mWidgets.get(z ? size - (i7 + 1) : i7);
                    if (widgetRun6.mWidget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i41);
                        widgetRun6.end.resolve(i41);
                    } else {
                        if (i7 > 0 && i7 >= i15) {
                            DependencyNode dependencyNode5 = widgetRun6.start;
                            if (z) {
                                i41 -= dependencyNode5.mMargin;
                            } else {
                                i41 += dependencyNode5.mMargin;
                            }
                        }
                        if (z) {
                            widgetRun6.end.resolve(i41);
                        } else {
                            widgetRun6.start.resolve(i41);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.mDimension;
                        int i42 = dimensionDependency5.value;
                        if (widgetRun6.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i42 = dimensionDependency5.wrapValue;
                        }
                        i41 = z ? i41 - i42 : i41 + i42;
                        if (z) {
                            widgetRun6.start.resolve(i41);
                        } else {
                            widgetRun6.end.resolve(i41);
                        }
                        if (i7 < i16 && i7 < i) {
                            DependencyNode dependencyNode6 = widgetRun6.end;
                            if (z) {
                                i41 -= -dependencyNode6.mMargin;
                            } else {
                                i41 += -dependencyNode6.mMargin;
                            }
                        }
                    }
                    i7++;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            this.mWidgets.get(i).applyToWidget();
        }
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void apply() {
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            WidgetRun widgetRun = arrayList.get(i);
            i++;
            widgetRun.apply();
        }
        int size2 = this.mWidgets.size();
        if (size2 < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidgets.get(0).mWidget;
        ConstraintWidget constraintWidget2 = this.mWidgets.get(size2 - 1).mWidget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }
}
