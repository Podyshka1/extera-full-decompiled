package androidx.camera.camera2.pipe.core;

import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.BuildConfig;
import org.telegram.messenger.NotificationBadge;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0019B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u0015\u001a\u00020\u0007J\r\u0010\u0016\u001a\u00020\nH\u0000¢\u0006\u0002\b\u0017J\b\u0010\u0018\u001a\u00020\nH\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/pipe/core/WakeLock;", _UrlKt.FRAGMENT_ENCODE_SET, "scope", "Lkotlinx/coroutines/CoroutineScope;", "timeout", _UrlKt.FRAGMENT_ENCODE_SET, "startTimeoutOnCreation", _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lkotlinx/coroutines/CoroutineScope;JZLkotlin/jvm/functions/Function0;)V", "lock", NotificationBadge.NewHtcHomeBadger.COUNT, _UrlKt.FRAGMENT_ENCODE_SET, "timeoutJob", "Lkotlinx/coroutines/Job;", "closed", "acquire", "Landroidx/camera/camera2/pipe/core/Token;", BuildConfig.BUILD_TYPE, "releaseToken", "releaseToken$camera_camera2_pipe", "startTimeout", "WakeLockToken", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWakeLock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WakeLock.kt\nandroidx/camera/camera2/pipe/core/WakeLock\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"})
public final class WakeLock {
    private final Function0<Unit> callback;
    private boolean closed;
    private int count;
    private final Object lock;
    private final CoroutineScope scope;
    private final boolean startTimeoutOnCreation;
    private final long timeout;
    private Job timeoutJob;

    public WakeLock(CoroutineScope coroutineScope, long j, boolean z, Function0<Unit> function0) {
        this.scope = coroutineScope;
        this.timeout = j;
        this.startTimeoutOnCreation = z;
        this.callback = function0;
        Object obj = new Object();
        this.lock = obj;
        if (z) {
            synchronized (obj) {
                startTimeout();
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/pipe/core/WakeLock$WakeLockToken;", "Landroidx/camera/camera2/pipe/core/Token;", "<init>", "(Landroidx/camera/camera2/pipe/core/WakeLock;)V", "_released", "Lkotlinx/atomicfu/AtomicBoolean;", "released", _UrlKt.FRAGMENT_ENCODE_SET, "getReleased", "()Z", BuildConfig.BUILD_TYPE, "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public final class WakeLockToken implements Token {
        private final AtomicBoolean _released = AtomicFU.atomic(false);

        public WakeLockToken() {
        }

        @Override // androidx.camera.camera2.pipe.core.Token
        public boolean getReleased() {
            return this._released.getValue();
        }

        @Override // androidx.camera.camera2.pipe.core.Token
        public boolean release() {
            if (!this._released.compareAndSet(false, true)) {
                return false;
            }
            WakeLock.this.releaseToken$camera_camera2_pipe();
            return true;
        }
    }

    public final Token acquire() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return null;
                }
                int i = this.count + 1;
                this.count = i;
                if (i == 1) {
                    Job job = this.timeoutJob;
                    if (job != null) {
                        Job.DefaultImpls.cancel$default(job, null, 1, null);
                    }
                    this.timeoutJob = null;
                }
                Unit unit = Unit.INSTANCE;
                return new WakeLockToken();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean release() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return false;
                }
                this.closed = true;
                Job job = this.timeoutJob;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                this.timeoutJob = null;
                Unit unit = Unit.INSTANCE;
                BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C02382(null), 3, null);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.WakeLock$release$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.core.WakeLock$release$2", m766f = "WakeLock.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C02382 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C02382(Continuation<? super C02382> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WakeLock.this.new C02382(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02382) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                WakeLock.this.callback.invoke();
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    public final void releaseToken$camera_camera2_pipe() {
        synchronized (this.lock) {
            try {
                int i = this.count - 1;
                this.count = i;
                if (i == 0 && !this.closed) {
                    startTimeout();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.WakeLock$startTimeout$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.pipe.core.WakeLock$startTimeout$1", m766f = "WakeLock.kt", m767i = {}, m768l = {116}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C02391 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C02391(Continuation<? super C02391> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WakeLock.this.new C02391(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02391) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = WakeLock.this.timeout;
                this.label = 1;
                if (DelayKt.delay(j, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            Object obj2 = WakeLock.this.lock;
            WakeLock wakeLock = WakeLock.this;
            synchronized (obj2) {
                if (!wakeLock.closed && wakeLock.count == 0) {
                    wakeLock.timeoutJob = null;
                    wakeLock.closed = true;
                    Unit unit = Unit.INSTANCE;
                    WakeLock.this.callback.invoke();
                    return Unit.INSTANCE;
                }
                return Unit.INSTANCE;
            }
        }
    }

    private final void startTimeout() {
        this.timeoutJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C02391(null), 3, null);
    }
}
