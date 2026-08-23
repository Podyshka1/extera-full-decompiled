package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public abstract class StorageConnectionKt {

    /* JADX INFO: renamed from: androidx.datastore.core.StorageConnectionKt$readData$2 */
    static final class C05332 extends SuspendLambda implements Function3 {
        private /* synthetic */ Object L$0;
        int label;

        C05332(Continuation continuation) {
            super(3, continuation);
        }

        public final Object invoke(ReadScope readScope, boolean z, Continuation continuation) {
            C05332 c05332 = new C05332(continuation);
            c05332.L$0 = readScope;
            return c05332.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke((ReadScope) obj, ((Boolean) obj2).booleanValue(), (Continuation) obj3);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            ReadScope readScope = (ReadScope) this.L$0;
            this.label = 1;
            Object data = readScope.readData(this);
            return data == coroutine_suspended ? coroutine_suspended : data;
        }
    }

    public static final Object readData(StorageConnection storageConnection, Continuation continuation) {
        return storageConnection.readScope(new C05332(null), continuation);
    }
}
