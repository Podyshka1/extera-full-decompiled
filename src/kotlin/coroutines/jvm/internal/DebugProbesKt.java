package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes.dex
  exteraGram-full-universal-30032026.apk:DebugProbesKt.bin
 */
/* JADX INFO: loaded from: classes.dex */
public abstract class DebugProbesKt {
    public static final Continuation probeCoroutineCreated(Continuation completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return completion;
    }

    public static final void probeCoroutineResumed(Continuation frame) {
        Intrinsics.checkNotNullParameter(frame, "frame");
    }

    public static final void probeCoroutineSuspended(Continuation frame) {
        Intrinsics.checkNotNullParameter(frame, "frame");
    }
}
