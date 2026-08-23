package org.telegram.messenger.video.remix;

import java.nio.ShortBuffer;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SurroundAudioRemixer implements AudioRemixer {
    @Override // org.telegram.messenger.video.remix.AudioRemixer
    public void remix(ShortBuffer shortBuffer, int i, ShortBuffer shortBuffer2, int i2) {
        if (i2 != 1 && i2 != 2) {
            f$$ExternalSyntheticBUOutline1.m178m("Output must be 2 or 1 channels");
            return;
        }
        int iMin = Math.min(shortBuffer.remaining() / i, shortBuffer2.remaining() / i2);
        for (int i3 = 0; i3 < iMin; i3++) {
            short s = shortBuffer.get();
            short s2 = shortBuffer.get();
            shortBuffer.position(shortBuffer.position() + 4);
            if (i2 == 2) {
                shortBuffer2.put(s);
                shortBuffer2.put(s2);
            } else if (i2 == 1) {
                shortBuffer2.put(DownMixAudioRemixer.mix(s, s2));
            }
        }
    }

    @Override // org.telegram.messenger.video.remix.AudioRemixer
    public int getRemixedSize(int i, int i2, int i3) {
        return (i / i2) * i3;
    }
}
