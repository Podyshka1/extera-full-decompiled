package org.telegram.messenger.video.resample;

import java.nio.ShortBuffer;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
public class UpsampleAudioResampler implements AudioResampler {
    private static float ratio(int i, int i2) {
        return i / i2;
    }

    @Override // org.telegram.messenger.video.resample.AudioResampler
    public void resample(ShortBuffer shortBuffer, int i, ShortBuffer shortBuffer2, int i2, int i3) {
        if (i > i2) {
            f$$ExternalSyntheticBUOutline1.m212m("Illegal use of UpsampleAudioResampler");
            return;
        }
        if (i3 != 1 && i3 != 2) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m860m("Illegal use of UpsampleAudioResampler. Channels:", i3);
            return;
        }
        int iRemaining = shortBuffer.remaining() / i3;
        int iCeil = ((int) Math.ceil(((double) iRemaining) * (((double) i2) / ((double) i)))) - iRemaining;
        float fRatio = ratio(iRemaining, iRemaining);
        float fRatio2 = ratio(iCeil, iCeil);
        int i4 = iCeil;
        int i5 = iRemaining;
        while (i5 > 0 && i4 > 0) {
            if (fRatio >= fRatio2) {
                shortBuffer2.put(shortBuffer.get());
                if (i3 == 2) {
                    shortBuffer2.put(shortBuffer.get());
                }
                i5--;
                fRatio = ratio(i5, iRemaining);
            } else {
                shortBuffer2.put(fakeSample(shortBuffer2, shortBuffer, 1, i3));
                if (i3 == 2) {
                    shortBuffer2.put(fakeSample(shortBuffer2, shortBuffer, 2, i3));
                }
                i4--;
                fRatio2 = ratio(i4, iCeil);
            }
        }
    }

    private static short fakeSample(ShortBuffer shortBuffer, ShortBuffer shortBuffer2, int i, int i2) {
        return shortBuffer.get(shortBuffer.position() - i2);
    }
}
