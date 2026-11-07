package com.exteragram.messenger.plugins.ui.components;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
public final /* synthetic */ class InstallPluginBottomSheet$descriptionText$2 extends FunctionReferenceImpl implements Function0<Unit> {
    public InstallPluginBottomSheet$descriptionText$2(Object obj) {
        super(0, obj, InstallPluginBottomSheet.class, "onTextTransitionUpdate", "onTextTransitionUpdate()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((InstallPluginBottomSheet) this.receiver).onTextTransitionUpdate();
    }
}
