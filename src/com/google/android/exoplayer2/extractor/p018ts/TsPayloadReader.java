package com.google.android.exoplayer2.extractor.p018ts;

import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public interface TsPayloadReader {

    public interface Factory {
        SparseArray createInitialPayloadReaders();

        TsPayloadReader createPayloadReader(int i, EsInfo esInfo);
    }

    void consume(ParsableByteArray parsableByteArray, int i);

    void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TrackIdGenerator trackIdGenerator);

    void seek();

    public static final class EsInfo {
        public final byte[] descriptorBytes;
        public final List dvbSubtitleInfos;
        public final String language;
        public final int streamType;

        public EsInfo(int i, String str, List list, byte[] bArr) {
            List listUnmodifiableList;
            this.streamType = i;
            this.language = str;
            if (list == null) {
                listUnmodifiableList = Collections.EMPTY_LIST;
            } else {
                listUnmodifiableList = DesugarCollections.unmodifiableList(list);
            }
            this.dvbSubtitleInfos = listUnmodifiableList;
            this.descriptorBytes = bArr;
        }
    }

    public static final class DvbSubtitleInfo {
        public final byte[] initializationData;
        public final String language;
        public final int type;

        public DvbSubtitleInfo(String str, int i, byte[] bArr) {
            this.language = str;
            this.type = i;
            this.initializationData = bArr;
        }
    }

    public static final class TrackIdGenerator {
        private final int firstTrackId;
        private String formatId;
        private final String formatIdPrefix;
        private int trackId;
        private final int trackIdIncrement;

        public TrackIdGenerator(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public TrackIdGenerator(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            this.formatIdPrefix = str;
            this.firstTrackId = i2;
            this.trackIdIncrement = i3;
            this.trackId = Integer.MIN_VALUE;
            this.formatId = _UrlKt.FRAGMENT_ENCODE_SET;
        }

        public void generateNewId() {
            int i = this.trackId;
            this.trackId = i == Integer.MIN_VALUE ? this.firstTrackId : i + this.trackIdIncrement;
            this.formatId = this.formatIdPrefix + this.trackId;
        }

        public int getTrackId() {
            maybeThrowUninitializedError();
            return this.trackId;
        }

        public String getFormatId() {
            maybeThrowUninitializedError();
            return this.formatId;
        }

        private void maybeThrowUninitializedError() {
            if (this.trackId == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }
    }
}
