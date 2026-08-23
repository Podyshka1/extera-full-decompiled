package com.google.zxing.qrcode.detector;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class Detector {
    private final BitMatrix image;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    public final DetectorResult detect(Map map) {
        if (map != null) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK));
        }
        return processFinderPatternInfo(new FinderPatternFinder(this.image, null).find(map));
    }

    protected final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        AlignmentPattern alignmentPatternFindAlignmentInRegion;
        ResultPoint[] resultPointArr;
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float fCalculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (fCalculateModuleSize < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iComputeDimension = computeDimension(topLeft, topRight, bottomLeft, fCalculateModuleSize);
        Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(iComputeDimension);
        int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
        if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
            float x = (topRight.getX() - topLeft.getX()) + bottomLeft.getX();
            float y = (topRight.getY() - topLeft.getY()) + bottomLeft.getY();
            float f = 1.0f - (3.0f / dimensionForVersion);
            int x2 = (int) (topLeft.getX() + ((x - topLeft.getX()) * f));
            int y2 = (int) (topLeft.getY() + (f * (y - topLeft.getY())));
            for (int i = 4; i <= 16; i <<= 1) {
                try {
                    alignmentPatternFindAlignmentInRegion = findAlignmentInRegion(fCalculateModuleSize, x2, y2, i);
                    break;
                } catch (NotFoundException unused) {
                }
            }
            alignmentPatternFindAlignmentInRegion = null;
        } else {
            alignmentPatternFindAlignmentInRegion = null;
        }
        BitMatrix bitMatrixSampleGrid = sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPatternFindAlignmentInRegion, iComputeDimension), iComputeDimension);
        if (alignmentPatternFindAlignmentInRegion == null) {
            resultPointArr = new ResultPoint[]{bottomLeft, topLeft, topRight};
        } else {
            resultPointArr = new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPatternFindAlignmentInRegion};
        }
        return new DetectorResult(bitMatrixSampleGrid, resultPointArr);
    }

    private static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float x;
        float y;
        float f;
        float f2 = i - 3.5f;
        if (resultPoint4 != null) {
            x = resultPoint4.getX();
            y = resultPoint4.getY();
            f = f2 - 3.0f;
        } else {
            x = (resultPoint2.getX() - resultPoint.getX()) + resultPoint3.getX();
            y = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f = f2;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f2, 3.5f, f, f, 3.5f, f2, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x, y, resultPoint3.getX(), resultPoint3.getY());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i) {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i, perspectiveTransform);
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f) {
        int iRound = (MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2) / f) + MathUtils.round(ResultPoint.distance(resultPoint, resultPoint3) / f)) / 2;
        int i = iRound + 7;
        int i2 = i & 3;
        return i2 != 0 ? i2 != 2 ? i2 != 3 ? i : iRound + 9 : iRound + 6 : iRound + 8;
    }

    protected final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float fSizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float fSizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays) ? fSizeOfBlackWhiteBlackRunBothWays2 / 7.0f : Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays2) ? fSizeOfBlackWhiteBlackRunBothWays / 7.0f : (fSizeOfBlackWhiteBlackRunBothWays + fSizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i, int i2, int i3, int i4) {
        float width;
        float height;
        float fSizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i, i2, i3, i4);
        int width2 = i - (i3 - i);
        int height2 = 0;
        if (width2 < 0) {
            width = i / (i - width2);
            width2 = 0;
        } else if (width2 >= this.image.getWidth()) {
            width = ((this.image.getWidth() - 1) - i) / (width2 - i);
            width2 = this.image.getWidth() - 1;
        } else {
            width = 1.0f;
        }
        float f = i2;
        int i5 = (int) (f - ((i4 - i2) * width));
        if (i5 < 0) {
            height = f / (i2 - i5);
        } else if (i5 >= this.image.getHeight()) {
            height = ((this.image.getHeight() - 1) - i2) / (i5 - i2);
            height2 = this.image.getHeight() - 1;
        } else {
            height2 = i5;
            height = 1.0f;
        }
        return (fSizeOfBlackWhiteBlackRun + sizeOfBlackWhiteBlackRun(i, i2, (int) (i + ((width2 - i) * height)), height2)) - 1.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0083, code lost:
    
        if (r15 != r0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0089, code lost:
    
        return com.google.zxing.common.detector.MathUtils.distance(r5, r6, r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008a, code lost:
    
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float sizeOfBlackWhiteBlackRun(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Detector detector;
        int i11;
        int i12 = 1;
        boolean z = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int iAbs = Math.abs(i7 - i5);
        int iAbs2 = Math.abs(i8 - i6);
        int i13 = 2;
        int i14 = (-iAbs) / 2;
        int i15 = i5 < i7 ? 1 : -1;
        int i16 = i6 < i8 ? 1 : -1;
        int i17 = i7 + i15;
        int i18 = i5;
        int i19 = i6;
        int i20 = 0;
        while (true) {
            if (i18 == i17) {
                i9 = i13;
                break;
            }
            int i21 = z ? i19 : i18;
            int i22 = z ? i18 : i19;
            boolean z2 = z;
            if (i20 == i12) {
                i10 = i12;
                i11 = iAbs;
                detector = this;
            } else {
                i10 = 0;
                detector = this;
                i11 = iAbs;
            }
            if (i10 == detector.image.get(i21, i22)) {
                if (i20 == 2) {
                    return MathUtils.distance(i18, i19, i5, i6);
                }
                i20++;
            }
            i14 += iAbs2;
            if (i14 > 0) {
                if (i19 == i8) {
                    i9 = 2;
                    break;
                }
                i19 += i16;
                i14 -= i11;
            }
            i18 += i15;
            iAbs = i11;
            z = z2;
            i12 = 1;
            i13 = 2;
        }
    }

    protected final AlignmentPattern findAlignmentInRegion(float f, int i, int i2, float f2) throws NotFoundException {
        int i3 = (int) (f2 * f);
        int iMax = Math.max(0, i - i3);
        int iMin = Math.min(this.image.getWidth() - 1, i + i3) - iMax;
        float f3 = 3.0f * f;
        if (iMin < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i2 - i3);
        int iMin2 = Math.min(this.image.getHeight() - 1, i2 + i3) - iMax2;
        if (iMin2 < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        return new AlignmentPatternFinder(this.image, iMax, iMax2, iMin, iMin2, f, null).find();
    }
}
