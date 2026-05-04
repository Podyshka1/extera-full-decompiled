package androidx.room;

import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class InvalidationTracker$implementation$1 extends FunctionReferenceImpl implements Function1 {
    InvalidationTracker$implementation$1(Object obj) {
        super(1, obj, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Set) obj);
        return Unit.INSTANCE;
    }

    public final void invoke(Set p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((InvalidationTracker) this.receiver).notifyInvalidatedObservers(p0);
    }
}
