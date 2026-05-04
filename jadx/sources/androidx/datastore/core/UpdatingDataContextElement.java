package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class UpdatingDataContextElement implements CoroutineContext.Element {
    public static final Companion Companion = new Companion(null);
    private static final String NESTED_UPDATE_ERROR_MESSAGE = "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.";
    private final DataStoreImpl instance;
    private final UpdatingDataContextElement parent;

    public UpdatingDataContextElement(UpdatingDataContextElement updatingDataContextElement, DataStoreImpl instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.parent = updatingDataContextElement;
        this.instance = instance;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static final class Key implements CoroutineContext.Key {
            public static final Key INSTANCE = new Key();

            private Key() {
            }
        }
    }

    public final void checkNotUpdating(DataStore candidate) {
        Intrinsics.checkNotNullParameter(candidate, "candidate");
        if (this.instance == candidate) {
            throw new IllegalStateException(NESTED_UPDATE_ERROR_MESSAGE.toString());
        }
        UpdatingDataContextElement updatingDataContextElement = this.parent;
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(candidate);
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public CoroutineContext.Key getKey() {
        return Companion.Key.INSTANCE;
    }
}
