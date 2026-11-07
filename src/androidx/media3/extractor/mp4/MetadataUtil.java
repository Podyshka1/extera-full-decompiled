package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.metadata.id3.ApicFrame;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.Id3Frame;
import androidx.media3.extractor.metadata.id3.Id3Util;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.TranslateController;

/* JADX INFO: loaded from: classes4.dex */
abstract class MetadataUtil {
    /* JADX WARN: Multi-variable type inference failed */
    public static void setFormatMetadata(int i, Metadata metadata, Format.Builder builder, Metadata metadata2, Metadata... metadataArr) {
        if (metadata2 == null) {
            metadata2 = new Metadata(new Metadata.Entry[0]);
        }
        if (metadata != null) {
            UnmodifiableIterator it = metadata.getEntriesOfType(MdtaMetadataEntry.class).iterator();
            while (it.hasNext()) {
                MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) it.next();
                if (!mdtaMetadataEntry.key.equals("com.android.capture.fps") || i == 2) {
                    metadata2 = metadata2.copyWithAppendedEntries(mdtaMetadataEntry);
                }
            }
        }
        for (Metadata metadata3 : metadataArr) {
            metadata2 = metadata2.copyWithAppendedEntriesFrom(metadata3);
        }
        if (metadata2.length() > 0) {
            builder.setMetadata(metadata2);
        }
    }

    public static void setFormatGaplessInfo(int i, GaplessInfoHolder gaplessInfoHolder, Format.Builder builder) {
        if (i == 1 && gaplessInfoHolder.hasGaplessInfo()) {
            builder.setEncoderDelay(gaplessInfoHolder.encoderDelay).setEncoderPadding(gaplessInfoHolder.encoderPadding);
        }
    }

    public static Metadata.Entry parseIlstElement(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition() + parsableByteArray.readInt();
        int i = parsableByteArray.readInt();
        int i2 = (i >> 24) & 255;
        try {
            if (i2 == 169 || i2 == 253) {
                int i3 = 16777215 & i;
                if (i3 == 6516084) {
                    return parseCommentAttribute(i, parsableByteArray);
                }
                if (i3 == 7233901 || i3 == 7631467) {
                    return parseTextAttribute(i, "TIT2", parsableByteArray);
                }
                if (i3 == 6516589 || i3 == 7828084) {
                    return parseTextAttribute(i, "TCOM", parsableByteArray);
                }
                if (i3 == 6578553) {
                    return parseTextAttribute(i, "TDRC", parsableByteArray);
                }
                if (i3 == 4280916) {
                    return parseTextAttribute(i, "TPE1", parsableByteArray);
                }
                if (i3 == 7630703) {
                    return parseTextAttribute(i, "TSSE", parsableByteArray);
                }
                if (i3 == 6384738) {
                    return parseTextAttribute(i, "TALB", parsableByteArray);
                }
                if (i3 == 7108978) {
                    return parseTextAttribute(i, "USLT", parsableByteArray);
                }
                if (i3 == 6776174) {
                    return parseTextAttribute(i, "TCON", parsableByteArray);
                }
                if (i3 == 6779504) {
                    return parseTextAttribute(i, "TIT1", parsableByteArray);
                }
                if (i3 == 7173742) {
                    return parseTextAttribute(i, "MVNM", parsableByteArray);
                }
                if (i3 == 7173737) {
                    return parseIntegerAttribute(i, "MVIN", parsableByteArray, true, false);
                }
            } else {
                if (i == 1735291493) {
                    return parseStandardGenreAttribute(parsableByteArray);
                }
                if (i == 1684632427) {
                    return parseIndexAndCountAttribute(i, "TPOS", parsableByteArray);
                }
                if (i == 1953655662) {
                    return parseIndexAndCountAttribute(i, "TRCK", parsableByteArray);
                }
                if (i == 1953329263) {
                    return parseIntegerAttribute(i, "TBPM", parsableByteArray, true, false);
                }
                if (i == 1668311404) {
                    return parseIntegerAttribute(i, "TCMP", parsableByteArray, true, true);
                }
                if (i == 1668249202) {
                    return parseCoverArt(parsableByteArray);
                }
                if (i == 1631670868) {
                    return parseTextAttribute(i, "TPE2", parsableByteArray);
                }
                if (i == 1936682605) {
                    return parseTextAttribute(i, "TSOT", parsableByteArray);
                }
                if (i == 1936679276) {
                    return parseTextAttribute(i, "TSOA", parsableByteArray);
                }
                if (i == 1936679282) {
                    return parseTextAttribute(i, "TSOP", parsableByteArray);
                }
                if (i == 1936679265) {
                    return parseTextAttribute(i, "TSO2", parsableByteArray);
                }
                if (i == 1936679791) {
                    return parseTextAttribute(i, "TSOC", parsableByteArray);
                }
                if (i == 1920233063) {
                    return parseIntegerAttribute(i, "ITUNESADVISORY", parsableByteArray, false, false);
                }
                if (i == 1885823344) {
                    return parseIntegerAttribute(i, "ITUNESGAPLESS", parsableByteArray, false, true);
                }
                if (i == 1936683886) {
                    return parseTextAttribute(i, "TVSHOWSORT", parsableByteArray);
                }
                if (i == 1953919848) {
                    return parseTextAttribute(i, "TVSHOW", parsableByteArray);
                }
                if (i == 757935405) {
                    return parseInternalAttribute(parsableByteArray, position);
                }
            }
            Log.m159d("MetadataUtil", "Skipped unknown metadata entry: " + Mp4Box.getBoxTypeString(i));
            parsableByteArray.setPosition(position);
            return null;
        } finally {
            parsableByteArray.setPosition(position);
        }
    }

    public static MdtaMetadataEntry parseMdtaMetadataEntryFromIlst(ParsableByteArray parsableByteArray, int i, String str) {
        while (true) {
            int position = parsableByteArray.getPosition();
            if (position >= i) {
                return null;
            }
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1684108385) {
                int i3 = parsableByteArray.readInt();
                int i4 = parsableByteArray.readInt();
                int i5 = i2 - 16;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                try {
                    return new MdtaMetadataEntry(str, bArr, i4, i3);
                } catch (Exception unused) {
                    Log.m164w("MetadataUtil", "Failed to parse metadata entry with key: " + str);
                    return null;
                }
            }
            parsableByteArray.setPosition(position + i2);
        }
    }

    private static TextInformationFrame parseTextAttribute(int i, String str, ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return new TextInformationFrame(str, null, ImmutableList.of(parsableByteArray.readNullTerminatedString(i2 - 16)));
        }
        Log.m164w("MetadataUtil", "Failed to parse text attribute: " + Mp4Box.getBoxTypeString(i));
        return null;
    }

    private static CommentFrame parseCommentAttribute(int i, ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            String nullTerminatedString = parsableByteArray.readNullTerminatedString(i2 - 16);
            return new CommentFrame(TranslateController.UNKNOWN_LANGUAGE, nullTerminatedString, nullTerminatedString);
        }
        Log.m164w("MetadataUtil", "Failed to parse comment attribute: " + Mp4Box.getBoxTypeString(i));
        return null;
    }

    private static Id3Frame parseIntegerAttribute(int i, String str, ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int integerAttribute = parseIntegerAttribute(parsableByteArray);
        if (z2) {
            integerAttribute = Math.min(1, integerAttribute);
        }
        if (integerAttribute >= 0) {
            if (z) {
                return new TextInformationFrame(str, null, ImmutableList.of(Integer.toString(integerAttribute)));
            }
            return new CommentFrame(TranslateController.UNKNOWN_LANGUAGE, str, Integer.toString(integerAttribute));
        }
        Log.m164w("MetadataUtil", "Failed to parse uint8 attribute: " + Mp4Box.getBoxTypeString(i));
        return null;
    }

    private static int parseIntegerAttribute(ParsableByteArray parsableByteArray) {
        int i = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            int i2 = i - 16;
            if (i2 == 1) {
                return parsableByteArray.readUnsignedByte();
            }
            if (i2 == 2) {
                return parsableByteArray.readUnsignedShort();
            }
            if (i2 == 3) {
                return parsableByteArray.readUnsignedInt24();
            }
            if (i2 == 4 && (parsableByteArray.peekUnsignedByte() & 128) == 0) {
                return parsableByteArray.readUnsignedIntToInt();
            }
        }
        Log.m164w("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    private static TextInformationFrame parseIndexAndCountAttribute(int i, String str, ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385 && i2 >= 22) {
            parsableByteArray.skipBytes(10);
            int unsignedShort = parsableByteArray.readUnsignedShort();
            if (unsignedShort > 0) {
                String str2 = _UrlKt.FRAGMENT_ENCODE_SET + unsignedShort;
                int unsignedShort2 = parsableByteArray.readUnsignedShort();
                if (unsignedShort2 > 0) {
                    str2 = str2 + "/" + unsignedShort2;
                }
                return new TextInformationFrame(str, null, ImmutableList.of(str2));
            }
        }
        Log.m164w("MetadataUtil", "Failed to parse index/count attribute: " + Mp4Box.getBoxTypeString(i));
        return null;
    }

    private static TextInformationFrame parseStandardGenreAttribute(ParsableByteArray parsableByteArray) {
        String strResolveV1Genre = Id3Util.resolveV1Genre(parseIntegerAttribute(parsableByteArray) - 1);
        if (strResolveV1Genre != null) {
            return new TextInformationFrame("TCON", null, ImmutableList.of(strResolveV1Genre));
        }
        Log.m164w("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    private static ApicFrame parseCoverArt(ParsableByteArray parsableByteArray) {
        String str;
        int i = parsableByteArray.readInt();
        if (parsableByteArray.readInt() != 1684108385) {
            Log.m164w("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int fullBoxFlags = BoxParser.parseFullBoxFlags(parsableByteArray.readInt());
        if (fullBoxFlags == 13) {
            str = "image/jpeg";
        } else {
            str = fullBoxFlags == 14 ? "image/png" : null;
        }
        if (str == null) {
            Log.m164w("MetadataUtil", "Unrecognized cover art flags: " + fullBoxFlags);
            return null;
        }
        parsableByteArray.skipBytes(4);
        int i2 = i - 16;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return new ApicFrame(str, null, 3, bArr);
    }

    private static Id3Frame parseInternalAttribute(ParsableByteArray parsableByteArray, int i) {
        String nullTerminatedString = null;
        String nullTerminatedString2 = null;
        int i2 = -1;
        int i3 = -1;
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i4 = parsableByteArray.readInt();
            int i5 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            if (i5 == 1835360622) {
                nullTerminatedString = parsableByteArray.readNullTerminatedString(i4 - 12);
            } else if (i5 == 1851878757) {
                nullTerminatedString2 = parsableByteArray.readNullTerminatedString(i4 - 12);
            } else {
                if (i5 == 1684108385) {
                    i2 = position;
                    i3 = i4;
                }
                parsableByteArray.skipBytes(i4 - 12);
            }
        }
        if (nullTerminatedString == null || nullTerminatedString2 == null || i2 == -1) {
            return null;
        }
        parsableByteArray.setPosition(i2);
        parsableByteArray.skipBytes(16);
        return new InternalFrame(nullTerminatedString, nullTerminatedString2, parsableByteArray.readNullTerminatedString(i3 - 16));
    }
}
