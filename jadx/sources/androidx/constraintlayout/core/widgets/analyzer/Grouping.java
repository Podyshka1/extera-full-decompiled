package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Grouping {
    public static boolean validInGroup(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.FIXED;
        return (dimensionBehaviour3 == dimensionBehaviour7 || dimensionBehaviour3 == (dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != dimensionBehaviour6)) || (dimensionBehaviour4 == dimensionBehaviour7 || dimensionBehaviour4 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != dimensionBehaviour5));
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x0341  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean simpleSolvingPass(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure.Measurer measurer) {
        WidgetGroup widgetGroup;
        boolean z;
        WidgetGroup widgetGroup2;
        ArrayList children = constraintWidgetContainer.getChildren();
        int size = children.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) children.get(i2);
            if (!validInGroup(constraintWidgetContainer.getHorizontalDimensionBehaviour(), constraintWidgetContainer.getVerticalDimensionBehaviour(), constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getVerticalDimensionBehaviour()) || (constraintWidget instanceof Flow)) {
                return false;
            }
        }
        int i3 = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        while (i3 < size) {
            ConstraintWidget constraintWidget2 = (ConstraintWidget) children.get(i3);
            if (!validInGroup(constraintWidgetContainer.getHorizontalDimensionBehaviour(), constraintWidgetContainer.getVerticalDimensionBehaviour(), constraintWidget2.getHorizontalDimensionBehaviour(), constraintWidget2.getVerticalDimensionBehaviour())) {
                ConstraintWidgetContainer.measure(i, constraintWidget2, measurer, constraintWidgetContainer.mMeasure, BasicMeasure.Measure.SELF_DIMENSIONS);
            }
            boolean z2 = constraintWidget2 instanceof Guideline;
            if (z2) {
                Guideline guideline = (Guideline) constraintWidget2;
                if (guideline.getOrientation() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(guideline);
                }
                if (guideline.getOrientation() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(guideline);
                }
            }
            if (constraintWidget2 instanceof HelperWidget) {
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    if (barrier.getOrientation() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(barrier);
                    }
                    if (barrier.getOrientation() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(barrier);
                    }
                } else {
                    HelperWidget helperWidget = (HelperWidget) constraintWidget2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(helperWidget);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(helperWidget);
                }
            }
            if (constraintWidget2.mLeft.mTarget == null && constraintWidget2.mRight.mTarget == null && !z2 && !(constraintWidget2 instanceof Barrier)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(constraintWidget2);
            }
            if (constraintWidget2.mTop.mTarget == null && constraintWidget2.mBottom.mTarget == null && constraintWidget2.mBaseline.mTarget == null && !z2 && !(constraintWidget2 instanceof Barrier)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(constraintWidget2);
            }
            i3++;
            i = 0;
        }
        ArrayList arrayList7 = new ArrayList();
        if (arrayList != null) {
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj = arrayList.get(i4);
                i4++;
                findDependents((Guideline) obj, 0, arrayList7, null);
            }
        }
        if (arrayList2 != null) {
            int size3 = arrayList2.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj2 = arrayList2.get(i5);
                i5++;
                HelperWidget helperWidget2 = (HelperWidget) obj2;
                WidgetGroup widgetGroupFindDependents = findDependents(helperWidget2, 0, arrayList7, null);
                helperWidget2.addDependents(arrayList7, 0, widgetGroupFindDependents);
                widgetGroupFindDependents.cleanup(arrayList7);
            }
        }
        ConstraintAnchor anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.LEFT);
        if (anchor.getDependents() != null) {
            Iterator it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                findDependents(((ConstraintAnchor) it.next()).mOwner, 0, arrayList7, null);
            }
        }
        ConstraintAnchor anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.RIGHT);
        if (anchor2.getDependents() != null) {
            Iterator it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                findDependents(((ConstraintAnchor) it2.next()).mOwner, 0, arrayList7, null);
            }
        }
        ConstraintAnchor anchor3 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.CENTER);
        if (anchor3.getDependents() != null) {
            Iterator it3 = anchor3.getDependents().iterator();
            while (it3.hasNext()) {
                findDependents(((ConstraintAnchor) it3.next()).mOwner, 0, arrayList7, null);
            }
        }
        if (arrayList5 != null) {
            int size4 = arrayList5.size();
            int i6 = 0;
            while (i6 < size4) {
                Object obj3 = arrayList5.get(i6);
                i6++;
                findDependents((ConstraintWidget) obj3, 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            int size5 = arrayList3.size();
            int i7 = 0;
            while (i7 < size5) {
                Object obj4 = arrayList3.get(i7);
                i7++;
                findDependents((Guideline) obj4, 1, arrayList7, null);
            }
        }
        if (arrayList4 != null) {
            int size6 = arrayList4.size();
            int i8 = 0;
            while (i8 < size6) {
                Object obj5 = arrayList4.get(i8);
                i8++;
                HelperWidget helperWidget3 = (HelperWidget) obj5;
                WidgetGroup widgetGroupFindDependents2 = findDependents(helperWidget3, 1, arrayList7, null);
                helperWidget3.addDependents(arrayList7, 1, widgetGroupFindDependents2);
                widgetGroupFindDependents2.cleanup(arrayList7);
            }
        }
        ConstraintAnchor anchor4 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.TOP);
        if (anchor4.getDependents() != null) {
            Iterator it4 = anchor4.getDependents().iterator();
            while (it4.hasNext()) {
                findDependents(((ConstraintAnchor) it4.next()).mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor anchor5 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.BASELINE);
        if (anchor5.getDependents() != null) {
            Iterator it5 = anchor5.getDependents().iterator();
            while (it5.hasNext()) {
                findDependents(((ConstraintAnchor) it5.next()).mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor anchor6 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.BOTTOM);
        if (anchor6.getDependents() != null) {
            Iterator it6 = anchor6.getDependents().iterator();
            while (it6.hasNext()) {
                findDependents(((ConstraintAnchor) it6.next()).mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor anchor7 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.CENTER);
        if (anchor7.getDependents() != null) {
            Iterator it7 = anchor7.getDependents().iterator();
            while (it7.hasNext()) {
                findDependents(((ConstraintAnchor) it7.next()).mOwner, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            int size7 = arrayList6.size();
            int i9 = 0;
            while (i9 < size7) {
                Object obj6 = arrayList6.get(i9);
                i9++;
                findDependents((ConstraintWidget) obj6, 1, arrayList7, null);
            }
        }
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget3 = (ConstraintWidget) children.get(i10);
            if (constraintWidget3.oppositeDimensionsTied()) {
                WidgetGroup widgetGroupFindGroup = findGroup(arrayList7, constraintWidget3.horizontalGroup);
                WidgetGroup widgetGroupFindGroup2 = findGroup(arrayList7, constraintWidget3.verticalGroup);
                if (widgetGroupFindGroup != null && widgetGroupFindGroup2 != null) {
                    widgetGroupFindGroup.moveTo(0, widgetGroupFindGroup2);
                    widgetGroupFindGroup2.setOrientation(2);
                    arrayList7.remove(widgetGroupFindGroup);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            int size8 = arrayList7.size();
            widgetGroup = null;
            int i11 = 0;
            int i12 = 0;
            while (i12 < size8) {
                Object obj7 = arrayList7.get(i12);
                i12++;
                WidgetGroup widgetGroup3 = (WidgetGroup) obj7;
                if (widgetGroup3.getOrientation() != 1) {
                    widgetGroup3.setAuthoritative(false);
                    int iMeasureWrap = widgetGroup3.measureWrap(constraintWidgetContainer.getSystem(), 0);
                    if (iMeasureWrap > i11) {
                        widgetGroup = widgetGroup3;
                        i11 = iMeasureWrap;
                    }
                }
            }
            if (widgetGroup != null) {
                constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setWidth(i11);
                widgetGroup.setAuthoritative(true);
            } else {
                widgetGroup = null;
            }
        }
        if (constraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            int size9 = arrayList7.size();
            widgetGroup2 = null;
            int i13 = 0;
            int i14 = 0;
            while (i13 < size9) {
                Object obj8 = arrayList7.get(i13);
                i13++;
                WidgetGroup widgetGroup4 = (WidgetGroup) obj8;
                if (widgetGroup4.getOrientation() != 0) {
                    widgetGroup4.setAuthoritative(false);
                    int iMeasureWrap2 = widgetGroup4.measureWrap(constraintWidgetContainer.getSystem(), 1);
                    if (iMeasureWrap2 > i14) {
                        widgetGroup2 = widgetGroup4;
                        i14 = iMeasureWrap2;
                    }
                }
            }
            z = true;
            if (widgetGroup2 != null) {
                constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.setHeight(i14);
                widgetGroup2.setAuthoritative(true);
            }
            if (widgetGroup == null || widgetGroup2 != null) {
                return z;
            }
            return false;
        }
        z = true;
        widgetGroup2 = null;
        if (widgetGroup == null) {
        }
        return z;
    }

    private static WidgetGroup findGroup(ArrayList arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            WidgetGroup widgetGroup = (WidgetGroup) arrayList.get(i2);
            if (i == widgetGroup.getId()) {
                return widgetGroup;
            }
        }
        return null;
    }

    public static WidgetGroup findDependents(ConstraintWidget constraintWidget, int i, ArrayList arrayList, WidgetGroup widgetGroup) {
        int i2;
        int iFindGroupInDependents;
        if (i == 0) {
            i2 = constraintWidget.horizontalGroup;
        } else {
            i2 = constraintWidget.verticalGroup;
        }
        if (i2 != -1 && (widgetGroup == null || i2 != widgetGroup.getId())) {
            int i3 = 0;
            while (true) {
                if (i3 >= arrayList.size()) {
                    break;
                }
                WidgetGroup widgetGroup2 = (WidgetGroup) arrayList.get(i3);
                if (widgetGroup2.getId() == i2) {
                    if (widgetGroup != null) {
                        widgetGroup.moveTo(i, widgetGroup2);
                        arrayList.remove(widgetGroup);
                    }
                    widgetGroup = widgetGroup2;
                } else {
                    i3++;
                }
            }
        } else if (i2 != -1) {
            return widgetGroup;
        }
        if (widgetGroup == null) {
            if ((constraintWidget instanceof HelperWidget) && (iFindGroupInDependents = ((HelperWidget) constraintWidget).findGroupInDependents(i)) != -1) {
                int i4 = 0;
                while (true) {
                    if (i4 >= arrayList.size()) {
                        break;
                    }
                    WidgetGroup widgetGroup3 = (WidgetGroup) arrayList.get(i4);
                    if (widgetGroup3.getId() == iFindGroupInDependents) {
                        widgetGroup = widgetGroup3;
                        break;
                    }
                    i4++;
                }
            }
            if (widgetGroup == null) {
                widgetGroup = new WidgetGroup(i);
            }
            arrayList.add(widgetGroup);
        }
        if (widgetGroup.add(constraintWidget)) {
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                guideline.getAnchor().findDependents(guideline.getOrientation() == 0 ? 1 : 0, arrayList, widgetGroup);
            }
            if (i == 0) {
                constraintWidget.horizontalGroup = widgetGroup.getId();
                constraintWidget.mLeft.findDependents(i, arrayList, widgetGroup);
                constraintWidget.mRight.findDependents(i, arrayList, widgetGroup);
            } else {
                constraintWidget.verticalGroup = widgetGroup.getId();
                constraintWidget.mTop.findDependents(i, arrayList, widgetGroup);
                constraintWidget.mBaseline.findDependents(i, arrayList, widgetGroup);
                constraintWidget.mBottom.findDependents(i, arrayList, widgetGroup);
            }
            constraintWidget.mCenter.findDependents(i, arrayList, widgetGroup);
        }
        return widgetGroup;
    }
}
