package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequenceScope;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* JADX INFO: loaded from: classes5.dex */
final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ JobSupport this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JobSupport$children$1(JobSupport jobSupport, Continuation continuation) {
        super(2, continuation);
        this.this$0 = jobSupport;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, continuation);
        jobSupport$children$1.L$0 = obj;
        return jobSupport$children$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope sequenceScope, Continuation continuation) {
        return ((JobSupport$children$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
    
        if (r6.yield(r1, r5) == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
    
        if (r4.yield(r6, r5) == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006b -> B:27:0x0081). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007e -> B:27:0x0081). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        NodeList list;
        LockFreeLinkedListHead lockFreeLinkedListHead;
        LockFreeLinkedListNode nextNode;
        SequenceScope sequenceScope;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SequenceScope sequenceScope2 = (SequenceScope) this.L$0;
            Object state$kotlinx_coroutines_core = this.this$0.getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof ChildHandleNode) {
                ChildJob childJob = ((ChildHandleNode) state$kotlinx_coroutines_core).childJob;
                this.label = 1;
            } else if ((state$kotlinx_coroutines_core instanceof Incomplete) && (list = ((Incomplete) state$kotlinx_coroutines_core).getList()) != null) {
                Object next = list.getNext();
                Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
                lockFreeLinkedListHead = list;
                nextNode = lockFreeLinkedListNode;
                sequenceScope = sequenceScope2;
                if (!Intrinsics.areEqual(nextNode, lockFreeLinkedListHead)) {
                }
            }
        } else if (i == 1) {
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            nextNode = (LockFreeLinkedListNode) this.L$2;
            lockFreeLinkedListHead = (LockFreeLinkedListHead) this.L$1;
            sequenceScope = (SequenceScope) this.L$0;
            ResultKt.throwOnFailure(obj);
            nextNode = nextNode.getNextNode();
            if (!Intrinsics.areEqual(nextNode, lockFreeLinkedListHead)) {
                if (nextNode instanceof ChildHandleNode) {
                    ChildJob childJob2 = ((ChildHandleNode) nextNode).childJob;
                    this.L$0 = sequenceScope;
                    this.L$1 = lockFreeLinkedListHead;
                    this.L$2 = nextNode;
                    this.label = 2;
                }
                nextNode = nextNode.getNextNode();
                if (!Intrinsics.areEqual(nextNode, lockFreeLinkedListHead)) {
                }
            }
        }
        return Unit.INSTANCE;
    }
}
