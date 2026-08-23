package androidx.datastore.core;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class FileStorage implements Storage {
    public static final Companion Companion = new Companion(null);
    private static final Set activeFiles = new LinkedHashSet();
    private static final Object activeFilesLock = new Object();
    private final Function1 coordinatorProducer;
    private final Function0 produceFile;
    private final Serializer serializer;

    public FileStorage(Serializer serializer, Function1 coordinatorProducer, Function0 produceFile) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinatorProducer, "coordinatorProducer");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        this.serializer = serializer;
        this.coordinatorProducer = coordinatorProducer;
        this.produceFile = produceFile;
    }

    public /* synthetic */ FileStorage(Serializer serializer, Function1 function1, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(serializer, (i & 2) != 0 ? new Function1() { // from class: androidx.datastore.core.FileStorage.1
            @Override // kotlin.jvm.functions.Function1
            public final InterProcessCoordinator invoke(File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return InterProcessCoordinator_jvmKt.createSingleProcessCoordinator(it);
            }
        } : function1, function0);
    }

    @Override // androidx.datastore.core.Storage
    public StorageConnection createConnection() throws IOException {
        final File file = ((File) this.produceFile.invoke()).getCanonicalFile();
        synchronized (activeFilesLock) {
            String path = file.getAbsolutePath();
            Set set = activeFiles;
            if (set.contains(path)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + path + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            Intrinsics.checkNotNullExpressionValue(path, "path");
            set.add(path);
        }
        Intrinsics.checkNotNullExpressionValue(file, "file");
        return new FileStorageConnection(file, this.serializer, (InterProcessCoordinator) this.coordinatorProducer.invoke(file), new Function0() { // from class: androidx.datastore.core.FileStorage.createConnection.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m2103invoke();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m2103invoke() {
                Companion companion = FileStorage.Companion;
                Object activeFilesLock$datastore_core_release = companion.getActiveFilesLock$datastore_core_release();
                File file2 = file;
                synchronized (activeFilesLock$datastore_core_release) {
                    companion.getActiveFiles$datastore_core_release().remove(file2.getAbsolutePath());
                    Unit unit = Unit.INSTANCE;
                }
            }
        });
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Set getActiveFiles$datastore_core_release() {
            return FileStorage.activeFiles;
        }

        public final Object getActiveFilesLock$datastore_core_release() {
            return FileStorage.activeFilesLock;
        }
    }
}
