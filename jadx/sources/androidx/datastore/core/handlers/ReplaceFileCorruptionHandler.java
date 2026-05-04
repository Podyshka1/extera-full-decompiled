package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ReplaceFileCorruptionHandler implements CorruptionHandler {
    private final Function1 produceNewData;

    public ReplaceFileCorruptionHandler(Function1 produceNewData) {
        Intrinsics.checkNotNullParameter(produceNewData, "produceNewData");
        this.produceNewData = produceNewData;
    }

    @Override // androidx.datastore.core.CorruptionHandler
    public Object handleCorruption(CorruptionException corruptionException, Continuation continuation) {
        return this.produceNewData.invoke(corruptionException);
    }
}
