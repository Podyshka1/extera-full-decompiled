package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface StartStopTokens {
    public static final Companion Companion = Companion.$$INSTANCE;

    boolean contains(WorkGenerationalId workGenerationalId);

    StartStopToken remove(WorkGenerationalId workGenerationalId);

    List remove(String str);

    StartStopToken tokenFor(WorkGenerationalId workGenerationalId);

    StartStopToken tokenFor(WorkSpec workSpec);

    /* JADX INFO: renamed from: androidx.work.impl.StartStopTokens$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Companion companion = StartStopTokens.Companion;
        }

        public static StartStopTokens create() {
            return StartStopTokens.Companion.create();
        }

        public static StartStopTokens create(boolean z) {
            return StartStopTokens.Companion.create(z);
        }

        public static StartStopToken $default$tokenFor(StartStopTokens startStopTokens, WorkSpec spec) {
            Intrinsics.checkNotNullParameter(spec, "spec");
            return startStopTokens.tokenFor(WorkSpecKt.generationalId(spec));
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public final StartStopTokens create() {
            return create$default(this, false, 1, null);
        }

        private Companion() {
        }

        public static /* synthetic */ StartStopTokens create$default(Companion companion, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = true;
            }
            return companion.create(z);
        }

        public final StartStopTokens create(boolean z) {
            StartStopTokensImpl startStopTokensImpl = new StartStopTokensImpl();
            return z ? new SynchronizedStartStopTokensImpl(startStopTokensImpl) : startStopTokensImpl;
        }
    }
}
