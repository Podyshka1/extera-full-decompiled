package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class ScriptTagPayloadReader extends TagPayloadReader {
    private long durationUs;
    private long[] keyFrameTagPositions;
    private long[] keyFrameTimesUs;

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parseHeader(ParsableByteArray parsableByteArray) {
        return true;
    }

    public ScriptTagPayloadReader() {
        super(new DummyTrackOutput());
        this.durationUs = -9223372036854775807L;
        this.keyFrameTimesUs = new long[0];
        this.keyFrameTagPositions = new long[0];
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public long[] getKeyFrameTimesUs() {
        return this.keyFrameTimesUs;
    }

    public long[] getKeyFrameTagPositions() {
        return this.keyFrameTagPositions;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parsePayload(ParsableByteArray parsableByteArray, long j) {
        if (readAmfType(parsableByteArray) != 2 || !"onMetaData".equals(readAmfString(parsableByteArray)) || parsableByteArray.bytesLeft() == 0 || readAmfType(parsableByteArray) != 8) {
            return false;
        }
        HashMap<String, Object> amfEcmaArray = readAmfEcmaArray(parsableByteArray);
        Object obj = amfEcmaArray.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.durationUs = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = amfEcmaArray.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.keyFrameTimesUs = new long[size];
                this.keyFrameTagPositions = new long[size];
                for (int i = 0; i < size; i++) {
                    Object obj5 = list.get(i);
                    Object obj6 = list2.get(i);
                    if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                        this.keyFrameTimesUs[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.keyFrameTagPositions[i] = ((Double) obj5).longValue();
                    } else {
                        this.keyFrameTimesUs = new long[0];
                        this.keyFrameTagPositions = new long[0];
                        break;
                    }
                }
            }
        }
        return false;
    }

    private static int readAmfType(ParsableByteArray parsableByteArray) {
        return parsableByteArray.readUnsignedByte();
    }

    private static Boolean readAmfBoolean(ParsableByteArray parsableByteArray) {
        return Boolean.valueOf(parsableByteArray.readUnsignedByte() == 1);
    }

    private static Double readAmfDouble(ParsableByteArray parsableByteArray) {
        return Double.valueOf(Double.longBitsToDouble(parsableByteArray.readLong()));
    }

    private static String readAmfString(ParsableByteArray parsableByteArray) {
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(unsignedShort);
        return new String(parsableByteArray.getData(), position, unsignedShort);
    }

    private static ArrayList<Object> readAmfStrictArray(ParsableByteArray parsableByteArray) {
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        ArrayList<Object> arrayList = new ArrayList<>(unsignedIntToInt);
        for (int i = 0; i < unsignedIntToInt; i++) {
            Object amfData = readAmfData(parsableByteArray, readAmfType(parsableByteArray));
            if (amfData != null) {
                arrayList.add(amfData);
            }
        }
        return arrayList;
    }

    private static HashMap<String, Object> readAmfObject(ParsableByteArray parsableByteArray) {
        HashMap<String, Object> map = new HashMap<>();
        while (true) {
            String amfString = readAmfString(parsableByteArray);
            int amfType = readAmfType(parsableByteArray);
            if (amfType == 9) {
                return map;
            }
            Object amfData = readAmfData(parsableByteArray, amfType);
            if (amfData != null) {
                map.put(amfString, amfData);
            }
        }
    }

    private static HashMap<String, Object> readAmfEcmaArray(ParsableByteArray parsableByteArray) {
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        HashMap<String, Object> map = new HashMap<>(unsignedIntToInt);
        for (int i = 0; i < unsignedIntToInt; i++) {
            String amfString = readAmfString(parsableByteArray);
            Object amfData = readAmfData(parsableByteArray, readAmfType(parsableByteArray));
            if (amfData != null) {
                map.put(amfString, amfData);
            }
        }
        return map;
    }

    private static Date readAmfDate(ParsableByteArray parsableByteArray) {
        Date date = new Date((long) readAmfDouble(parsableByteArray).doubleValue());
        parsableByteArray.skipBytes(2);
        return date;
    }

    private static Object readAmfData(ParsableByteArray parsableByteArray, int i) {
        if (i == 0) {
            return readAmfDouble(parsableByteArray);
        }
        if (i == 1) {
            return readAmfBoolean(parsableByteArray);
        }
        if (i == 2) {
            return readAmfString(parsableByteArray);
        }
        if (i == 3) {
            return readAmfObject(parsableByteArray);
        }
        if (i == 8) {
            return readAmfEcmaArray(parsableByteArray);
        }
        if (i == 10) {
            return readAmfStrictArray(parsableByteArray);
        }
        if (i != 11) {
            return null;
        }
        return readAmfDate(parsableByteArray);
    }
}
