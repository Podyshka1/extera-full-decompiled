package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class FinderPatternFinder {
    private static final EstimatedModuleComparator moduleComparator = new EstimatedModuleComparator();
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List possibleCenters = new ArrayList();
    private final int[] crossCheckStateCount = new int[5];

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
    }

    final FinderPatternInfo find(Map map) throws NotFoundException {
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i = (height * 3) / 388;
        if (i < 3 || z) {
            i = 3;
        }
        int[] iArr = new int[5];
        int i2 = i - 1;
        boolean zHaveMultiplyConfirmedCenters = false;
        while (i2 < height && !zHaveMultiplyConfirmedCenters) {
            clearCounts(iArr);
            int i3 = 0;
            int i4 = 0;
            while (i3 < width) {
                if (this.image.get(i3, i2)) {
                    if ((i4 & 1) == 1) {
                        i4++;
                    }
                    iArr[i4] = iArr[i4] + 1;
                } else if ((i4 & 1) != 0) {
                    iArr[i4] = iArr[i4] + 1;
                } else if (i4 == 4) {
                    if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i2, i3)) {
                        if (this.hasSkipped) {
                            zHaveMultiplyConfirmedCenters = haveMultiplyConfirmedCenters();
                        } else {
                            int iFindRowSkip = findRowSkip();
                            int i5 = iArr[2];
                            if (iFindRowSkip > i5) {
                                i2 += (iFindRowSkip - i5) - 2;
                                i3 = width - 1;
                            }
                        }
                        clearCounts(iArr);
                        i = 2;
                        i4 = 0;
                    } else {
                        shiftCounts2(iArr);
                        i4 = 3;
                    }
                } else {
                    i4++;
                    iArr[i4] = iArr[i4] + 1;
                }
                i3++;
            }
            if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i2, width)) {
                i = iArr[0];
                if (this.hasSkipped) {
                    zHaveMultiplyConfirmedCenters = haveMultiplyConfirmedCenters();
                }
            }
            i2 += i;
        }
        FinderPattern[] finderPatternArrSelectBestPatterns = selectBestPatterns();
        ResultPoint.orderBestPatterns(finderPatternArrSelectBestPatterns);
        return new FinderPatternInfo(finderPatternArrSelectBestPatterns);
    }

    private static float centerFromEnd(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    protected static boolean foundPatternCross(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 2.0f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    protected static boolean foundPatternDiagonal(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 1.333f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    private int[] getCrossCheckStateCount() {
        clearCounts(this.crossCheckStateCount);
        return this.crossCheckStateCount;
    }

    protected final void clearCounts(int[] iArr) {
        Arrays.fill(iArr, 0);
    }

    protected final void shiftCounts2(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    private boolean crossCheckDiagonal(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i6 = 0;
        while (i >= i6 && i2 >= i6 && this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i6++;
        }
        if (crossCheckStateCount[2] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && !this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i6++;
        }
        if (crossCheckStateCount[1] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
            i6++;
        }
        if (crossCheckStateCount[0] == 0) {
            return false;
        }
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i7 = 1;
        while (true) {
            int i8 = i + i7;
            if (i8 >= height || (i5 = i2 + i7) >= width || !this.image.get(i5, i8)) {
                break;
            }
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i7++;
        }
        while (true) {
            int i9 = i + i7;
            if (i9 >= height || (i4 = i2 + i7) >= width || this.image.get(i4, i9)) {
                break;
            }
            crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
            i7++;
        }
        if (crossCheckStateCount[3] == 0) {
            return false;
        }
        while (true) {
            int i10 = i + i7;
            if (i10 >= height || (i3 = i2 + i7) >= width || !this.image.get(i3, i10)) {
                break;
            }
            crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
            i7++;
        }
        if (crossCheckStateCount[4] == 0) {
            return false;
        }
        return foundPatternDiagonal(crossCheckStateCount);
    }

    private float crossCheckVertical(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        BitMatrix bitMatrix = this.image;
        int height = bitMatrix.getHeight();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i8 = i;
        while (i8 >= 0 && bitMatrix.get(i2, i8)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i8--;
        }
        if (i8 < 0) {
            return Float.NaN;
        }
        while (i8 >= 0 && !bitMatrix.get(i2, i8)) {
            int i9 = crossCheckStateCount[1];
            if (i9 > i3) {
                break;
            }
            crossCheckStateCount[1] = i9 + 1;
            i8--;
        }
        if (i8 >= 0 && crossCheckStateCount[1] <= i3) {
            while (i8 >= 0 && bitMatrix.get(i2, i8) && (i7 = crossCheckStateCount[0]) <= i3) {
                crossCheckStateCount[0] = i7 + 1;
                i8--;
            }
            if (crossCheckStateCount[0] > i3) {
                return Float.NaN;
            }
            int i10 = i + 1;
            while (i10 < height && bitMatrix.get(i2, i10)) {
                crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
                i10++;
            }
            if (i10 == height) {
                return Float.NaN;
            }
            while (i10 < height && !bitMatrix.get(i2, i10) && (i6 = crossCheckStateCount[3]) < i3) {
                crossCheckStateCount[3] = i6 + 1;
                i10++;
            }
            if (i10 != height && crossCheckStateCount[3] < i3) {
                while (i10 < height && bitMatrix.get(i2, i10) && (i5 = crossCheckStateCount[4]) < i3) {
                    crossCheckStateCount[4] = i5 + 1;
                    i10++;
                }
                int i11 = crossCheckStateCount[4];
                if (i11 < i3 && Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + i11) - i4) * 5 < i4 * 2 && foundPatternCross(crossCheckStateCount)) {
                    return centerFromEnd(crossCheckStateCount, i10);
                }
            }
        }
        return Float.NaN;
    }

    private float crossCheckHorizontal(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        BitMatrix bitMatrix = this.image;
        int width = bitMatrix.getWidth();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i8 = i;
        while (i8 >= 0 && bitMatrix.get(i8, i2)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i8--;
        }
        if (i8 < 0) {
            return Float.NaN;
        }
        while (i8 >= 0 && !bitMatrix.get(i8, i2)) {
            int i9 = crossCheckStateCount[1];
            if (i9 > i3) {
                break;
            }
            crossCheckStateCount[1] = i9 + 1;
            i8--;
        }
        if (i8 >= 0 && crossCheckStateCount[1] <= i3) {
            while (i8 >= 0 && bitMatrix.get(i8, i2) && (i7 = crossCheckStateCount[0]) <= i3) {
                crossCheckStateCount[0] = i7 + 1;
                i8--;
            }
            if (crossCheckStateCount[0] > i3) {
                return Float.NaN;
            }
            int i10 = i + 1;
            while (i10 < width && bitMatrix.get(i10, i2)) {
                crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
                i10++;
            }
            if (i10 == width) {
                return Float.NaN;
            }
            while (i10 < width && !bitMatrix.get(i10, i2) && (i6 = crossCheckStateCount[3]) < i3) {
                crossCheckStateCount[3] = i6 + 1;
                i10++;
            }
            if (i10 != width && crossCheckStateCount[3] < i3) {
                while (i10 < width && bitMatrix.get(i10, i2) && (i5 = crossCheckStateCount[4]) < i3) {
                    crossCheckStateCount[4] = i5 + 1;
                    i10++;
                }
                int i11 = crossCheckStateCount[4];
                if (i11 < i3 && Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + i11) - i4) * 5 < i4 && foundPatternCross(crossCheckStateCount)) {
                    return centerFromEnd(crossCheckStateCount, i10);
                }
            }
        }
        return Float.NaN;
    }

    protected final boolean handlePossibleCenter(int[] iArr, int i, int i2) {
        int i3 = 0;
        int i4 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int iCenterFromEnd = (int) centerFromEnd(iArr, i2);
        float fCrossCheckVertical = crossCheckVertical(i, iCenterFromEnd, iArr[2], i4);
        if (!Float.isNaN(fCrossCheckVertical)) {
            int i5 = (int) fCrossCheckVertical;
            float fCrossCheckHorizontal = crossCheckHorizontal(iCenterFromEnd, i5, iArr[2], i4);
            if (!Float.isNaN(fCrossCheckHorizontal) && crossCheckDiagonal(i5, (int) fCrossCheckHorizontal)) {
                float f = i4 / 7.0f;
                while (true) {
                    if (i3 < this.possibleCenters.size()) {
                        FinderPattern finderPattern = (FinderPattern) this.possibleCenters.get(i3);
                        if (finderPattern.aboutEquals(f, fCrossCheckVertical, fCrossCheckHorizontal)) {
                            this.possibleCenters.set(i3, finderPattern.combineEstimate(fCrossCheckVertical, fCrossCheckHorizontal, f));
                            break;
                        }
                        i3++;
                    } else {
                        this.possibleCenters.add(new FinderPattern(fCrossCheckHorizontal, fCrossCheckVertical, f));
                        break;
                    }
                }
                return true;
            }
        }
        return false;
    }

    private int findRowSkip() {
        if (this.possibleCenters.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            if (finderPattern2.getCount() >= 2) {
                if (finderPattern != null) {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
                finderPattern = finderPattern2;
            }
        }
        return 0;
    }

    private boolean haveMultiplyConfirmedCenters() {
        int size = this.possibleCenters.size();
        float fAbs = 0.0f;
        int i = 0;
        float estimatedModuleSize = 0.0f;
        for (FinderPattern finderPattern : this.possibleCenters) {
            if (finderPattern.getCount() >= 2) {
                i++;
                estimatedModuleSize += finderPattern.getEstimatedModuleSize();
            }
        }
        if (i < 3) {
            return false;
        }
        float f = estimatedModuleSize / size;
        Iterator it = this.possibleCenters.iterator();
        while (it.hasNext()) {
            fAbs += Math.abs(((FinderPattern) it.next()).getEstimatedModuleSize() - f);
        }
        return fAbs <= estimatedModuleSize * 0.05f;
    }

    private static double squaredDistance(FinderPattern finderPattern, FinderPattern finderPattern2) {
        double x = finderPattern.getX() - finderPattern2.getX();
        double y = finderPattern.getY() - finderPattern2.getY();
        return (x * x) + (y * y);
    }

    private FinderPattern[] selectBestPatterns() throws NotFoundException {
        if (this.possibleCenters.size() < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        Collections.sort(this.possibleCenters, moduleComparator);
        FinderPattern[] finderPatternArr = new FinderPattern[3];
        int i = 0;
        double d = Double.MAX_VALUE;
        while (i < this.possibleCenters.size() - 2) {
            FinderPattern finderPattern = (FinderPattern) this.possibleCenters.get(i);
            float estimatedModuleSize = finderPattern.getEstimatedModuleSize();
            i++;
            int i2 = i;
            while (i2 < this.possibleCenters.size() - 1) {
                FinderPattern finderPattern2 = (FinderPattern) this.possibleCenters.get(i2);
                double dSquaredDistance = squaredDistance(finderPattern, finderPattern2);
                i2++;
                for (int i3 = i2; i3 < this.possibleCenters.size(); i3++) {
                    FinderPattern finderPattern3 = (FinderPattern) this.possibleCenters.get(i3);
                    if (finderPattern3.getEstimatedModuleSize() <= 1.4f * estimatedModuleSize) {
                        double[] dArr = {dSquaredDistance, squaredDistance(finderPattern2, finderPattern3), squaredDistance(finderPattern, finderPattern3)};
                        Arrays.sort(dArr);
                        double dAbs = Math.abs(dArr[2] - (dArr[1] * 2.0d)) + Math.abs(dArr[2] - (dArr[0] * 2.0d));
                        if (dAbs < d) {
                            finderPatternArr[0] = finderPattern;
                            finderPatternArr[1] = finderPattern2;
                            finderPatternArr[2] = finderPattern3;
                            d = dAbs;
                        }
                    }
                }
            }
        }
        if (d != Double.MAX_VALUE) {
            return finderPatternArr;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static final class EstimatedModuleComparator implements Comparator, Serializable {
        private EstimatedModuleComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            return Float.compare(finderPattern.getEstimatedModuleSize(), finderPattern2.getEstimatedModuleSize());
        }
    }
}
