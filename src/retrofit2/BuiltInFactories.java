package retrofit2;

import android.annotation.TargetApi;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import retrofit2.CallAdapter;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes3.dex */
class BuiltInFactories {
    public List<? extends CallAdapter.Factory> createDefaultCallAdapterFactories(@Nullable Executor executor) {
        return Collections.singletonList(new DefaultCallAdapterFactory(executor));
    }

    public List<? extends Converter.Factory> createDefaultConverterFactories() {
        return Collections.EMPTY_LIST;
    }

    @TargetApi(24)
    public static final class Java8 extends BuiltInFactories {
        @Override // retrofit2.BuiltInFactories
        public List<? extends CallAdapter.Factory> createDefaultCallAdapterFactories(@Nullable Executor executor) {
            return Arrays.asList(new CompletableFutureCallAdapterFactory(), new DefaultCallAdapterFactory(executor));
        }

        @Override // retrofit2.BuiltInFactories
        public List<? extends Converter.Factory> createDefaultConverterFactories() {
            return Collections.singletonList(new OptionalConverterFactory());
        }
    }
}
