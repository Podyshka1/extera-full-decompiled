package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import okhttp3.Request;
import p022j$.util.Objects;
import retrofit2.CallAdapter;
import retrofit2.DefaultCallAdapterFactory;

/* JADX INFO: loaded from: classes3.dex */
final class DefaultCallAdapterFactory extends CallAdapter.Factory {
    private final Executor callbackExecutor;

    DefaultCallAdapterFactory(Executor executor) {
        this.callbackExecutor = executor;
    }

    @Override // retrofit2.CallAdapter.Factory
    public CallAdapter get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (CallAdapter.Factory.getRawType(type) != Call.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        }
        final Type parameterUpperBound = Utils.getParameterUpperBound(0, (ParameterizedType) type);
        final Executor executor = Utils.isAnnotationPresent(annotationArr, SkipCallbackExecutor.class) ? null : this.callbackExecutor;
        return new CallAdapter() { // from class: retrofit2.DefaultCallAdapterFactory.1
            @Override // retrofit2.CallAdapter
            public Type responseType() {
                return parameterUpperBound;
            }

            @Override // retrofit2.CallAdapter
            public Call adapt(Call call) {
                Executor executor2 = executor;
                return executor2 == null ? call : new ExecutorCallbackCall(executor2, call);
            }
        };
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class ExecutorCallbackCall implements Call {
        final Executor callbackExecutor;
        final Call delegate;

        ExecutorCallbackCall(Executor executor, Call call) {
            this.callbackExecutor = executor;
            this.delegate = call;
        }

        @Override // retrofit2.Call
        public void enqueue(Callback callback) {
            Objects.requireNonNull(callback, "callback == null");
            this.delegate.enqueue(new C75621(callback));
        }

        /* JADX INFO: renamed from: retrofit2.DefaultCallAdapterFactory$ExecutorCallbackCall$1 */
        class C75621 implements Callback {
            final /* synthetic */ Callback val$callback;

            C75621(Callback callback) {
                this.val$callback = callback;
            }

            @Override // retrofit2.Callback
            public void onResponse(Call call, final Response response) {
                Executor executor = ExecutorCallbackCall.this.callbackExecutor;
                final Callback callback = this.val$callback;
                executor.execute(new Runnable() { // from class: retrofit2.DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultCallAdapterFactory.ExecutorCallbackCall.C75621.m21024$r8$lambda$iOm3EORbLdOgznz1K1wf7z_Y7E(this.f$0, callback, response);
                    }
                });
            }

            /* JADX INFO: renamed from: $r8$lambda$iOm3EORbLdO-gznz1K1wf7z_Y7E, reason: not valid java name */
            public static /* synthetic */ void m21024$r8$lambda$iOm3EORbLdOgznz1K1wf7z_Y7E(C75621 c75621, Callback callback, Response response) {
                if (ExecutorCallbackCall.this.delegate.isCanceled()) {
                    callback.onFailure(ExecutorCallbackCall.this, new IOException("Canceled"));
                } else {
                    callback.onResponse(ExecutorCallbackCall.this, response);
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call call, final Throwable th) {
                Executor executor = ExecutorCallbackCall.this.callbackExecutor;
                final Callback callback = this.val$callback;
                executor.execute(new Runnable() { // from class: retrofit2.DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onFailure(DefaultCallAdapterFactory.ExecutorCallbackCall.this, th);
                    }
                });
            }
        }

        @Override // retrofit2.Call
        public void cancel() {
            this.delegate.cancel();
        }

        @Override // retrofit2.Call
        public boolean isCanceled() {
            return this.delegate.isCanceled();
        }

        @Override // retrofit2.Call
        public Call clone() {
            return new ExecutorCallbackCall(this.callbackExecutor, this.delegate.clone());
        }

        @Override // retrofit2.Call
        public Request request() {
            return this.delegate.request();
        }
    }
}
