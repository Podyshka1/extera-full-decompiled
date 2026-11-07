package androidx.media3.exoplayer.util;

import android.os.SystemClock;
import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.upstream.Loader;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import kotlin.UByte;
import okio.internal.ZipFilesKt$$ExternalSyntheticBUOutline0;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SntpClient {
    private static long elapsedRealtimeOffsetMs = 0;
    private static boolean isInitialized = false;
    private static long lastUpdateElapsedRealtime = -9223372036854775807L;
    private static long maxElapsedTimeUntilUpdateMs = -9223372036854775807L;
    private static String ntpHost = "time.android.com";
    private static int timeoutMs = 1000;
    private static final Object loaderLock = new Object();
    private static final Object valueLock = new Object();

    public interface InitializationCallback {
        void onInitializationFailed(IOException iOException);

        void onInitialized();
    }

    public static String getNtpHost() {
        String str;
        synchronized (valueLock) {
            str = ntpHost;
        }
        return str;
    }

    public static int getTimeoutMs() {
        int i;
        synchronized (valueLock) {
            i = timeoutMs;
        }
        return i;
    }

    public static boolean isInitialized() {
        boolean z;
        synchronized (valueLock) {
            try {
                if (lastUpdateElapsedRealtime != -9223372036854775807L && maxElapsedTimeUntilUpdateMs != -9223372036854775807L) {
                    isInitialized = isInitialized && SystemClock.elapsedRealtime() - lastUpdateElapsedRealtime < maxElapsedTimeUntilUpdateMs;
                }
                z = isInitialized;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static long getElapsedRealtimeOffsetMs() {
        long j;
        synchronized (valueLock) {
            try {
                j = isInitialized ? elapsedRealtimeOffsetMs : -9223372036854775807L;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    public static void initialize(Loader loader, InitializationCallback initializationCallback) {
        if (isInitialized()) {
            if (initializationCallback != null) {
                initializationCallback.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.startLoading(new NtpTimeLoadable(), new NtpTimeCallback(initializationCallback), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long loadNtpTimeOffsetMs() {
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(getTimeoutMs());
            InetAddress[] allByName = InetAddress.getAllByName(getNtpHost());
            int length = allByName.length;
            SocketTimeoutException socketTimeoutException = null;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                byte[] bArr = new byte[48];
                DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, allByName[i], 123);
                bArr[0] = 27;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                writeTimestamp(bArr, 40, jCurrentTimeMillis);
                datagramSocket.send(datagramPacket);
                try {
                    datagramSocket.receive(new DatagramPacket(bArr, 48));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j = jCurrentTimeMillis + (jElapsedRealtime2 - jElapsedRealtime);
                    byte b2 = bArr[0];
                    int i3 = bArr[1] & UByte.MAX_VALUE;
                    long timestamp = readTimestamp(bArr, 24);
                    long timestamp2 = readTimestamp(bArr, 32);
                    long timestamp3 = readTimestamp(bArr, 40);
                    checkValidServerReply((byte) ((b2 >> 6) & 3), (byte) (b2 & 7), i3, timestamp3);
                    long j2 = (j + (((timestamp2 - timestamp) + (timestamp3 - j)) / 2)) - jElapsedRealtime2;
                    datagramSocket.close();
                    return j2;
                } catch (SocketTimeoutException e) {
                    if (socketTimeoutException == null) {
                        socketTimeoutException = e;
                    } else {
                        socketTimeoutException.addSuppressed(e);
                    }
                    int i4 = i2 + 1;
                    if (i2 >= 10) {
                        throw ((SocketTimeoutException) Assertions.checkNotNull(socketTimeoutException));
                    }
                    i++;
                    i2 = i4;
                }
            }
            throw ((SocketTimeoutException) Assertions.checkNotNull(socketTimeoutException));
        } finally {
        }
    }

    private static long readTimestamp(byte[] bArr, int i) {
        long j = read32(bArr, i);
        long j2 = read32(bArr, i + 4);
        if (j == 0 && j2 == 0) {
            return 0L;
        }
        return ((j - 2208988800L) * 1000) + ((j2 * 1000) / 4294967296L);
    }

    private static void writeTimestamp(byte[] bArr, int i, long j) {
        if (j == 0) {
            Arrays.fill(bArr, i, i + 8, (byte) 0);
            return;
        }
        long j2 = j / 1000;
        long j3 = j - (j2 * 1000);
        bArr[i] = (byte) (r2 >> 24);
        bArr[i + 1] = (byte) (r2 >> 16);
        bArr[i + 2] = (byte) (r2 >> 8);
        bArr[i + 3] = (byte) (j2 + 2208988800L);
        long j4 = (j3 * 4294967296L) / 1000;
        bArr[i + 4] = (byte) (j4 >> 24);
        bArr[i + 5] = (byte) (j4 >> 16);
        bArr[i + 6] = (byte) (j4 >> 8);
        bArr[i + 7] = (byte) (Math.random() * 255.0d);
    }

    private static long read32(byte[] bArr, int i) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & 127) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        return (((long) i2) << 24) + (((long) i3) << 16) + (((long) i4) << 8) + ((long) i5);
    }

    private static void checkValidServerReply(byte b2, byte b3, int i, long j) throws IOException {
        if (b2 == 3) {
            Model$$ExternalSyntheticBUOutline0.m1054m("SNTP: Unsynchronized server");
            return;
        }
        if (b3 != 4 && b3 != 5) {
            ZipFilesKt$$ExternalSyntheticBUOutline0.m931m("SNTP: Untrusted mode: ", b3);
            return;
        }
        if (i == 0 || i > 15) {
            ZipFilesKt$$ExternalSyntheticBUOutline0.m931m("SNTP: Untrusted stratum: ", i);
        } else {
            if (j != 0) {
                return;
            }
            Model$$ExternalSyntheticBUOutline0.m1054m("SNTP: Zero transmitTime");
        }
    }

    public static final class NtpTimeLoadable implements Loader.Loadable {
        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        private NtpTimeLoadable() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() {
            synchronized (SntpClient.loaderLock) {
                synchronized (SntpClient.valueLock) {
                    if (SntpClient.isInitialized) {
                        return;
                    }
                    long jLoadNtpTimeOffsetMs = SntpClient.loadNtpTimeOffsetMs();
                    synchronized (SntpClient.valueLock) {
                        long unused = SntpClient.lastUpdateElapsedRealtime = SystemClock.elapsedRealtime();
                        long unused2 = SntpClient.elapsedRealtimeOffsetMs = jLoadNtpTimeOffsetMs;
                        boolean unused3 = SntpClient.isInitialized = true;
                    }
                }
            }
        }
    }

    public static final class NtpTimeCallback implements Loader.Callback<Loader.Loadable> {
        private final InitializationCallback callback;

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(Loader.Loadable loadable, long j, long j2, boolean z) {
        }

        public NtpTimeCallback(InitializationCallback initializationCallback) {
            this.callback = initializationCallback;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(Loader.Loadable loadable, long j, long j2) {
            if (this.callback != null) {
                boolean zIsInitialized = SntpClient.isInitialized();
                InitializationCallback initializationCallback = this.callback;
                if (!zIsInitialized) {
                    initializationCallback.onInitializationFailed(new IOException(new ConcurrentModificationException()));
                } else {
                    initializationCallback.onInitialized();
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(Loader.Loadable loadable, long j, long j2, IOException iOException, int i) {
            InitializationCallback initializationCallback = this.callback;
            if (initializationCallback != null) {
                initializationCallback.onInitializationFailed(iOException);
            }
            return Loader.DONT_RETRY;
        }
    }
}
