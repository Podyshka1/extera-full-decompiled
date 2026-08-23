package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.TranslateController;

/* JADX INFO: loaded from: classes4.dex */
abstract class MetadataUtil {
    static final String[] STANDARD_GENRES = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void setFormatMetadata(int i, Metadata metadata, Metadata metadata2, Format.Builder builder, Metadata... metadataArr) {
        Metadata metadata3 = new Metadata(new Metadata.Entry[0]);
        if (i == 1) {
            if (metadata == null) {
                metadata = metadata3;
            }
        } else if (i == 2 && metadata2 != null) {
            for (int i2 = 0; i2 < metadata2.length(); i2++) {
                Metadata.Entry entry = metadata2.get(i2);
                if (entry instanceof MdtaMetadataEntry) {
                    MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                    if ("com.android.capture.fps".equals(mdtaMetadataEntry.key)) {
                        metadata = new Metadata(mdtaMetadataEntry);
                        break;
                    }
                }
            }
            metadata = metadata3;
        }
        for (Metadata metadata4 : metadataArr) {
            metadata = metadata.copyWithAppendedEntriesFrom(metadata4);
        }
        if (metadata.length() > 0) {
            builder.setMetadata(metadata);
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
                    return parseUint8Attribute(i, "TBPM", parsableByteArray, true, false);
                }
                if (i == 1668311404) {
                    return parseUint8Attribute(i, "TCMP", parsableByteArray, true, true);
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
                    return parseTextAttribute(i, "TSO2", parsableByteArray);
                }
                if (i == 1936679282) {
                    return parseTextAttribute(i, "TSOA", parsableByteArray);
                }
                if (i == 1936679265) {
                    return parseTextAttribute(i, "TSOP", parsableByteArray);
                }
                if (i == 1936679791) {
                    return parseTextAttribute(i, "TSOC", parsableByteArray);
                }
                if (i == 1920233063) {
                    return parseUint8Attribute(i, "ITUNESADVISORY", parsableByteArray, false, false);
                }
                if (i == 1885823344) {
                    return parseUint8Attribute(i, "ITUNESGAPLESS", parsableByteArray, false, true);
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
            Log.m269d("MetadataUtil", "Skipped unknown metadata entry: " + Atom.getAtomTypeString(i));
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
                return new MdtaMetadataEntry(str, bArr, i4, i3);
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
        Log.m274w("MetadataUtil", "Failed to parse text attribute: " + Atom.getAtomTypeString(i));
        return null;
    }

    private static CommentFrame parseCommentAttribute(int i, ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            String nullTerminatedString = parsableByteArray.readNullTerminatedString(i2 - 16);
            return new CommentFrame(TranslateController.UNKNOWN_LANGUAGE, nullTerminatedString, nullTerminatedString);
        }
        Log.m274w("MetadataUtil", "Failed to parse comment attribute: " + Atom.getAtomTypeString(i));
        return null;
    }

    private static Id3Frame parseUint8Attribute(int i, String str, ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int uint8AttributeValue = parseUint8AttributeValue(parsableByteArray);
        if (z2) {
            uint8AttributeValue = Math.min(1, uint8AttributeValue);
        }
        if (uint8AttributeValue >= 0) {
            if (z) {
                return new TextInformationFrame(str, null, ImmutableList.of(Integer.toString(uint8AttributeValue)));
            }
            return new CommentFrame(TranslateController.UNKNOWN_LANGUAGE, str, Integer.toString(uint8AttributeValue));
        }
        Log.m274w("MetadataUtil", "Failed to parse uint8 attribute: " + Atom.getAtomTypeString(i));
        return null;
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
        Log.m274w("MetadataUtil", "Failed to parse index/count attribute: " + Atom.getAtomTypeString(i));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TextInformationFrame parseStandardGenreAttribute(ParsableByteArray parsableByteArray) {
        String str;
        int uint8AttributeValue = parseUint8AttributeValue(parsableByteArray);
        if (uint8AttributeValue > 0) {
            String[] strArr = STANDARD_GENRES;
            str = uint8AttributeValue <= strArr.length ? strArr[uint8AttributeValue - 1] : null;
        }
        if (str != null) {
            return new TextInformationFrame("TCON", null, ImmutableList.of(str));
        }
        Log.m274w("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    private static ApicFrame parseCoverArt(ParsableByteArray parsableByteArray) {
        String str;
        int i = parsableByteArray.readInt();
        if (parsableByteArray.readInt() != 1684108385) {
            Log.m274w("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int fullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        if (fullAtomFlags == 13) {
            str = "image/jpeg";
        } else {
            str = fullAtomFlags == 14 ? "image/png" : null;
        }
        if (str == null) {
            Log.m274w("MetadataUtil", "Unrecognized cover art flags: " + fullAtomFlags);
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

    private static int parseUint8AttributeValue(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return parsableByteArray.readUnsignedByte();
        }
        Log.m274w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
