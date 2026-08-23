package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequenceScope;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/Job;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "kotlinx.coroutines.JobSupport$children$1", m766f = "JobSupport.kt", m767i = {1, 1, 1}, m768l = {1003, WebSocketProtocol.CLOSE_NO_STATUS_CODE}, m769m = "invokeSuspend", m770n = {"$this$sequence", "this_$iv", "cur$iv"}, m771s = {"L$0", "L$1", "L$2"})
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1583:1\n273#2,6:1584\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n1005#1:1584,6\n*E\n"})
public final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Job>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ JobSupport this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(JobSupport jobSupport, Continuation<? super JobSupport$children$1> continuation) {
        super(2, continuation);
        this.this$0 = jobSupport;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, continuation);
        jobSupport$children$1.L$0 = obj;
        return jobSupport$children$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super Job> sequenceScope, Continuation<? super Unit> continuation) {
        return ((JobSupport$children$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        if (r6.yield(r1, r5) == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
    
        if (r4.yield(r6, r5) == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0065 -> B:27:0x007b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0078 -> B:27:0x007b). Please report as a decompilation issue!!! */
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
                lockFreeLinkedListHead = list;
                nextNode = (LockFreeLinkedListNode) list.getNext();
                sequenceScope = sequenceScope2;
                if (!Intrinsics.areEqual(nextNode, lockFreeLinkedListHead)) {
                }
            }
        } else if (i == 1) {
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
