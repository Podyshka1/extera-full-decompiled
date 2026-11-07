package androidx.media3.extractor.mp4;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SniffFailure;
import com.google.android.gms.cast.MediaStatus;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Sniffer {
    private static final int[] COMPATIBLE_BRANDS = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static SniffFailure sniffFragmented(ExtractorInput extractorInput) {
        return sniffInternal(extractorInput, true, false);
    }

    public static SniffFailure sniffUnfragmented(ExtractorInput extractorInput, boolean z) {
        return sniffInternal(extractorInput, false, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static SniffFailure sniffInternal(ExtractorInput extractorInput, boolean z, boolean z2) {
        SniffFailure sniffFailure;
        int i;
        long j;
        int i2;
        long j2;
        int i3;
        int i4;
        long j3;
        int i5;
        boolean z3;
        int[] iArr;
        long length = extractorInput.getLength();
        long j4 = -1;
        int i6 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j5 = MediaStatus.COMMAND_EDIT_TRACKS;
        if (i6 != 0 && length <= MediaStatus.COMMAND_EDIT_TRACKS) {
            j5 = length;
        }
        int i7 = (int) j5;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        int i8 = 0;
        int i9 = 0;
        boolean z4 = false;
        while (i9 < i7) {
            parsableByteArray.reset(8);
            if (!extractorInput.peekFully(parsableByteArray.getData(), i8, 8, true)) {
                break;
            }
            long unsignedInt = parsableByteArray.readUnsignedInt();
            int i10 = parsableByteArray.readInt();
            if (unsignedInt == 1) {
                j = j4;
                extractorInput.peekFully(parsableByteArray.getData(), 8, 8);
                i4 = 16;
                parsableByteArray.setLimit(16);
                i2 = i9;
                j2 = parsableByteArray.readLong();
                i3 = i6;
            } else {
                j = j4;
                if (unsignedInt == 0) {
                    long length2 = extractorInput.getLength();
                    if (length2 != j) {
                        unsignedInt = (length2 - extractorInput.getPeekPosition()) + 8;
                    }
                }
                long j6 = unsignedInt;
                i2 = i9;
                j2 = j6;
                i3 = i6;
                i4 = 8;
            }
            long j7 = i4;
            if (j2 < j7) {
                sniffFailure = null;
                if (i10 != 1718773093 || i4 != 8) {
                    return new AtomSizeTooSmallSniffFailure(i10, j2, i4);
                }
                j2 = j7;
            } else {
                sniffFailure = null;
            }
            int i11 = i2 + i4;
            if (i10 == 1836019574 || i10 == 1970628964) {
                i7 += (int) j2;
                if (i3 != 0 && i7 > length) {
                    i7 = (int) length;
                }
                if (i10 == 1836019574) {
                    i9 = i11;
                    i6 = i3;
                    j4 = j;
                    i8 = 0;
                }
            }
            if (i10 != 1953653099 && i10 != 1835297121 && i10 != 1835626086) {
                if (i10 != 1836019558 && i10 != 1836475768) {
                    if (i10 == 1835295092) {
                        z4 = true;
                    }
                    if (i10 != 1937007212 || j2 <= 1000000) {
                        j3 = length;
                        if ((((long) i11) + j2) - j7 < i7) {
                            int i12 = (int) (j2 - j7);
                            i9 = i11 + i12;
                            if (i10 != 1718909296) {
                                i5 = 0;
                                if (i12 != 0) {
                                    extractorInput.advancePeekPosition(i12);
                                }
                            } else {
                                if (i12 < 8) {
                                    return new AtomSizeTooSmallSniffFailure(i10, i12, 8);
                                }
                                parsableByteArray.reset(i12);
                                i5 = 0;
                                extractorInput.peekFully(parsableByteArray.getData(), 0, i12);
                                int i13 = parsableByteArray.readInt();
                                if (isCompatibleBrand(i13, z2)) {
                                    z4 = true;
                                }
                                parsableByteArray.skipBytes(4);
                                int iBytesLeft = parsableByteArray.bytesLeft() / 4;
                                if (!z4 && iBytesLeft > 0) {
                                    int[] iArr2 = new int[iBytesLeft];
                                    int i14 = 0;
                                    while (true) {
                                        if (i14 >= iBytesLeft) {
                                            z3 = z4;
                                            iArr = iArr2;
                                            break;
                                        }
                                        int i15 = parsableByteArray.readInt();
                                        iArr2[i14] = i15;
                                        if (isCompatibleBrand(i15, z2)) {
                                            z3 = true;
                                            iArr = iArr2;
                                            break;
                                        }
                                        i14++;
                                    }
                                } else {
                                    z3 = z4;
                                    iArr = sniffFailure;
                                }
                                if (!z3) {
                                    return new UnsupportedBrandsSniffFailure(i13, iArr);
                                }
                                z4 = z3;
                            }
                        }
                    }
                    i = 0;
                    break;
                }
                i = 1;
                break;
            }
            j3 = length;
            i5 = 0;
            i9 = i11;
            i8 = i5;
            i6 = i3;
            j4 = j;
            length = j3;
        }
        sniffFailure = null;
        i = i8;
        if (!z4) {
            return NoDeclaredBrandSniffFailure.INSTANCE;
        }
        if (z == i) {
            return sniffFailure;
        }
        if (i != 0) {
            return IncorrectFragmentationSniffFailure.FILE_FRAGMENTED;
        }
        return IncorrectFragmentationSniffFailure.FILE_NOT_FRAGMENTED;
    }

    private static boolean isCompatibleBrand(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : COMPATIBLE_BRANDS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }
}
