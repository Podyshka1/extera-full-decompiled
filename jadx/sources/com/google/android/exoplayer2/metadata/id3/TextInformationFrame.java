package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new Parcelable.Creator() { // from class: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.1
        @Override // android.os.Parcelable.Creator
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TextInformationFrame[] newArray(int i) {
            return new TextInformationFrame[i];
        }
    };
    public final String description;
    public final String value;
    public final ImmutableList values;

    public TextInformationFrame(String str, String str2, List list) {
        super(str);
        Assertions.checkArgument(!list.isEmpty());
        this.description = str2;
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) list);
        this.values = immutableListCopyOf;
        this.value = (String) immutableListCopyOf.get(0);
    }

    private TextInformationFrame(Parcel parcel) {
        this((String) Assertions.checkNotNull(parcel.readString()), parcel.readString(), ImmutableList.copyOf((String[]) Assertions.checkNotNull(parcel.createStringArray())));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, com.google.android.exoplayer2.metadata.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.f317id;
        str.getClass();
        byte b = -1;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    b = 0;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b = 1;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b = 2;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b = 3;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b = 4;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b = 5;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b = 6;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b = 7;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b = 8;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b = 9;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b = 10;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b = 11;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b = 12;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b = 13;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b = 14;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b = 15;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b = 16;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b = 17;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b = 18;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b = 19;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b = 20;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b = 21;
                }
                break;
        }
        try {
            switch (b) {
                case 0:
                case 10:
                    builder.setAlbumTitle((CharSequence) this.values.get(0));
                    break;
                case 1:
                case 11:
                    builder.setComposer((CharSequence) this.values.get(0));
                    break;
                case 2:
                case 12:
                    String str2 = (String) this.values.get(0);
                    builder.setRecordingMonth(Integer.valueOf(Integer.parseInt(str2.substring(2, 4)))).setRecordingDay(Integer.valueOf(Integer.parseInt(str2.substring(0, 2))));
                    break;
                case 3:
                case 17:
                    builder.setArtist((CharSequence) this.values.get(0));
                    break;
                case 4:
                case 18:
                    builder.setAlbumArtist((CharSequence) this.values.get(0));
                    break;
                case 5:
                case 19:
                    builder.setConductor((CharSequence) this.values.get(0));
                    break;
                case 6:
                case 20:
                    String[] strArrSplit = Util.split((String) this.values.get(0), "/");
                    builder.setTrackNumber(Integer.valueOf(Integer.parseInt(strArrSplit[0]))).setTotalTrackCount(strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null);
                    break;
                case 7:
                case 16:
                    builder.setTitle((CharSequence) this.values.get(0));
                    break;
                case 8:
                case 15:
                    builder.setWriter((CharSequence) this.values.get(0));
                    break;
                case 9:
                case 21:
                    builder.setRecordingYear(Integer.valueOf(Integer.parseInt((String) this.values.get(0))));
                    break;
                case 13:
                    List id3v2point4TimestampFrameForDate = parseId3v2point4TimestampFrameForDate((String) this.values.get(0));
                    int size = id3v2point4TimestampFrameForDate.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                builder.setRecordingDay((Integer) id3v2point4TimestampFrameForDate.get(2));
                            }
                        }
                        builder.setRecordingMonth((Integer) id3v2point4TimestampFrameForDate.get(1));
                    }
                    builder.setRecordingYear((Integer) id3v2point4TimestampFrameForDate.get(0));
                    break;
                case 14:
                    List id3v2point4TimestampFrameForDate2 = parseId3v2point4TimestampFrameForDate((String) this.values.get(0));
                    int size2 = id3v2point4TimestampFrameForDate2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                builder.setReleaseDay((Integer) id3v2point4TimestampFrameForDate2.get(2));
                            }
                        }
                        builder.setReleaseMonth((Integer) id3v2point4TimestampFrameForDate2.get(1));
                    }
                    builder.setReleaseYear((Integer) id3v2point4TimestampFrameForDate2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TextInformationFrame.class == obj.getClass()) {
            TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
            if (Util.areEqual(this.f317id, textInformationFrame.f317id) && Util.areEqual(this.description, textInformationFrame.description) && this.values.equals(textInformationFrame.values)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (527 + this.f317id.hashCode()) * 31;
        String str = this.description;
        return ((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.values.hashCode();
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f317id + ": description=" + this.description + ": values=" + this.values;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f317id);
        parcel.writeString(this.description);
        parcel.writeStringArray((String[]) this.values.toArray(new String[0]));
    }

    private static List parseId3v2point4TimestampFrameForDate(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            }
            if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            }
            if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }
}
