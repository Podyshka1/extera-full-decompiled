package com.google.android.material.color.utilities;

import java.util.function.Function;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda9 implements Function {
    public final /* synthetic */ MaterialDynamicColors f$0;

    public /* synthetic */ MaterialDynamicColors$$ExternalSyntheticLambda9(MaterialDynamicColors materialDynamicColors) {
        this.f$0 = materialDynamicColors;
    }

    public /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return this.f$0.highestSurface((DynamicScheme) obj);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
