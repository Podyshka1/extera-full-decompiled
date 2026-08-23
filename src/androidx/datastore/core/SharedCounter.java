package androidx.datastore.core;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SharedCounter {
    public static final Factory Factory = new Factory(null);
    private static final NativeSharedCounter nativeSharedCounter = new NativeSharedCounter();
    private final long mappedAddress;

    public /* synthetic */ SharedCounter(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    private SharedCounter(long j) {
        this.mappedAddress = j;
    }

    public final int getValue() {
        return nativeSharedCounter.nativeGetCounterValue(this.mappedAddress);
    }

    public final int incrementAndGetValue() {
        return nativeSharedCounter.nativeIncrementAndGetCounterValue(this.mappedAddress);
    }

    public static final class Factory {
        public /* synthetic */ Factory(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Factory() {
        }

        public final NativeSharedCounter getNativeSharedCounter$datastore_core_release() {
            return SharedCounter.nativeSharedCounter;
        }

        public final void loadLib() {
            System.loadLibrary("datastore_shared_counter");
        }

        private final SharedCounter createCounterFromFd(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
            int fd = parcelFileDescriptor.getFd();
            if (getNativeSharedCounter$datastore_core_release().nativeTruncateFile(fd) != 0) {
                throw new IOException("Failed to truncate counter file");
            }
            long jNativeCreateSharedCounter = getNativeSharedCounter$datastore_core_release().nativeCreateSharedCounter(fd);
            if (jNativeCreateSharedCounter < 0) {
                throw new IOException("Failed to mmap counter file");
            }
            return new SharedCounter(jNativeCreateSharedCounter, null);
        }

        public final SharedCounter create$datastore_core_release(Function0 produceFile) throws Throwable {
            ParcelFileDescriptor parcelFileDescriptorOpen;
            Intrinsics.checkNotNullParameter(produceFile, "produceFile");
            try {
                parcelFileDescriptorOpen = ParcelFileDescriptor.open((File) produceFile.invoke(), 939524096);
                try {
                    SharedCounter sharedCounterCreateCounterFromFd = createCounterFromFd(parcelFileDescriptorOpen);
                    if (parcelFileDescriptorOpen != null) {
                        parcelFileDescriptorOpen.close();
                    }
                    return sharedCounterCreateCounterFromFd;
                } catch (Throwable th) {
                    th = th;
                    if (parcelFileDescriptorOpen != null) {
                        parcelFileDescriptorOpen.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptorOpen = null;
            }
        }
    }
}
