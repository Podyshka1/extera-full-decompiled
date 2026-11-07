package androidx.media3.common;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SharedMemory;
import android.system.OsConstants;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class BundleableByteArray {
    private static final String FIELD_IN_PROCESS_BINDER = Util.intToStringMaxRadix(0);
    private static final String FIELD_SHARED_MEMORY = Util.intToStringMaxRadix(1);
    private static final String FIELD_SPLIT_ARRAY_RETRIEVER = Util.intToStringMaxRadix(2);
    private final byte[] byteArray;
    private final InProcessBinder inProcessBinder = new InProcessBinder();
    SharedMemoryApi27 sharedMemoryApi27;
    SplitArrayRetriever splitArrayRetriever;

    public BundleableByteArray(byte[] bArr) {
        this.byteArray = bArr;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBinder(FIELD_IN_PROCESS_BINDER, this.inProcessBinder);
        if (Build.VERSION.SDK_INT >= 27) {
            byte[] bArr = this.byteArray;
            if (bArr.length > 0) {
                if (this.sharedMemoryApi27 == null) {
                    this.sharedMemoryApi27 = SharedMemoryApi27.create(bArr);
                }
                SharedMemoryApi27 sharedMemoryApi27 = this.sharedMemoryApi27;
                if (sharedMemoryApi27 != null) {
                    sharedMemoryApi27.writeToBundle(bundle);
                    return bundle;
                }
            }
        }
        if (this.splitArrayRetriever == null) {
            this.splitArrayRetriever = new SplitArrayRetriever(this.byteArray);
        }
        this.splitArrayRetriever.writeToBundle(bundle);
        return bundle;
    }

    public static byte[] fromBundle(Bundle bundle) {
        byte[] fromBundle;
        IBinder binder = bundle.getBinder(FIELD_IN_PROCESS_BINDER);
        if (binder == null) {
            return null;
        }
        if (binder instanceof InProcessBinder) {
            return ((InProcessBinder) binder).getByteArray();
        }
        return (Build.VERSION.SDK_INT < 27 || (fromBundle = SharedMemoryApi27.readFromBundle(bundle)) == null) ? SplitArrayRetriever.readFromBundle(bundle) : fromBundle;
    }

    public static final class SharedMemoryApi27 {
        private final SharedMemory sharedMemory;

        /* JADX INFO: Access modifiers changed from: private */
        public static SharedMemoryApi27 create(byte[] bArr) {
            SharedMemory sharedMemoryCreate;
            try {
                sharedMemoryCreate = SharedMemory.create("BundleableByteArray", bArr.length);
            } catch (Exception e) {
                e = e;
                sharedMemoryCreate = null;
            }
            try {
                ByteBuffer byteBufferMapReadWrite = sharedMemoryCreate.mapReadWrite();
                byteBufferMapReadWrite.put(bArr);
                SharedMemory.unmap(byteBufferMapReadWrite);
                sharedMemoryCreate.setProtect(OsConstants.PROT_READ);
                return new SharedMemoryApi27(sharedMemoryCreate);
            } catch (Exception e2) {
                e = e2;
                Log.m165w("BundleableByteArray", "Failed to allocate shared memory for byte array, size=" + bArr.length, e);
                if (sharedMemoryCreate != null) {
                    sharedMemoryCreate.close();
                }
                return null;
            }
        }

        private SharedMemoryApi27(SharedMemory sharedMemory) {
            this.sharedMemory = sharedMemory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeToBundle(Bundle bundle) {
            bundle.putParcelable(BundleableByteArray.FIELD_SHARED_MEMORY, this.sharedMemory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] readFromBundle(Bundle bundle) throws Throwable {
            ByteBuffer byteBufferMapReadOnly;
            SharedMemory sharedMemoryM156m = C0643x91b5cc2d.m156m(bundle.getParcelable(BundleableByteArray.FIELD_SHARED_MEMORY));
            try {
                if (sharedMemoryM156m == null) {
                    return null;
                }
                try {
                    byteBufferMapReadOnly = sharedMemoryM156m.mapReadOnly();
                    try {
                        byte[] bArr = new byte[sharedMemoryM156m.getSize()];
                        byteBufferMapReadOnly.get(bArr);
                        SharedMemory.unmap(byteBufferMapReadOnly);
                        sharedMemoryM156m.close();
                        return bArr;
                    } catch (Exception e) {
                        e = e;
                        Log.m165w("BundleableByteArray", "Failed to read byte array from shared memory", e);
                        if (byteBufferMapReadOnly != null) {
                            SharedMemory.unmap(byteBufferMapReadOnly);
                        }
                        sharedMemoryM156m.close();
                        return null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    byteBufferMapReadOnly = null;
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        SharedMemory.unmap(null);
                    }
                    sharedMemoryM156m.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static final class SplitArrayRetriever {
        private static final int CHUNK_SIZE = AbstractC0644C.SUGGESTED_MAX_IPC_SIZE;
        private final BundleListRetriever bundleListRetriever;

        private SplitArrayRetriever(byte[] bArr) {
            ImmutableList.Builder builder = ImmutableList.builder();
            int iCeilDivide = Util.ceilDivide(bArr.length, CHUNK_SIZE);
            for (int i = 0; i < iCeilDivide; i++) {
                Bundle bundle = new Bundle();
                int i2 = CHUNK_SIZE;
                int i3 = i * i2;
                bundle.putByteArray("bytes", Arrays.copyOfRange(bArr, i3, Math.min(i2 + i3, bArr.length)));
                builder.add(bundle);
            }
            this.bundleListRetriever = new BundleListRetriever(builder.build());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void writeToBundle(Bundle bundle) {
            bundle.putBinder(BundleableByteArray.FIELD_SPLIT_ARRAY_RETRIEVER, this.bundleListRetriever);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] readFromBundle(Bundle bundle) {
            IBinder binder = bundle.getBinder(BundleableByteArray.FIELD_SPLIT_ARRAY_RETRIEVER);
            if (binder == null) {
                return null;
            }
            try {
                ImmutableList<Bundle> list = BundleListRetriever.getList(binder);
                if (list.isEmpty()) {
                    return Util.EMPTY_BYTE_ARRAY;
                }
                byte[] byteArray = ((Bundle) Iterables.getLast(list)).getByteArray("bytes");
                if (byteArray == null) {
                    return null;
                }
                int size = list.size() - 1;
                int i = CHUNK_SIZE;
                byte[] bArr = new byte[(size * i) + byteArray.length];
                System.arraycopy(byteArray, 0, bArr, i * size, byteArray.length);
                for (int i2 = 0; i2 < size; i2++) {
                    byte[] byteArray2 = list.get(i2).getByteArray("bytes");
                    if (byteArray2 != null) {
                        int length = byteArray2.length;
                        int i3 = CHUNK_SIZE;
                        if (length == i3) {
                            System.arraycopy(byteArray2, 0, bArr, i2 * i3, i3);
                        }
                    }
                    return null;
                }
                return bArr;
            } catch (RuntimeException e) {
                Log.m165w("BundleableByteArray", "Failed to read byte array from bundle list retriever", e);
                return null;
            }
        }
    }

    public final class InProcessBinder extends Binder {
        private InProcessBinder() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] getByteArray() {
            return BundleableByteArray.this.byteArray;
        }
    }
}
