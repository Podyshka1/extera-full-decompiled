package com.google.android.exoplayer2.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
final class DvbParser {
    private static final byte[] defaultMap2To4 = {0, 7, 8, 15};
    private static final byte[] defaultMap2To8 = {0, 119, -120, -1};
    private static final byte[] defaultMap4To8 = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private Bitmap bitmap;
    private final Canvas canvas;
    private final ClutDefinition defaultClutDefinition;
    private final DisplayDefinition defaultDisplayDefinition;
    private final Paint defaultPaint;
    private final Paint fillRegionPaint;
    private final SubtitleService subtitleService;

    private static int getColor(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public DvbParser(int i, int i2) {
        Paint paint = new Paint();
        this.defaultPaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.fillRegionPaint = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.canvas = new Canvas();
        this.defaultDisplayDefinition = new DisplayDefinition(719, 575, 0, 719, 0, 575);
        this.defaultClutDefinition = new ClutDefinition(0, generateDefault2BitClutEntries(), generateDefault4BitClutEntries(), generateDefault8BitClutEntries());
        this.subtitleService = new SubtitleService(i, i2);
    }

    public void reset() {
        this.subtitleService.reset();
    }

    public List decode(byte[] bArr, int i) {
        int i2;
        SparseArray sparseArray;
        int i3;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i);
        while (parsableBitArray.bitsLeft() >= 48 && parsableBitArray.readBits(8) == 15) {
            parseSubtitlingSegment(parsableBitArray, this.subtitleService);
        }
        SubtitleService subtitleService = this.subtitleService;
        PageComposition pageComposition = subtitleService.pageComposition;
        if (pageComposition == null) {
            return Collections.EMPTY_LIST;
        }
        DisplayDefinition displayDefinition = subtitleService.displayDefinition;
        if (displayDefinition == null) {
            displayDefinition = this.defaultDisplayDefinition;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null || displayDefinition.width + 1 != bitmap.getWidth() || displayDefinition.height + 1 != this.bitmap.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(displayDefinition.width + 1, displayDefinition.height + 1, Bitmap.Config.ARGB_8888);
            this.bitmap = bitmapCreateBitmap;
            this.canvas.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray2 = pageComposition.regions;
        int i4 = 0;
        while (i4 < sparseArray2.size()) {
            this.canvas.save();
            PageRegion pageRegion = (PageRegion) sparseArray2.valueAt(i4);
            RegionComposition regionComposition = (RegionComposition) this.subtitleService.regions.get(sparseArray2.keyAt(i4));
            int i5 = pageRegion.horizontalAddress + displayDefinition.horizontalPositionMinimum;
            int i6 = pageRegion.verticalAddress + displayDefinition.verticalPositionMinimum;
            this.canvas.clipRect(i5, i6, Math.min(regionComposition.width + i5, displayDefinition.horizontalPositionMaximum), Math.min(regionComposition.height + i6, displayDefinition.verticalPositionMaximum));
            ClutDefinition clutDefinition = (ClutDefinition) this.subtitleService.cluts.get(regionComposition.clutId);
            if (clutDefinition == null && (clutDefinition = (ClutDefinition) this.subtitleService.ancillaryCluts.get(regionComposition.clutId)) == null) {
                clutDefinition = this.defaultClutDefinition;
            }
            ClutDefinition clutDefinition2 = clutDefinition;
            SparseArray sparseArray3 = regionComposition.regionObjects;
            int i7 = 0;
            while (i7 < sparseArray3.size()) {
                int iKeyAt = sparseArray3.keyAt(i7);
                RegionObject regionObject = (RegionObject) sparseArray3.valueAt(i7);
                ObjectData objectData = (ObjectData) this.subtitleService.objects.get(iKeyAt);
                if (objectData == null) {
                    objectData = (ObjectData) this.subtitleService.ancillaryObjects.get(iKeyAt);
                }
                if (objectData != null) {
                    sparseArray = sparseArray2;
                    i3 = i7;
                    paintPixelDataSubBlocks(objectData, clutDefinition2, regionComposition.depth, regionObject.horizontalPosition + i5, regionObject.verticalPosition + i6, objectData.nonModifyingColorFlag ? null : this.defaultPaint, this.canvas);
                } else {
                    sparseArray = sparseArray2;
                    i3 = i7;
                }
                i7 = i3 + 1;
                sparseArray2 = sparseArray;
            }
            SparseArray sparseArray4 = sparseArray2;
            if (regionComposition.fillFlag) {
                int i8 = regionComposition.depth;
                if (i8 == 3) {
                    i2 = clutDefinition2.clutEntries8Bit[regionComposition.pixelCode8Bit];
                } else if (i8 == 2) {
                    i2 = clutDefinition2.clutEntries4Bit[regionComposition.pixelCode4Bit];
                } else {
                    i2 = clutDefinition2.clutEntries2Bit[regionComposition.pixelCode2Bit];
                }
                this.fillRegionPaint.setColor(i2);
                this.canvas.drawRect(i5, i6, regionComposition.width + i5, regionComposition.height + i6, this.fillRegionPaint);
            }
            arrayList.add(new Cue.Builder().setBitmap(Bitmap.createBitmap(this.bitmap, i5, i6, regionComposition.width, regionComposition.height)).setPosition(i5 / displayDefinition.width).setPositionAnchor(0).setLine(i6 / displayDefinition.height, 0).setLineAnchor(0).setSize(regionComposition.width / displayDefinition.width).setBitmapHeight(regionComposition.height / displayDefinition.height).build());
            this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.canvas.restore();
            i4++;
            sparseArray2 = sparseArray4;
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    private static void parseSubtitlingSegment(ParsableBitArray parsableBitArray, SubtitleService subtitleService) {
        RegionComposition regionComposition;
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        int bytePosition = parsableBitArray.getBytePosition() + bits3;
        if (bits3 * 8 > parsableBitArray.bitsLeft()) {
            Log.m329w("DvbParser", "Data field length exceeds limit");
            parsableBitArray.skipBits(parsableBitArray.bitsLeft());
            return;
        }
        switch (bits) {
            case 16:
                if (bits2 == subtitleService.subtitlePageId) {
                    PageComposition pageComposition = subtitleService.pageComposition;
                    PageComposition pageComposition2 = parsePageComposition(parsableBitArray, bits3);
                    if (pageComposition2.state != 0) {
                        subtitleService.pageComposition = pageComposition2;
                        subtitleService.regions.clear();
                        subtitleService.cluts.clear();
                        subtitleService.objects.clear();
                    } else if (pageComposition != null && pageComposition.version != pageComposition2.version) {
                        subtitleService.pageComposition = pageComposition2;
                    }
                }
                break;
            case 17:
                PageComposition pageComposition3 = subtitleService.pageComposition;
                if (bits2 == subtitleService.subtitlePageId && pageComposition3 != null) {
                    RegionComposition regionComposition2 = parseRegionComposition(parsableBitArray, bits3);
                    if (pageComposition3.state == 0 && (regionComposition = (RegionComposition) subtitleService.regions.get(regionComposition2.f329id)) != null) {
                        regionComposition2.mergeFrom(regionComposition);
                    }
                    subtitleService.regions.put(regionComposition2.f329id, regionComposition2);
                }
                break;
            case 18:
                if (bits2 == subtitleService.subtitlePageId) {
                    ClutDefinition clutDefinition = parseClutDefinition(parsableBitArray, bits3);
                    subtitleService.cluts.put(clutDefinition.f327id, clutDefinition);
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    ClutDefinition clutDefinition2 = parseClutDefinition(parsableBitArray, bits3);
                    subtitleService.ancillaryCluts.put(clutDefinition2.f327id, clutDefinition2);
                }
                break;
            case 19:
                if (bits2 == subtitleService.subtitlePageId) {
                    ObjectData objectData = parseObjectData(parsableBitArray);
                    subtitleService.objects.put(objectData.f328id, objectData);
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    ObjectData objectData2 = parseObjectData(parsableBitArray);
                    subtitleService.ancillaryObjects.put(objectData2.f328id, objectData2);
                }
                break;
            case 20:
                if (bits2 == subtitleService.subtitlePageId) {
                    subtitleService.displayDefinition = parseDisplayDefinition(parsableBitArray);
                }
                break;
        }
        parsableBitArray.skipBytes(bytePosition - parsableBitArray.getBytePosition());
    }

    private static DisplayDefinition parseDisplayDefinition(ParsableBitArray parsableBitArray) {
        int i;
        int i2;
        int i3;
        int bits;
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        if (bit) {
            int bits4 = parsableBitArray.readBits(16);
            int bits5 = parsableBitArray.readBits(16);
            int bits6 = parsableBitArray.readBits(16);
            bits = parsableBitArray.readBits(16);
            i3 = bits5;
            i2 = bits6;
            i = bits4;
        } else {
            i = 0;
            i2 = 0;
            i3 = bits2;
            bits = bits3;
        }
        return new DisplayDefinition(bits2, bits3, i, i3, i2, bits);
    }

    private static PageComposition parsePageComposition(ParsableBitArray parsableBitArray, int i) {
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(4);
        int bits3 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int bits4 = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(8);
            i2 -= 6;
            sparseArray.put(bits4, new PageRegion(parsableBitArray.readBits(16), parsableBitArray.readBits(16)));
        }
        return new PageComposition(bits, bits2, bits3, sparseArray);
    }

    private static RegionComposition parseRegionComposition(ParsableBitArray parsableBitArray, int i) {
        int i2;
        int bits;
        int bits2;
        char c;
        int bits3 = parsableBitArray.readBits(8);
        int i3 = 4;
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int i4 = 16;
        int bits4 = parsableBitArray.readBits(16);
        int bits5 = parsableBitArray.readBits(16);
        int bits6 = parsableBitArray.readBits(3);
        int bits7 = parsableBitArray.readBits(3);
        int i5 = 2;
        parsableBitArray.skipBits(2);
        int bits8 = parsableBitArray.readBits(8);
        int bits9 = parsableBitArray.readBits(8);
        int bits10 = parsableBitArray.readBits(4);
        int bits11 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i6 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i6 > 0) {
            int bits12 = parsableBitArray.readBits(i4);
            int bits13 = parsableBitArray.readBits(i5);
            int bits14 = parsableBitArray.readBits(i5);
            int bits15 = parsableBitArray.readBits(12);
            parsableBitArray.skipBits(i3);
            int bits16 = parsableBitArray.readBits(12);
            int i7 = i6 - 6;
            if (bits13 != 1) {
                i2 = 2;
                if (bits13 != 2) {
                    bits2 = 0;
                    bits = 0;
                    i6 = i7;
                    c = '\b';
                }
                sparseArray.put(bits12, new RegionObject(bits13, bits14, bits15, bits16, bits2, bits));
                i4 = 16;
                i5 = i2;
                i3 = 4;
            } else {
                i2 = 2;
            }
            c = '\b';
            i6 -= 8;
            bits2 = parsableBitArray.readBits(8);
            bits = parsableBitArray.readBits(8);
            sparseArray.put(bits12, new RegionObject(bits13, bits14, bits15, bits16, bits2, bits));
            i4 = 16;
            i5 = i2;
            i3 = 4;
        }
        return new RegionComposition(bits3, bit, bits4, bits5, bits6, bits7, bits8, bits9, bits10, bits11, sparseArray);
    }

    private static ClutDefinition parseClutDefinition(ParsableBitArray parsableBitArray, int i) {
        int bits;
        int i2;
        int bits2;
        int bits3;
        int bits4;
        int i3 = 8;
        int bits5 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(8);
        int i4 = 2;
        int i5 = i - 2;
        int[] iArrGenerateDefault2BitClutEntries = generateDefault2BitClutEntries();
        int[] iArrGenerateDefault4BitClutEntries = generateDefault4BitClutEntries();
        int[] iArrGenerateDefault8BitClutEntries = generateDefault8BitClutEntries();
        while (i5 > 0) {
            int bits6 = parsableBitArray.readBits(i3);
            int bits7 = parsableBitArray.readBits(i3);
            int[] iArr = (bits7 & 128) != 0 ? iArrGenerateDefault2BitClutEntries : (bits7 & 64) != 0 ? iArrGenerateDefault4BitClutEntries : iArrGenerateDefault8BitClutEntries;
            if ((bits7 & 1) != 0) {
                bits3 = parsableBitArray.readBits(i3);
                bits4 = parsableBitArray.readBits(i3);
                bits = parsableBitArray.readBits(i3);
                bits2 = parsableBitArray.readBits(i3);
                i2 = i5 - 6;
            } else {
                int bits8 = parsableBitArray.readBits(6) << i4;
                int bits9 = parsableBitArray.readBits(4) << 4;
                bits = parsableBitArray.readBits(4) << 4;
                i2 = i5 - 4;
                bits2 = parsableBitArray.readBits(i4) << 6;
                bits3 = bits8;
                bits4 = bits9;
            }
            if (bits3 == 0) {
                bits2 = 255;
                bits4 = 0;
                bits = 0;
            }
            double d = bits3;
            double d2 = bits4 - 128;
            double d3 = bits - 128;
            iArr[bits6] = getColor((byte) (255 - (bits2 & 255)), Util.constrainValue((int) (d + (1.402d * d2)), 0, 255), Util.constrainValue((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), Util.constrainValue((int) (d + (d3 * 1.772d)), 0, 255));
            i5 = i2;
            bits5 = bits5;
            i3 = 8;
            i4 = 2;
        }
        return new ClutDefinition(bits5, iArrGenerateDefault2BitClutEntries, iArrGenerateDefault4BitClutEntries, iArrGenerateDefault8BitClutEntries);
    }

    private static ObjectData parseObjectData(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int bits = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(4);
        int bits2 = parsableBitArray.readBits(2);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(1);
        byte[] bArr2 = Util.EMPTY_BYTE_ARRAY;
        if (bits2 == 1) {
            parsableBitArray.skipBits(parsableBitArray.readBits(8) * 16);
        } else {
            if (bits2 == 0) {
                int bits3 = parsableBitArray.readBits(16);
                int bits4 = parsableBitArray.readBits(16);
                if (bits3 > 0) {
                    bArr2 = new byte[bits3];
                    parsableBitArray.readBytes(bArr2, 0, bits3);
                }
                if (bits4 > 0) {
                    bArr = new byte[bits4];
                    parsableBitArray.readBytes(bArr, 0, bits4);
                }
            }
            return new ObjectData(bits, bit, bArr2, bArr);
        }
        bArr = bArr2;
        return new ObjectData(bits, bit, bArr2, bArr);
    }

    private static int[] generateDefault2BitClutEntries() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    private static int[] generateDefault4BitClutEntries() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = getColor(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = getColor(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] generateDefault8BitClutEntries() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            if (i < 8) {
                iArr[i] = getColor(63, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            } else {
                int i2 = i & 136;
                if (i2 == 0) {
                    iArr[i] = getColor(255, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 8) {
                    iArr[i] = getColor(127, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 128) {
                    iArr[i] = getColor(255, ((i & 1) != 0 ? 43 : 0) + 127 + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + 127 + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + 127 + ((i & 64) == 0 ? 0 : 85));
                } else if (i2 == 136) {
                    iArr[i] = getColor(255, ((i & 1) != 0 ? 43 : 0) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static void paintPixelDataSubBlocks(ObjectData objectData, ClutDefinition clutDefinition, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i == 3) {
            iArr = clutDefinition.clutEntries8Bit;
        } else if (i == 2) {
            iArr = clutDefinition.clutEntries4Bit;
        } else {
            iArr = clutDefinition.clutEntries2Bit;
        }
        int[] iArr2 = iArr;
        paintPixelDataSubBlock(objectData.topFieldData, iArr2, i, i2, i3, paint, canvas);
        paintPixelDataSubBlock(objectData.bottomFieldData, iArr2, i, i2, i3 + 1, paint, canvas);
    }

    private static void paintPixelDataSubBlock(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr2;
        Paint paint2;
        Canvas canvas2;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        byte[] bArrBuildClutMapTable = null;
        byte[] bArrBuildClutMapTable2 = null;
        int iPaint2BitPixelCodeString = i2;
        int i4 = i3;
        byte[] bArrBuildClutMapTable3 = null;
        while (parsableBitArray.bitsLeft() != 0) {
            int bits = parsableBitArray.readBits(8);
            if (bits != 240) {
                switch (bits) {
                    case 16:
                        iArr2 = iArr;
                        Paint paint3 = paint;
                        canvas2 = canvas;
                        if (i == 3) {
                            bArr3 = bArrBuildClutMapTable3 == null ? defaultMap2To8 : bArrBuildClutMapTable3;
                        } else if (i == 2) {
                            bArr3 = bArrBuildClutMapTable2 == null ? defaultMap2To4 : bArrBuildClutMapTable2;
                        } else {
                            bArr2 = null;
                            paint2 = paint3;
                            iPaint2BitPixelCodeString = paint2BitPixelCodeString(parsableBitArray, iArr2, bArr2, iPaint2BitPixelCodeString, i4, paint2, canvas2);
                            parsableBitArray.byteAlign();
                        }
                        paint2 = paint3;
                        bArr2 = bArr3;
                        iPaint2BitPixelCodeString = paint2BitPixelCodeString(parsableBitArray, iArr2, bArr2, iPaint2BitPixelCodeString, i4, paint2, canvas2);
                        parsableBitArray.byteAlign();
                        break;
                    case 17:
                        iArr2 = iArr;
                        Paint paint4 = paint;
                        canvas2 = canvas;
                        if (i == 3) {
                            bArr4 = bArrBuildClutMapTable == null ? defaultMap4To8 : bArrBuildClutMapTable;
                        } else {
                            bArr4 = null;
                        }
                        paint2 = paint4;
                        iPaint2BitPixelCodeString = paint4BitPixelCodeString(parsableBitArray, iArr2, bArr4, iPaint2BitPixelCodeString, i4, paint2, canvas2);
                        parsableBitArray.byteAlign();
                        break;
                    case 18:
                        iArr2 = iArr;
                        paint2 = paint;
                        canvas2 = canvas;
                        iPaint2BitPixelCodeString = paint8BitPixelCodeString(parsableBitArray, iArr2, null, iPaint2BitPixelCodeString, i4, paint2, canvas2);
                        break;
                    default:
                        switch (bits) {
                            case 32:
                                bArrBuildClutMapTable2 = buildClutMapTable(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArrBuildClutMapTable3 = buildClutMapTable(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArrBuildClutMapTable = buildClutMapTable(16, 8, parsableBitArray);
                                break;
                        }
                        iArr2 = iArr;
                        paint2 = paint;
                        canvas2 = canvas;
                        break;
                }
            } else {
                iArr2 = iArr;
                paint2 = paint;
                canvas2 = canvas;
                i4 += 2;
                iPaint2BitPixelCodeString = i2;
            }
            iArr = iArr2;
            paint = paint2;
            canvas = canvas2;
        }
    }

    private static int paint2BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z;
        int i3;
        int bits;
        int bits2;
        boolean z2 = false;
        while (true) {
            int bits3 = parsableBitArray.readBits(2);
            if (bits3 != 0) {
                z = z2;
                i3 = 1;
            } else {
                if (parsableBitArray.readBit()) {
                    bits = parsableBitArray.readBits(3) + 3;
                    bits2 = parsableBitArray.readBits(2);
                } else {
                    if (parsableBitArray.readBit()) {
                        z = z2;
                        i3 = 1;
                    } else {
                        int bits4 = parsableBitArray.readBits(2);
                        if (bits4 == 0) {
                            z = true;
                        } else if (bits4 == 1) {
                            z = z2;
                            i3 = 2;
                        } else if (bits4 == 2) {
                            bits = parsableBitArray.readBits(4) + 12;
                            bits2 = parsableBitArray.readBits(2);
                        } else if (bits4 != 3) {
                            z = z2;
                        } else {
                            bits = parsableBitArray.readBits(8) + 29;
                            bits2 = parsableBitArray.readBits(2);
                        }
                        bits3 = 0;
                        i3 = 0;
                    }
                    bits3 = 0;
                }
                z = z2;
                i3 = bits;
                bits3 = bits2;
            }
            if (i3 != 0 && paint != null) {
                if (bArr != null) {
                    bits3 = bArr[bits3];
                }
                paint.setColor(iArr[bits3]);
                canvas.drawRect(i, i2, i + i3, 1 + i2, paint);
            }
            i += i3;
            if (z) {
                return i;
            }
            z2 = z;
        }
    }

    private static int paint4BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z;
        int i3;
        int bits;
        int bits2;
        boolean z2 = false;
        while (true) {
            int bits3 = parsableBitArray.readBits(4);
            if (bits3 != 0) {
                z = z2;
                i3 = 1;
            } else if (!parsableBitArray.readBit()) {
                int bits4 = parsableBitArray.readBits(3);
                if (bits4 != 0) {
                    z = z2;
                    i3 = bits4 + 2;
                    bits3 = 0;
                } else {
                    z = true;
                    bits3 = 0;
                    i3 = 0;
                }
            } else {
                if (!parsableBitArray.readBit()) {
                    bits = parsableBitArray.readBits(2) + 4;
                    bits2 = parsableBitArray.readBits(4);
                } else {
                    int bits5 = parsableBitArray.readBits(2);
                    if (bits5 == 0) {
                        z = z2;
                        i3 = 1;
                        bits3 = 0;
                    } else if (bits5 == 1) {
                        bits3 = 0;
                        i3 = 2;
                        z = z2;
                    } else if (bits5 == 2) {
                        bits = parsableBitArray.readBits(4) + 9;
                        bits2 = parsableBitArray.readBits(4);
                    } else if (bits5 != 3) {
                        z = z2;
                        bits3 = 0;
                        i3 = 0;
                    } else {
                        bits = parsableBitArray.readBits(8) + 25;
                        bits2 = parsableBitArray.readBits(4);
                    }
                }
                z = z2;
                i3 = bits;
                bits3 = bits2;
            }
            if (i3 != 0 && paint != null) {
                if (bArr != null) {
                    bits3 = bArr[bits3];
                }
                paint.setColor(iArr[bits3]);
                canvas.drawRect(i, i2, i + i3, 1 + i2, paint);
            }
            i += i3;
            if (z) {
                return i;
            }
            z2 = z;
        }
    }

    private static int paint8BitPixelCodeString(ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z;
        int bits;
        boolean z2 = false;
        while (true) {
            int bits2 = parsableBitArray.readBits(8);
            if (bits2 != 0) {
                z = z2;
                bits = 1;
            } else if (!parsableBitArray.readBit()) {
                int bits3 = parsableBitArray.readBits(7);
                if (bits3 != 0) {
                    z = z2;
                    bits = bits3;
                    bits2 = 0;
                } else {
                    z = true;
                    bits2 = 0;
                    bits = 0;
                }
            } else {
                z = z2;
                bits = parsableBitArray.readBits(7);
                bits2 = parsableBitArray.readBits(8);
            }
            if (bits != 0 && paint != null) {
                if (bArr != null) {
                    bits2 = bArr[bits2];
                }
                paint.setColor(iArr[bits2]);
                canvas.drawRect(i, i2, i + bits, 1 + i2, paint);
            }
            i += bits;
            if (z) {
                return i;
            }
            z2 = z;
        }
    }

    private static byte[] buildClutMapTable(int i, int i2, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) parsableBitArray.readBits(i2);
        }
        return bArr;
    }

    private static final class SubtitleService {
        public final int ancillaryPageId;
        public DisplayDefinition displayDefinition;
        public PageComposition pageComposition;
        public final int subtitlePageId;
        public final SparseArray regions = new SparseArray();
        public final SparseArray cluts = new SparseArray();
        public final SparseArray objects = new SparseArray();
        public final SparseArray ancillaryCluts = new SparseArray();
        public final SparseArray ancillaryObjects = new SparseArray();

        public SubtitleService(int i, int i2) {
            this.subtitlePageId = i;
            this.ancillaryPageId = i2;
        }

        public void reset() {
            this.regions.clear();
            this.cluts.clear();
            this.objects.clear();
            this.ancillaryCluts.clear();
            this.ancillaryObjects.clear();
            this.displayDefinition = null;
            this.pageComposition = null;
        }
    }

    private static final class DisplayDefinition {
        public final int height;
        public final int horizontalPositionMaximum;
        public final int horizontalPositionMinimum;
        public final int verticalPositionMaximum;
        public final int verticalPositionMinimum;
        public final int width;

        public DisplayDefinition(int i, int i2, int i3, int i4, int i5, int i6) {
            this.width = i;
            this.height = i2;
            this.horizontalPositionMinimum = i3;
            this.horizontalPositionMaximum = i4;
            this.verticalPositionMinimum = i5;
            this.verticalPositionMaximum = i6;
        }
    }

    private static final class PageComposition {
        public final SparseArray regions;
        public final int state;
        public final int timeOutSecs;
        public final int version;

        public PageComposition(int i, int i2, int i3, SparseArray sparseArray) {
            this.timeOutSecs = i;
            this.version = i2;
            this.state = i3;
            this.regions = sparseArray;
        }
    }

    private static final class PageRegion {
        public final int horizontalAddress;
        public final int verticalAddress;

        public PageRegion(int i, int i2) {
            this.horizontalAddress = i;
            this.verticalAddress = i2;
        }
    }

    private static final class RegionComposition {
        public final int clutId;
        public final int depth;
        public final boolean fillFlag;
        public final int height;

        /* JADX INFO: renamed from: id */
        public final int f329id;
        public final int levelOfCompatibility;
        public final int pixelCode2Bit;
        public final int pixelCode4Bit;
        public final int pixelCode8Bit;
        public final SparseArray regionObjects;
        public final int width;

        public RegionComposition(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray sparseArray) {
            this.f329id = i;
            this.fillFlag = z;
            this.width = i2;
            this.height = i3;
            this.levelOfCompatibility = i4;
            this.depth = i5;
            this.clutId = i6;
            this.pixelCode8Bit = i7;
            this.pixelCode4Bit = i8;
            this.pixelCode2Bit = i9;
            this.regionObjects = sparseArray;
        }

        public void mergeFrom(RegionComposition regionComposition) {
            SparseArray sparseArray = regionComposition.regionObjects;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.regionObjects.put(sparseArray.keyAt(i), (RegionObject) sparseArray.valueAt(i));
            }
        }
    }

    private static final class RegionObject {
        public final int backgroundPixelCode;
        public final int foregroundPixelCode;
        public final int horizontalPosition;
        public final int provider;
        public final int type;
        public final int verticalPosition;

        public RegionObject(int i, int i2, int i3, int i4, int i5, int i6) {
            this.type = i;
            this.provider = i2;
            this.horizontalPosition = i3;
            this.verticalPosition = i4;
            this.foregroundPixelCode = i5;
            this.backgroundPixelCode = i6;
        }
    }

    private static final class ClutDefinition {
        public final int[] clutEntries2Bit;
        public final int[] clutEntries4Bit;
        public final int[] clutEntries8Bit;

        /* JADX INFO: renamed from: id */
        public final int f327id;

        public ClutDefinition(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f327id = i;
            this.clutEntries2Bit = iArr;
            this.clutEntries4Bit = iArr2;
            this.clutEntries8Bit = iArr3;
        }
    }

    private static final class ObjectData {
        public final byte[] bottomFieldData;

        /* JADX INFO: renamed from: id */
        public final int f328id;
        public final boolean nonModifyingColorFlag;
        public final byte[] topFieldData;

        public ObjectData(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f328id = i;
            this.nonModifyingColorFlag = z;
            this.topFieldData = bArr;
            this.bottomFieldData = bArr2;
        }
    }
}
