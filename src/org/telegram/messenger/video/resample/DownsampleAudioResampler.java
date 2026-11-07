package org.telegram.messenger.video.resample;

import java.nio.ShortBuffer;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
public class DownsampleAudioResampler implements AudioResampler {
    private static float ratio(int i, int i2) {
        return i / i2;
    }

    @Override // org.telegram.messenger.video.resample.AudioResampler
    public void resample(ShortBuffer shortBuffer, int i, ShortBuffer shortBuffer2, int i2, int i3) {
        if (i < i2) {
            f$$ExternalSyntheticBUOutline1.m215m("Illegal use of DownsampleAudioResampler");
            return;
        }
        if (i3 != 1 && i3 != 2) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Illegal use of DownsampleAudioResampler. Channels:", i3);
            return;
        }
        int iRemaining = shortBuffer.remaining() / i3;
        int iCeil = (int) Math.ceil(((double) iRemaining) * (((double) i2) / ((double) i)));
        int i4 = iRemaining - iCeil;
        float fRatio = ratio(iCeil, iCeil);
        float fRatio2 = ratio(i4, i4);
        int i5 = i4;
        int i6 = iCeil;
        while (i6 > 0 && i5 > 0) {
            if (fRatio >= fRatio2) {
                shortBuffer2.put(shortBuffer.get());
                if (i3 == 2) {
                    shortBuffer2.put(shortBuffer.get());
                }
                i6--;
                fRatio = ratio(i6, iCeil);
            } else {
                shortBuffer.position(shortBuffer.position() + i3);
                i5--;
                fRatio2 = ratio(i5, i4);
            }
        }
    }
}
