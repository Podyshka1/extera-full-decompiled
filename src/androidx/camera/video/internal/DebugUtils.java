package androidx.camera.video.internal;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DebugUtils {
    public static String readableUs(long j) {
        return readableMs(TimeUnit.MICROSECONDS.toMillis(j));
    }

    public static String readableMs(long j) {
        return formatInterval(j);
    }

    private static String formatInterval(long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long hours = timeUnit.toHours(j);
        TimeUnit timeUnit2 = TimeUnit.HOURS;
        long minutes = timeUnit.toMinutes(j - timeUnit2.toMillis(hours));
        long millis = j - timeUnit2.toMillis(hours);
        TimeUnit timeUnit3 = TimeUnit.MINUTES;
        long seconds = timeUnit.toSeconds(millis - timeUnit3.toMillis(minutes));
        return String.format(Locale.US, "%02d:%02d:%02d.%03d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(((j - timeUnit2.toMillis(hours)) - timeUnit3.toMillis(minutes)) - TimeUnit.SECONDS.toMillis(seconds)));
    }

    public static String bytesToHexString(byte[] bArr) {
        if (bArr == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format("%02X ", Byte.valueOf(b)));
        }
        return sb.toString().trim();
    }

    public static String byteBufferToHex(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return "null";
        }
        int iPosition = byteBuffer.position();
        try {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return bytesToHexString(bArr);
        } finally {
            byteBuffer.position(iPosition);
        }
    }

    public static String getCsdHex(MediaFormat mediaFormat) {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        sb.append("csd-0");
        sb.append(" = ");
        sb.append(byteBufferToHex(mediaFormat.getByteBuffer("csd-0")));
        if (mediaFormat.containsKey("csd-1")) {
            sb.append(", ");
            sb.append("csd-1");
            sb.append(" = ");
            sb.append(byteBufferToHex(mediaFormat.getByteBuffer("csd-1")));
        }
        if (mediaFormat.containsKey("csd-2")) {
            sb.append(", ");
            sb.append("csd-2");
            sb.append(" = ");
            sb.append(byteBufferToHex(mediaFormat.getByteBuffer("csd-2")));
        }
        sb.append("}");
        return sb.toString();
    }
}
