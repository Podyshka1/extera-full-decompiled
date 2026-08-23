package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour mDimensionBehavior;
    RunGroup mRunGroup;
    ConstraintWidget mWidget;
    public int matchConstraintsType;
    DimensionDependency mDimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean mResolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    abstract void apply();

    abstract void applyToWidget();

    abstract void clear();

    abstract boolean supportsWrapComputation();

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public abstract void update(Dependency dependency);

    protected void updateRunEnd(Dependency dependency) {
    }

    protected void updateRunStart(Dependency dependency) {
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.mWidget = constraintWidget;
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int i = C03371.f37x6930e354[constraintAnchor2.mType.ordinal()];
        if (i == 1) {
            return constraintWidget.mHorizontalRun.start;
        }
        if (i == 2) {
            return constraintWidget.mHorizontalRun.end;
        }
        if (i == 3) {
            return constraintWidget.mVerticalRun.start;
        }
        if (i == 4) {
            return constraintWidget.mVerticalRun.baseline;
        }
        if (i != 5) {
            return null;
        }
        return constraintWidget.mVerticalRun.end;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1 */
    static /* synthetic */ class C03371 {

        /* JADX INFO: renamed from: $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f37x6930e354;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f37x6930e354 = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37x6930e354[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37x6930e354[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37x6930e354[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37x6930e354[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        float verticalBiasPercent;
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = target.value + constraintAnchor.getMargin();
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int i2 = margin2 - margin;
            if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                resolveDimension(i, i2);
            }
            DimensionDependency dimensionDependency = this.mDimension;
            if (dimensionDependency.resolved) {
                if (dimensionDependency.value == i2) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                if (i == 0) {
                    verticalBiasPercent = this.mWidget.getHorizontalBiasPercent();
                } else {
                    verticalBiasPercent = this.mWidget.getVerticalBiasPercent();
                }
                if (target == target2) {
                    margin = target.value;
                    margin2 = target2.value;
                    verticalBiasPercent = 0.5f;
                }
                this.start.resolve((int) (margin + 0.5f + (((margin2 - margin) - this.mDimension.value) * verticalBiasPercent)));
                this.end.resolve(this.start.value + this.mDimension.value);
            }
        }
    }

    private void resolveDimension(int i, int i2) {
        WidgetRun widgetRun;
        float f;
        int i3;
        int i4 = this.matchConstraintsType;
        if (i4 == 0) {
            this.mDimension.resolve(getLimitedDimension(i2, i));
            return;
        }
        if (i4 == 1) {
            this.mDimension.resolve(Math.min(getLimitedDimension(this.mDimension.wrapValue, i), i2));
            return;
        }
        if (i4 == 2) {
            ConstraintWidget parent = this.mWidget.getParent();
            if (parent != null) {
                if (i == 0) {
                    widgetRun = parent.mHorizontalRun;
                } else {
                    widgetRun = parent.mVerticalRun;
                }
                if (widgetRun.mDimension.resolved) {
                    if (i == 0) {
                        f = this.mWidget.mMatchConstraintPercentWidth;
                    } else {
                        f = this.mWidget.mMatchConstraintPercentHeight;
                    }
                    this.mDimension.resolve(getLimitedDimension((int) ((r9.value * f) + 0.5f), i));
                    return;
                }
                return;
            }
            return;
        }
        if (i4 != 3) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidget;
        WidgetRun widgetRun2 = constraintWidget.mHorizontalRun;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun2.mDimensionBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour == dimensionBehaviour2 && widgetRun2.matchConstraintsType == 3) {
            VerticalWidgetRun verticalWidgetRun = constraintWidget.mVerticalRun;
            if (verticalWidgetRun.mDimensionBehavior == dimensionBehaviour2 && verticalWidgetRun.matchConstraintsType == 3) {
                return;
            }
        }
        if (i == 0) {
            widgetRun2 = constraintWidget.mVerticalRun;
        }
        if (widgetRun2.mDimension.resolved) {
            float dimensionRatio = constraintWidget.getDimensionRatio();
            if (i == 1) {
                i3 = (int) ((widgetRun2.mDimension.value / dimensionRatio) + 0.5f);
            } else {
                i3 = (int) ((dimensionRatio * widgetRun2.mDimension.value) + 0.5f);
            }
            this.mDimension.resolve(i3);
        }
    }

    protected final int getLimitedDimension(int i, int i2) {
        if (i2 == 0) {
            ConstraintWidget constraintWidget = this.mWidget;
            int i3 = constraintWidget.mMatchConstraintMaxWidth;
            int iMax = Math.max(constraintWidget.mMatchConstraintMinWidth, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            if (iMax != i) {
                return iMax;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.mWidget;
            int i4 = constraintWidget2.mMatchConstraintMaxHeight;
            int iMax2 = Math.max(constraintWidget2.mMatchConstraintMinHeight, i);
            if (i4 > 0) {
                iMax2 = Math.min(i4, i);
            }
            if (iMax2 != i) {
                return iMax2;
            }
        }
        return i;
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i == 0 ? constraintWidget.mHorizontalRun : constraintWidget.mVerticalRun;
        int i2 = C03371.f37x6930e354[constraintAnchor2.mType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.mTargets.add(dependencyNode2);
        dependencyNode.mMargin = i;
        dependencyNode2.mDependencies.add(dependencyNode);
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.mTargets.add(dependencyNode2);
        dependencyNode.mTargets.add(this.mDimension);
        dependencyNode.mMarginFactor = i;
        dependencyNode.mMarginDependency = dimensionDependency;
        dependencyNode2.mDependencies.add(dependencyNode);
        dimensionDependency.mDependencies.add(dependencyNode);
    }

    public long getWrapDimension() {
        if (this.mDimension.resolved) {
            return r0.value;
        }
        return 0L;
    }

    public boolean isResolved() {
        return this.mResolved;
    }
}
