package org.telegram.messenger;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.UByte;
import kotlin.UShort;
import okio.internal.ZipFilesKt$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class EmojiPack {
    private static final String ASSET_NAME = "emoji.pack";
    private static final int DEFLATE = 0;
    private static final int ENTRY_SIZE = 20;
    private static final int FULL_IMAGE = 3;
    private static final int HEADER_SIZE = 32;
    private static final int INDEX_WEBP = 1;
    private static final int MAP_REFERENCE = 4;
    private static final int NO_MASK = 65535;
    private static final int PIXELS = 4096;
    private static final int RGBA_WEBP = 2;
    private static final int ROOT_CACHE_SIZE = 8;
    private static final int SIDE = 64;
    private long age;
    private final MappedByteBuffer buffer;
    private final int count;
    private final byte[] decoded;
    private final int emojiCount;
    private final int[] emojiPixels;
    private byte[] encoded;
    private final byte[] indices;
    private final Inflater inflater;
    private final BitmapFactory.Options options;
    private final int[] palette;
    private final byte[] paletteBytes;
    private final int[] pixels;
    private final long[] rootAges;
    private final int[] rootIds;
    private final byte[][] rootMaps;

    private static int entry(int i) {
        return (i * 20) + 32;
    }

    private static int sourceIndex(int i, int i2) {
        int i3 = i & 63;
        int i4 = i >>> 6;
        if ((i2 & 1) != 0) {
            i3 = 63 - i3;
        }
        if ((i2 & 2) != 0) {
            i4 = 63 - i4;
        }
        return (i2 & 4) != 0 ? i4 | (i3 << 6) : (i4 << 6) | i3;
    }

    public static final class Holder {
        static final EmojiPack INSTANCE = open();

        private Holder() {
        }

        private static EmojiPack open() {
            try {
                return new EmojiPack();
            } catch (IOException e) {
                Constants$$ExternalSyntheticBUOutline0.m958m("Unable to open emoji.pack", e);
                return null;
            }
        }
    }

    public static EmojiPack getInstance() {
        return Holder.INSTANCE;
    }

    private EmojiPack() throws IOException {
        this.inflater = new Inflater(true);
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.options = options;
        this.encoded = new byte[4096];
        this.decoded = new byte[4608];
        this.indices = new byte[4096];
        this.pixels = new int[4096];
        this.emojiPixels = new int[4096];
        this.palette = new int[256];
        this.paletteBytes = new byte[1024];
        int[] iArr = new int[8];
        this.rootIds = iArr;
        this.rootAges = new long[8];
        this.rootMaps = new byte[8][];
        AssetFileDescriptor assetFileDescriptorOpenFd = ApplicationLoader.applicationContext.getAssets().openFd(ASSET_NAME);
        try {
            FileInputStream fileInputStreamCreateInputStream = assetFileDescriptorOpenFd.createInputStream();
            try {
                long length = assetFileDescriptorOpenFd.getLength();
                if (length < 32 || length > 2147483647L) {
                    throw new IOException("Invalid emoji pack length: " + length);
                }
                MappedByteBuffer map = fileInputStreamCreateInputStream.getChannel().map(FileChannel.MapMode.READ_ONLY, assetFileDescriptorOpenFd.getStartOffset(), length);
                this.buffer = map;
                fileInputStreamCreateInputStream.close();
                assetFileDescriptorOpenFd.close();
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (map.getInt(0) != 860573765 || ((u16(4) != 2 && u16(4) != 3) || u16(6) != 20 || map.getInt(8) != 64 || map.getInt(12) != 64 || map.getInt(24) != map.capacity() || map.getInt(28) != 0)) {
                    Model$$ExternalSyntheticBUOutline0.m1054m("Unsupported or damaged EPK3 header");
                    throw null;
                }
                int i = map.getInt(16);
                this.count = i;
                int i2 = map.getInt(20);
                this.emojiCount = i2;
                if (i < 1 || i > 65535 || i2 < 0 || i2 > i || (((long) i) * 20) + 32 > map.capacity()) {
                    Model$$ExternalSyntheticBUOutline0.m1054m("Invalid EPK3 record count");
                    throw null;
                }
                validateMetadata();
                Arrays.fill(iArr, -1);
                options.inScaled = false;
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                options.inPremultiplied = true;
            } finally {
            }
        } finally {
        }
    }

    private int u16(int i) {
        return this.buffer.getShort(i) & UShort.MAX_VALUE;
    }

    private int u8(int i) {
        return this.buffer.get(i) & UByte.MAX_VALUE;
    }

    private int find(int i, int i2, int i3) {
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int iU16 = u16(entry(i5));
            if (iU16 < i) {
                i2 = i5 + 1;
            } else {
                if (iU16 <= i) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -1;
    }

    private int findEmoji(int i, int i2) {
        if (i < 0 || i > 15 || i2 < 0 || i2 >= 4096) {
            return -1;
        }
        return find((i * 4096) + i2, 0, this.emojiCount);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void validateMetadata() throws IOException {
        int i;
        int i2;
        int i3 = (this.count * 20) + 32;
        int i4 = 0;
        while (i4 < this.count) {
            int iEntry = entry(i4);
            if (i4 != 0 && i4 != this.emojiCount && u16(iEntry) <= u16(iEntry - 20)) {
                Model$$ExternalSyntheticBUOutline0.m1054m("Unsorted EPK3 IDs");
                return;
            }
            int iU16 = u16(iEntry + 2);
            int i5 = this.emojiCount;
            if ((i4 >= i5 && iU16 != 65535) || (i4 < i5 && iU16 != 65535 && find(iU16, i5, this.count) < 0)) {
                ZipFilesKt$$ExternalSyntheticBUOutline0.m931m("Invalid mask reference at record ", i4);
                return;
            }
            int i6 = this.buffer.getInt(iEntry + 4);
            int iU162 = u16(iEntry + 8);
            int iU163 = u16(iEntry + 10);
            int iU164 = u16(iEntry + 12);
            int iU165 = u16(iEntry + 14);
            int iU8 = u8(iEntry + 16);
            int iU82 = u8(iEntry + 17);
            int i7 = iEntry + 18;
            int iU83 = u8(i7) & 127;
            if (i6 < i3 || iU162 == 0) {
                i = i4;
                ZipFilesKt$$ExternalSyntheticBUOutline0.m931m("Invalid EPK3 record ", i);
                return;
            }
            i = i4;
            if (((long) i6) + ((long) iU162) > this.buffer.capacity() || iU8 > 4 || iU82 > 6) {
                ZipFilesKt$$ExternalSyntheticBUOutline0.m931m("Invalid EPK3 record ", i);
                return;
            }
            if (iU8 == 2 || iU8 == 3) {
                if (iU165 != 0 || u8(i7) != 0 || iU82 != 0 || (u8(iEntry + 19) & 127) != 0 || iU163 != 65535 || iU164 != 65535) {
                    ZipFilesKt$$ExternalSyntheticBUOutline0.m931m("Invalid full image record ", i);
                    return;
                }
            } else {
                if (iU165 >= 1 && iU165 <= 256 && iU83 != 2 && iU83 <= 4 && (iU83 != 0 || iU165 == 256)) {
                    if (iU8 == 4) {
                        if (paletteLength(iEntry) == iU162) {
                            if (iU83 != 0 || ((u8(iEntry + 19) & 1) == 0 && (u8(i7) & 128) == 0)) {
                                if ((iU8 == 4) != (iU82 == 4)) {
                                    Model$$ExternalSyntheticBUOutline0.m1054m("Invalid map reference encoding");
                                    return;
                                }
                                if (iU8 == 4) {
                                    i2 = iU163;
                                    if (i2 >= this.count || iU165 != u16(entry(i2) + 14)) {
                                        Model$$ExternalSyntheticBUOutline0.m1054m("Map reference palette size mismatch");
                                        return;
                                    }
                                } else {
                                    i2 = iU163;
                                }
                                if (iU82 != 0) {
                                    validateRoot(i2, i);
                                    if (iU82 == 3 || iU82 == 5 || iU82 == 6) {
                                        validateRoot(iU164, i);
                                    } else if (iU164 != 65535) {
                                        Model$$ExternalSyntheticBUOutline0.m1054m("Unexpected second root");
                                        return;
                                    }
                                } else if (i2 != 65535 || iU164 != 65535) {
                                    Model$$ExternalSyntheticBUOutline0.m1054m("Unexpected root reference");
                                    return;
                                }
                            }
                        }
                    } else if (paletteLength(iEntry) < iU162) {
                    }
                }
                ZipFilesKt$$ExternalSyntheticBUOutline0.m931m("Invalid palette at record ", i);
                return;
            }
            i4 = i + 1;
        }
    }

    private void validateRoot(int i, int i2) throws IOException {
        if (i >= this.count || i == i2) {
            Model$$ExternalSyntheticBUOutline0.m1054m("Invalid root reference");
            return;
        }
        int iEntry = entry(i);
        if (u8(iEntry + 16) <= 1 && u8(iEntry + 17) == 0 && u16(iEntry + 10) == 65535 && u16(iEntry + 12) == 65535) {
            return;
        }
        Model$$ExternalSyntheticBUOutline0.m1054m("EPK3 dependency chains are forbidden");
    }

    public synchronized Bitmap getEmoji(int i, int i2) {
        int iFindEmoji = findEmoji(i, i2);
        if (iFindEmoji < 0) {
            return null;
        }
        int iU16 = u16(entry(iFindEmoji) + 2);
        if (iU16 == 65535) {
            return decode(iFindEmoji);
        }
        decodePixels(iFindEmoji, this.emojiPixels);
        decodePixels(find(iU16, this.emojiCount, this.count), this.pixels);
        int i3 = 0;
        while (true) {
            int[] iArr = this.emojiPixels;
            if (i3 < 4096) {
                int i4 = iArr[i3];
                iArr[i3] = (i4 & 16777215) | (((((i4 >>> 24) * (this.pixels[i3] & 255)) + 127) / 255) << 24);
                i3++;
            } else {
                return Bitmap.createBitmap(iArr, 64, 64, Bitmap.Config.ARGB_8888);
            }
        }
    }

    public synchronized void clearCache() {
        Arrays.fill(this.rootIds, -1);
        Arrays.fill(this.rootMaps, (Object) null);
        Arrays.fill(this.rootAges, 0L);
        this.age = 0L;
    }

    private Bitmap decode(int i) throws Throwable {
        int iEntry = entry(i);
        int i2 = this.buffer.getInt(iEntry + 4);
        int iU16 = u16(iEntry + 8);
        int iU8 = u8(iEntry + 16);
        if (iU8 == 2 || iU8 == 3) {
            readBytes(i2, iU16);
            return iU8 == 2 ? decodeWebp(20, iU16) : decodeBitmap(20, iU16);
        }
        decodePixels(i, this.pixels);
        return Bitmap.createBitmap(this.pixels, 64, 64, Bitmap.Config.ARGB_8888);
    }

    private void decodePixels(int i, int[] iArr) throws Throwable {
        Bitmap bitmapDecodeWebp;
        int i2;
        int iEntry = entry(i);
        int i3 = this.buffer.getInt(iEntry + 4);
        int iU16 = u16(iEntry + 8);
        int iU8 = u8(iEntry + 16);
        if (iU8 == 2 || iU8 == 3) {
            readBytes(i3, iU16);
            this.options.inPremultiplied = false;
            Bitmap bitmap = null;
            try {
                bitmapDecodeWebp = iU8 == 2 ? decodeWebp(20, iU16) : decodeBitmap(20, iU16);
            } catch (Throwable th) {
                th = th;
            }
            try {
                bitmapDecodeWebp.getPixels(iArr, 0, 64, 0, 0, 64, 64);
                this.options.inPremultiplied = true;
                bitmapDecodeWebp.recycle();
                return;
            } catch (Throwable th2) {
                th = th2;
                bitmap = bitmapDecodeWebp;
                this.options.inPremultiplied = true;
                if (bitmap != null) {
                    bitmap.recycle();
                }
                throw th;
            }
        }
        decodeIndices(i, this.indices);
        int iU162 = u16(iEntry + 14);
        int i4 = iEntry + 18;
        int iU82 = u8(i4) & 127;
        int i5 = iU162 * iU82;
        boolean z = (u8(i4) & 128) != 0;
        if (z) {
            int iPaletteLength = paletteLength(iEntry) - 2;
            readBytes(i3 + 2, iPaletteLength);
            inflate(iPaletteLength, (u8(iEntry + 19) & 1) != 0 ? ((i5 * 7) + 7) / 8 : i5);
        }
        if ((u8(iEntry + 19) & 1) != 0) {
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = i6 * 7;
                int i8 = i7 & 7;
                int i9 = i7 >>> 3;
                int iU83 = (z ? this.decoded[i9] & UByte.MAX_VALUE : u8(i3 + i9)) >>> i8;
                if (i8 > 1) {
                    iU83 |= (z ? this.decoded[i9 + 1] & UByte.MAX_VALUE : u8((i9 + i3) + 1)) << (8 - i8);
                }
                int i10 = iU83 & 127;
                this.paletteBytes[i6] = (byte) ((i10 >>> 6) | (i10 << 1));
            }
        } else if (z) {
            System.arraycopy(this.decoded, 0, this.paletteBytes, 0, i5);
        } else {
            for (int i11 = 0; i11 < i5; i11++) {
                this.paletteBytes[i11] = this.buffer.get(i3 + i11);
            }
        }
        int i12 = 0;
        for (int i13 = 0; i13 < iU162; i13++) {
            if (iU82 == 0) {
                this.palette[i13] = (65793 * i13) | (-16777216);
            } else if (iU82 == 1) {
                this.palette[i13] = ((this.paletteBytes[i12] & UByte.MAX_VALUE) * 65793) | (-16777216);
                i12++;
            } else {
                byte[] bArr = this.paletteBytes;
                int i14 = bArr[i12] & UByte.MAX_VALUE;
                int i15 = bArr[i12 + 1] & UByte.MAX_VALUE;
                int i16 = i12 + 3;
                int i17 = bArr[i12 + 2] & UByte.MAX_VALUE;
                if (iU82 == 4) {
                    i12 += 4;
                    i2 = bArr[i16] & UByte.MAX_VALUE;
                } else {
                    i2 = 255;
                    i12 = i16;
                }
                this.palette[i13] = (i2 << 24) | (i14 << 16) | (i15 << 8) | i17;
            }
        }
        for (int i18 = 0; i18 < 4096; i18++) {
            int i19 = this.indices[i18] & UByte.MAX_VALUE;
            if (i19 >= iU162) {
                throw damaged("Palette index out of range");
            }
            iArr[i18] = this.palette[i19];
        }
    }

    private byte[] rootMap(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = this.rootIds[i3];
            long[] jArr = this.rootAges;
            if (i4 == i) {
                long j = this.age + 1;
                this.age = j;
                jArr[i3] = j;
                return this.rootMaps[i3];
            }
            if (jArr[i3] < jArr[i2]) {
                i2 = i3;
            }
        }
        byte[][] bArr = this.rootMaps;
        if (bArr[i2] == null) {
            bArr[i2] = new byte[4096];
        }
        this.rootIds[i2] = -1;
        decodeIndices(i, bArr[i2]);
        this.rootIds[i2] = i;
        long[] jArr2 = this.rootAges;
        long j2 = this.age + 1;
        this.age = j2;
        jArr2[i2] = j2;
        return this.rootMaps[i2];
    }

    private void decodeIndices(int i, byte[] bArr) {
        byte[] bArrRootMap;
        byte[] bArrRootMap2;
        int iU16;
        int iU162;
        int i2;
        int i3;
        int i4;
        byte[] bArr2;
        byte b2;
        int i5;
        byte b3;
        int iEntry = entry(i);
        int iU8 = u8(iEntry + 17);
        if (iU8 != 0) {
            int iU163 = u16(iEntry + 10);
            bArrRootMap = rootMap(iU163);
            iU162 = u16(entry(iU163) + 14);
            if (iU8 == 3 || iU8 == 5 || iU8 == 6) {
                int iU164 = u16(iEntry + 12);
                bArrRootMap2 = rootMap(iU164);
                iU16 = u16(entry(iU164) + 14);
            } else {
                bArrRootMap2 = null;
                iU16 = 0;
            }
        } else {
            bArrRootMap = null;
            bArrRootMap2 = null;
            iU16 = 0;
            iU162 = 0;
        }
        int i6 = iEntry + 19;
        int iU82 = (u8(i6) >>> 1) & 7;
        int iU83 = (u8(i6) >>> 4) & 7;
        if (iU8 == 4) {
            for (int i7 = 0; i7 < 4096; i7++) {
                bArr[i7] = bArrRootMap[sourceIndex(i7, iU82)];
            }
            return;
        }
        int i8 = iU162 + iU16;
        int iPaletteLength = paletteLength(iEntry);
        int i9 = this.buffer.getInt(iEntry + 4) + iPaletteLength;
        int iU165 = u16(iEntry + 8) - iPaletteLength;
        if (iU8 == 5 || iU8 == 6) {
            if (iU165 < 2) {
                throw damaged("Truncated split record");
            }
            int i10 = i9 + 1;
            int iU84 = u8(i9);
            iU165--;
            if (iU84 < 1 || iU84 >= 64) {
                throw damaged("Invalid split position");
            }
            i2 = iU84;
            i9 = i10;
        } else {
            i2 = 32;
        }
        readBytes(i9, iU165);
        if (u8(iEntry + 16) == 0) {
            inflate(iU165, i8 + 4096);
            byte[] bArr3 = this.decoded;
            System.arraycopy(bArr3, i8, bArr, 0, 4096);
            i4 = iEntry;
            bArr2 = bArr3;
            i3 = 0;
        } else {
            i3 = 0;
            if (iU165 <= i8) {
                throw damaged("Truncated index WebP");
            }
            i4 = iEntry;
            System.arraycopy(this.encoded, 20, this.decoded, 0, i8);
            Bitmap bitmapDecodeWebp = decodeWebp(i8 + 20, iU165 - i8);
            try {
                bitmapDecodeWebp.getPixels(this.pixels, 0, 64, 0, 0, 64, 64);
                for (int i11 = 0; i11 < 4096; i11++) {
                    bArr[i11] = (byte) this.pixels[i11];
                }
                bitmapDecodeWebp.recycle();
                bArr2 = this.decoded;
            } catch (Throwable th) {
                bitmapDecodeWebp.recycle();
                throw th;
            }
        }
        if (iU8 == 1 || iU8 == 2) {
            for (int i12 = 0; i12 < 4096; i12++) {
                int i13 = bArrRootMap[sourceIndex(i12, iU82)] & UByte.MAX_VALUE;
                if (i13 >= iU162) {
                    throw damaged("Root index out of range");
                }
                int i14 = bArr2[i13] & UByte.MAX_VALUE;
                if (iU8 == 1) {
                    b2 = (byte) (i14 ^ (bArr[i12] & UByte.MAX_VALUE));
                } else {
                    b2 = (byte) ((bArr[i12] & UByte.MAX_VALUE) + i14);
                }
                bArr[i12] = b2;
            }
        } else {
            if (iU8 == 3 || iU8 == 5) {
                i5 = 6;
            } else {
                i5 = 6;
                if (iU8 == 6) {
                }
            }
            int i15 = i3;
            while (i15 < 4096) {
                int i16 = (iU8 != i5 ? (i15 & 63) >= i2 : (i15 >>> 6) >= i2) ? i3 : 1;
                if (i16 != 0) {
                    b3 = bArrRootMap[sourceIndex(i15, iU82)];
                } else {
                    b3 = bArrRootMap2[sourceIndex(i15, iU83)];
                }
                int i17 = b3 & UByte.MAX_VALUE;
                if (i17 >= (i16 != 0 ? iU162 : iU16)) {
                    throw damaged("Half root index out of range");
                }
                bArr[i15] = (byte) ((bArr[i15] & UByte.MAX_VALUE) + (bArr2[(i16 != 0 ? 0 : iU162) + i17] & UByte.MAX_VALUE));
                i15++;
                i3 = 0;
            }
        }
        int iU166 = u16(i4 + 14);
        if (iU166 < 256) {
            for (byte b4 : bArr) {
                if ((b4 & UByte.MAX_VALUE) >= iU166) {
                    throw damaged("Decoded index out of range");
                }
            }
        }
    }

    private void readBytes(int i, int i2) {
        byte[] bArr = this.encoded;
        int i3 = i2 + 21;
        if (bArr.length < i3) {
            int length = bArr.length;
            while (length < i3) {
                length <<= 1;
            }
            this.encoded = new byte[length];
        }
        this.buffer.position(i);
        this.buffer.get(this.encoded, 20, i2);
    }

    private int paletteLength(int i) {
        int i2;
        int i3 = i + 18;
        if ((u8(i3) & 128) != 0) {
            int i4 = i + 8;
            if (u16(i4) < 3) {
                throw damaged("Truncated compressed palette");
            }
            int iU16 = u16(this.buffer.getInt(i + 4));
            if (iU16 == 0 || (i2 = iU16 + 2) > u16(i4)) {
                throw damaged("Invalid compressed palette");
            }
            return i2;
        }
        int iU162 = u16(i + 14) * (u8(i3) & 127);
        return (u8(i + 19) & 1) != 0 ? ((iU162 * 7) + 7) / 8 : iU162;
    }

    private void putInt(int i, int i2) {
        byte[] bArr = this.encoded;
        bArr[i] = (byte) i2;
        bArr[i + 1] = (byte) (i2 >>> 8);
        bArr[i + 2] = (byte) (i2 >>> 16);
        bArr[i + 3] = (byte) (i2 >>> 24);
    }

    private Bitmap decodeWebp(int i, int i2) {
        int i3 = i - 20;
        int i4 = i2 & 1;
        putInt(i3, 1179011410);
        putInt(i - 16, i2 + 12 + i4);
        putInt(i - 12, 1346520407);
        putInt(i - 8, 1278758998);
        putInt(i - 4, i2);
        if (i4 != 0) {
            this.encoded[i + i2] = 0;
        }
        return decodeBitmap(i3, i2 + 20 + i4);
    }

    private Bitmap decodeBitmap(int i, int i2) {
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(this.encoded, i, i2, this.options);
        if (bitmapDecodeByteArray == null) {
            throw damaged("Bitmap decoder rejected image");
        }
        if (bitmapDecodeByteArray.getWidth() == 64 && bitmapDecodeByteArray.getHeight() == 64) {
            return bitmapDecodeByteArray;
        }
        bitmapDecodeByteArray.recycle();
        throw damaged("Unexpected bitmap dimensions");
    }

    private void inflate(int i, int i2) {
        this.inflater.reset();
        this.inflater.setInput(this.encoded, 20, i);
        int i3 = 0;
        while (true) {
            Inflater inflater = this.inflater;
            if (i3 < i2) {
                try {
                    int iInflate = inflater.inflate(this.decoded, i3, i2 - i3);
                    if (iInflate == 0) {
                        throw damaged("Truncated DEFLATE stream");
                    }
                    i3 += iInflate;
                } catch (DataFormatException e) {
                    Constants$$ExternalSyntheticBUOutline0.m958m("Damaged EPK3 DEFLATE stream", e);
                    return;
                }
            } else {
                if (!inflater.finished() && (this.inflater.inflate(this.indices, 0, 1) != 0 || !this.inflater.finished())) {
                    throw damaged("Oversized DEFLATE stream");
                }
                if (this.inflater.getRemaining() != 0) {
                    throw damaged("Trailing DEFLATE bytes");
                }
                return;
            }
        }
    }

    private static IllegalStateException damaged(String str) {
        return new IllegalStateException("Damaged emoji.pack: " + str);
    }
}
