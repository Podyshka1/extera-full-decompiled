package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UByte;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PcmAudioUtil {
    public static ByteBuffer rampUpVolume(ByteBuffer byteBuffer, int i, int i2, int i3, int i4) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
        int iPosition = byteBuffer.position();
        while (byteBuffer.hasRemaining() && i3 < i4) {
            write32BitIntPcm(byteBufferOrder, (int) ((((long) readAs32BitIntPcm(byteBuffer, i)) * ((long) i3)) / ((long) i4)), i);
            if (byteBuffer.position() == iPosition + i2) {
                i3++;
                iPosition = byteBuffer.position();
            }
        }
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.flip();
        return byteBufferOrder;
    }

    public static int readAs32BitIntPcm(ByteBuffer byteBuffer, int i) {
        if (i == 2) {
            return ((byteBuffer.get() & UByte.MAX_VALUE) << 24) | ((byteBuffer.get() & UByte.MAX_VALUE) << 16);
        }
        if (i == 3) {
            return (byteBuffer.get() & UByte.MAX_VALUE) << 24;
        }
        if (i == 4) {
            float fConstrainValue = Util.constrainValue(byteBuffer.getFloat(), -1.0f, 1.0f);
            return fConstrainValue < 0.0f ? (int) ((-fConstrainValue) * (-2.1474836E9f)) : (int) (fConstrainValue * 2.1474836E9f);
        }
        if (i == 21) {
            return ((byteBuffer.get() & UByte.MAX_VALUE) << 24) | ((byteBuffer.get() & UByte.MAX_VALUE) << 8) | ((byteBuffer.get() & UByte.MAX_VALUE) << 16);
        }
        if (i == 22) {
            return ((byteBuffer.get() & UByte.MAX_VALUE) << 24) | (byteBuffer.get() & UByte.MAX_VALUE) | ((byteBuffer.get() & UByte.MAX_VALUE) << 8) | ((byteBuffer.get() & UByte.MAX_VALUE) << 16);
        }
        if (i == 268435456) {
            return ((byteBuffer.get() & UByte.MAX_VALUE) << 16) | ((byteBuffer.get() & UByte.MAX_VALUE) << 24);
        }
        if (i == 1342177280) {
            return ((byteBuffer.get() & UByte.MAX_VALUE) << 8) | ((byteBuffer.get() & UByte.MAX_VALUE) << 24) | ((byteBuffer.get() & UByte.MAX_VALUE) << 16);
        }
        if (i == 1610612736) {
            return (byteBuffer.get() & UByte.MAX_VALUE) | ((byteBuffer.get() & UByte.MAX_VALUE) << 24) | ((byteBuffer.get() & UByte.MAX_VALUE) << 16) | ((byteBuffer.get() & UByte.MAX_VALUE) << 8);
        }
        if (i == 1879048192) {
            double dConstrainValue = Util.constrainValue(byteBuffer.getDouble(), -1.0d, 1.0d);
            return dConstrainValue < 0.0d ? (int) ((-dConstrainValue) * (-2.147483648E9d)) : (int) (dConstrainValue * 2.147483647E9d);
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
        return 0;
    }

    public static void write32BitIntPcm(ByteBuffer byteBuffer, int i, int i2) {
        if (i2 == 2) {
            byteBuffer.put((byte) (i >> 16));
            byteBuffer.put((byte) (i >> 24));
            return;
        }
        if (i2 == 3) {
            byteBuffer.put((byte) (i >> 24));
            return;
        }
        if (i2 == 4) {
            if (i < 0) {
                byteBuffer.putFloat((-i) / (-2.1474836E9f));
                return;
            } else {
                byteBuffer.putFloat(i / 2.1474836E9f);
                return;
            }
        }
        if (i2 == 21) {
            byteBuffer.put((byte) (i >> 8));
            byteBuffer.put((byte) (i >> 16));
            byteBuffer.put((byte) (i >> 24));
            return;
        }
        if (i2 == 22) {
            byteBuffer.put((byte) i);
            byteBuffer.put((byte) (i >> 8));
            byteBuffer.put((byte) (i >> 16));
            byteBuffer.put((byte) (i >> 24));
            return;
        }
        if (i2 == 268435456) {
            byteBuffer.put((byte) (i >> 24));
            byteBuffer.put((byte) (i >> 16));
            return;
        }
        if (i2 == 1342177280) {
            byteBuffer.put((byte) (i >> 24));
            byteBuffer.put((byte) (i >> 16));
            byteBuffer.put((byte) (i >> 8));
        } else {
            if (i2 == 1610612736) {
                byteBuffer.put((byte) (i >> 24));
                byteBuffer.put((byte) (i >> 16));
                byteBuffer.put((byte) (i >> 8));
                byteBuffer.put((byte) i);
                return;
            }
            if (i2 != 1879048192) {
                MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
            } else if (i < 0) {
                byteBuffer.putDouble((-i) / (-2.147483648E9d));
            } else {
                byteBuffer.putDouble(((double) i) / 2.147483647E9d);
            }
        }
    }
}
