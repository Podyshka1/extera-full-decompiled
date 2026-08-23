package org.telegram.ui.Components;

import java.util.function.Function;
import org.telegram.messenger.MessageObject;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class DeleteMessagesBottomSheet$$ExternalSyntheticLambda18 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Integer.valueOf(((MessageObject) obj).getId());
    }
}
