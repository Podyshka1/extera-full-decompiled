package androidx.datastore.core;

import android.os.FileObserver;
import androidx.datastore.core.MulticastFileObserver;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
public final class MulticastFileObserver extends FileObserver {
    public static final Companion Companion = new Companion(null);
    private static final Object LOCK = new Object();
    private static final Map fileObservers = new LinkedHashMap();
    private final CopyOnWriteArrayList delegates;
    private final String path;

    public /* synthetic */ MulticastFileObserver(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private MulticastFileObserver(String str) {
        super(str, 128);
        this.path = str;
        this.delegates = new CopyOnWriteArrayList();
    }

    @Override // android.os.FileObserver
    public void onEvent(int i, String str) {
        Iterator it = this.delegates.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(str);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map getFileObservers$datastore_core_release() {
            return MulticastFileObserver.fileObservers;
        }

        public final Flow observe(File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return FlowKt.channelFlow(new MulticastFileObserver$Companion$observe$1(file, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DisposableHandle observe(File file, final Function1 function1) {
            final String key = file.getCanonicalFile().getPath();
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    Map fileObservers$datastore_core_release = MulticastFileObserver.Companion.getFileObservers$datastore_core_release();
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    Object multicastFileObserver = fileObservers$datastore_core_release.get(key);
                    if (multicastFileObserver == null) {
                        multicastFileObserver = new MulticastFileObserver(key, null);
                        fileObservers$datastore_core_release.put(key, multicastFileObserver);
                    }
                    MulticastFileObserver multicastFileObserver2 = (MulticastFileObserver) multicastFileObserver;
                    multicastFileObserver2.delegates.add(function1);
                    if (multicastFileObserver2.delegates.size() == 1) {
                        multicastFileObserver2.startWatching();
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new DisposableHandle() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$$ExternalSyntheticLambda0
                @Override // kotlinx.coroutines.DisposableHandle
                public final void dispose() {
                    MulticastFileObserver.Companion.observe$lambda$4(key, function1);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void observe$lambda$4(String str, Function1 observer) {
            Intrinsics.checkNotNullParameter(observer, "$observer");
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    Companion companion = MulticastFileObserver.Companion;
                    MulticastFileObserver multicastFileObserver = (MulticastFileObserver) companion.getFileObservers$datastore_core_release().get(str);
                    if (multicastFileObserver != null) {
                        multicastFileObserver.delegates.remove(observer);
                        if (multicastFileObserver.delegates.isEmpty()) {
                            companion.getFileObservers$datastore_core_release().remove(str);
                            multicastFileObserver.stopWatching();
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
