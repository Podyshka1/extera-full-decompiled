package kotlinx.coroutines;

/* JADX INFO: loaded from: classes.dex */
public abstract class EventLoopKt {
    public static final EventLoop createEventLoop() {
        return new BlockingEventLoop(Thread.currentThread());
    }
}
