package retrofit2;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
class BuiltInFactories {
    BuiltInFactories() {
    }

    List createDefaultCallAdapterFactories(Executor executor) {
        return Collections.singletonList(new DefaultCallAdapterFactory(executor));
    }

    List createDefaultConverterFactories() {
        return Collections.EMPTY_LIST;
    }

    static final class Java8 extends BuiltInFactories {
        Java8() {
        }

        @Override // retrofit2.BuiltInFactories
        List createDefaultCallAdapterFactories(Executor executor) {
            return Arrays.asList(new CompletableFutureCallAdapterFactory(), new DefaultCallAdapterFactory(executor));
        }

        @Override // retrofit2.BuiltInFactories
        List createDefaultConverterFactories() {
            return Collections.singletonList(new OptionalConverterFactory());
        }
    }
}
