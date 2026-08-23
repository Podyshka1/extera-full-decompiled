package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.Decoder;

/* JADX INFO: loaded from: classes4.dex */
public interface SubtitleDecoder extends Decoder<SubtitleInputBuffer, SubtitleOutputBuffer, SubtitleDecoderException> {
    void setPositionUs(long j);
}
