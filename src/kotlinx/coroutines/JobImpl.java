package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0003¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tR\u001a\u0010\b\u001a\u00020\u00078\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\b\u0010\u000b\u001a\u0004\b\f\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\t¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "Lkotlinx/coroutines/Job;", "parent", "<init>", "(Lkotlinx/coroutines/Job;)V", _UrlKt.FRAGMENT_ENCODE_SET, "handlesException", "()Z", "complete", "Z", "getHandlesException$kotlinx_coroutines_core", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
public class JobImpl extends JobSupport implements CompletableJob {
    private final boolean handlesException;

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    public JobImpl(Job job) {
        super(true);
        initParentJob(job);
        this.handlesException = handlesException();
    }

    @Override // kotlinx.coroutines.JobSupport
    /* JADX INFO: renamed from: getHandlesException$kotlinx_coroutines_core, reason: from getter */
    public boolean getHandlesException() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean complete() {
        return makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
    }

    private final boolean handlesException() {
        JobSupport job;
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        ChildHandleNode childHandleNode = parentHandle$kotlinx_coroutines_core instanceof ChildHandleNode ? (ChildHandleNode) parentHandle$kotlinx_coroutines_core : null;
        if (childHandleNode != null && (job = childHandleNode.getJob()) != null) {
            while (!job.getHandlesException()) {
                ChildHandle parentHandle$kotlinx_coroutines_core2 = job.getParentHandle$kotlinx_coroutines_core();
                ChildHandleNode childHandleNode2 = parentHandle$kotlinx_coroutines_core2 instanceof ChildHandleNode ? (ChildHandleNode) parentHandle$kotlinx_coroutines_core2 : null;
                if (childHandleNode2 == null || (job = childHandleNode2.getJob()) == null) {
                }
            }
            return true;
        }
        return false;
    }
}
