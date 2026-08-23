package kotlinx.coroutines.scheduling;

import androidx.concurrent.futures.AbstractC0324xc40028dd;
import com.google.android.gms.internal.measurement.zzpo$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0010\n\u001a\u00060\bj\u0002`\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0017\u001a\u00020\u00162\n\u0010\n\u001a\u00060\bj\u0002`\t2\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u001f*\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\"\u0010\u001eJ!\u0010$\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010#\u001a\u00020\r¢\u0006\u0004\b$\u0010%J)\u0010&\u001a\u00020\u00162\n\u0010\n\u001a\u00060\bj\u0002`\t2\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0014¢\u0006\u0004\b&\u0010\u0018J\u000f\u0010'\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b'\u0010\u001eJ\u0015\u0010)\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u0019¢\u0006\u0004\b)\u0010*R\u001c\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00100\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00102\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b1\u0010/R\u0013\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0004038\u0002X\u0082\u0004R\u000b\u00106\u001a\u0002058\u0002X\u0082\u0004R\u000b\u00107\u001a\u0002058\u0002X\u0082\u0004R\u000b\u00108\u001a\u0002058\u0002X\u0082\u0004¨\u00069"}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lkotlinx/coroutines/scheduling/Task;", "task", "addLast", "(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", "stealWithExclusiveMode", "(I)Lkotlinx/coroutines/scheduling/Task;", _UrlKt.FRAGMENT_ENCODE_SET, "onlyBlocking", "pollWithExclusiveMode", "(Z)Lkotlinx/coroutines/scheduling/Task;", "index", "tryExtractFromTheMiddle", "(IZ)Lkotlinx/coroutines/scheduling/Task;", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTaskRef", _UrlKt.FRAGMENT_ENCODE_SET, "tryStealLastScheduled", "(ILkotlin/jvm/internal/Ref$ObjectRef;)J", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "queue", "pollTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z", "pollBuffer", "()Lkotlinx/coroutines/scheduling/Task;", _UrlKt.FRAGMENT_ENCODE_SET, "decrementIfBlocking", "(Lkotlinx/coroutines/scheduling/Task;)V", "poll", "fair", "add", "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "trySteal", "pollBlocking", "globalQueue", "offloadAllWorkTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "buffer", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "getBufferSize", "()I", "bufferSize", "getSize$kotlinx_coroutines_core", "size", "Lkotlinx/atomicfu/AtomicRef;", "lastScheduledTask", "Lkotlinx/atomicfu/AtomicInt;", "producerIndex", "consumerIndex", "blockingTasksInBuffer", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,251:1\n77#2:252\n77#2:253\n77#2:254\n77#2:257\n77#2:258\n1#3:255\n21#4:256\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n91#1:252\n158#1:253\n181#1:254\n201#1:257\n245#1:258\n201#1:256\n*E\n"})
public final class WorkQueue {
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private final AtomicReferenceArray<Task> buffer = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;
    private static final /* synthetic */ AtomicReferenceFieldUpdater lastScheduledTask$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater producerIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater consumerIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater blockingTasksInBuffer$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer$volatile");

    private final int getBufferSize() {
        return producerIndex$volatile$FU.get(this) - consumerIndex$volatile$FU.get(this);
    }

    public final int getSize$kotlinx_coroutines_core() {
        Object obj = lastScheduledTask$volatile$FU.get(this);
        int bufferSize = getBufferSize();
        return obj != null ? bufferSize + 1 : bufferSize;
    }

    public final Task poll() {
        Task task = (Task) lastScheduledTask$volatile$FU.getAndSet(this, null);
        return task == null ? pollBuffer() : task;
    }

    private final void decrementIfBlocking(Task task) {
        if (task == null || !task.taskContext) {
            return;
        }
        blockingTasksInBuffer$volatile$FU.decrementAndGet(this);
    }

    public final Task add(Task task, boolean fair) {
        if (fair) {
            return addLast(task);
        }
        Task task2 = (Task) lastScheduledTask$volatile$FU.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return addLast(task2);
    }

    private final Task addLast(Task task) {
        if (getBufferSize() == 127) {
            return task;
        }
        if (task.taskContext) {
            blockingTasksInBuffer$volatile$FU.incrementAndGet(this);
        }
        int i = producerIndex$volatile$FU.get(this) & 127;
        while (this.buffer.get(i) != null) {
            Thread.yield();
        }
        this.buffer.lazySet(i, task);
        producerIndex$volatile$FU.incrementAndGet(this);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long trySteal(int stealingMode, Ref.ObjectRef<Task> stolenTaskRef) {
        T tStealWithExclusiveMode;
        if (stealingMode == 3) {
            tStealWithExclusiveMode = pollBuffer();
        } else {
            tStealWithExclusiveMode = stealWithExclusiveMode(stealingMode);
        }
        if (tStealWithExclusiveMode != 0) {
            stolenTaskRef.element = tStealWithExclusiveMode;
            return -1L;
        }
        return tryStealLastScheduled(stealingMode, stolenTaskRef);
    }

    private final Task stealWithExclusiveMode(int stealingMode) {
        int i = consumerIndex$volatile$FU.get(this);
        int i2 = producerIndex$volatile$FU.get(this);
        boolean z = stealingMode == 1;
        while (i != i2) {
            if (z && blockingTasksInBuffer$volatile$FU.get(this) == 0) {
                return null;
            }
            int i3 = i + 1;
            Task taskTryExtractFromTheMiddle = tryExtractFromTheMiddle(i, z);
            if (taskTryExtractFromTheMiddle != null) {
                return taskTryExtractFromTheMiddle;
            }
            i = i3;
        }
        return null;
    }

    public final Task pollBlocking() {
        return pollWithExclusiveMode(true);
    }

    private final Task pollWithExclusiveMode(boolean onlyBlocking) {
        Task task;
        do {
            task = (Task) lastScheduledTask$volatile$FU.get(this);
            if (task == null || task.taskContext != onlyBlocking) {
                int i = consumerIndex$volatile$FU.get(this);
                int i2 = producerIndex$volatile$FU.get(this);
                while (i != i2) {
                    if (onlyBlocking && blockingTasksInBuffer$volatile$FU.get(this) == 0) {
                        return null;
                    }
                    i2--;
                    Task taskTryExtractFromTheMiddle = tryExtractFromTheMiddle(i2, onlyBlocking);
                    if (taskTryExtractFromTheMiddle != null) {
                        return taskTryExtractFromTheMiddle;
                    }
                }
                return null;
            }
        } while (!AbstractC0324xc40028dd.m87m(lastScheduledTask$volatile$FU, this, task, null));
        return task;
    }

    private final Task tryExtractFromTheMiddle(int index, boolean onlyBlocking) {
        int i = index & 127;
        Task task = this.buffer.get(i);
        if (task == null || task.taskContext != onlyBlocking || !zzpo$$ExternalSyntheticBackportWithForwarding0.m323m(this.buffer, i, task, null)) {
            return null;
        }
        if (onlyBlocking) {
            blockingTasksInBuffer$volatile$FU.decrementAndGet(this);
        }
        return task;
    }

    public final void offloadAllWorkTo(GlobalQueue globalQueue) {
        Task task = (Task) lastScheduledTask$volatile$FU.getAndSet(this, null);
        if (task != null) {
            globalQueue.addLast(task);
        }
        while (pollTo(globalQueue)) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.Task] */
    private final long tryStealLastScheduled(int stealingMode, Ref.ObjectRef<Task> stolenTaskRef) {
        ?? r0;
        do {
            r0 = (Task) lastScheduledTask$volatile$FU.get(this);
            if (r0 == 0) {
                return -2L;
            }
            if (((r0.taskContext ? 1 : 2) & stealingMode) == 0) {
                return -2L;
            }
            long jNanoTime = TasksKt.schedulerTimeSource.nanoTime() - r0.submissionTime;
            long j = TasksKt.WORK_STEALING_TIME_RESOLUTION_NS;
            if (jNanoTime < j) {
                return j - jNanoTime;
            }
        } while (!AbstractC0324xc40028dd.m87m(lastScheduledTask$volatile$FU, this, r0, null));
        stolenTaskRef.element = r0;
        return -1L;
    }

    private final boolean pollTo(GlobalQueue queue) {
        Task taskPollBuffer = pollBuffer();
        if (taskPollBuffer == null) {
            return false;
        }
        queue.addLast(taskPollBuffer);
        return true;
    }

    private final Task pollBuffer() {
        Task andSet;
        while (true) {
            int i = consumerIndex$volatile$FU.get(this);
            if (i - producerIndex$volatile$FU.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (consumerIndex$volatile$FU.compareAndSet(this, i, i + 1) && (andSet = this.buffer.getAndSet(i2, null)) != null) {
                decrementIfBlocking(andSet);
                return andSet;
            }
        }
    }
}
