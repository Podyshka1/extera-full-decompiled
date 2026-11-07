package com.exteragram.messenger.preferences.appearance;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
public final /* synthetic */ class AppearancePreferencesActivity$md3Styles$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    public AppearancePreferencesActivity$md3Styles$1$1(Object obj) {
        super(0, obj, AppearancePreferencesActivity.class, "updateMD3Styles", "updateMD3Styles()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((AppearancePreferencesActivity) this.receiver).updateMD3Styles();
    }
}
