package com.google.android.material.color.utilities;

import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class MaterialDynamicColors$$ExternalSyntheticLambda9 implements Function {
    public final /* synthetic */ MaterialDynamicColors f$0;

    public /* synthetic */ MaterialDynamicColors$$ExternalSyntheticLambda9(MaterialDynamicColors materialDynamicColors) {
        this.f$0 = materialDynamicColors;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return this.f$0.highestSurface((DynamicScheme) obj);
    }
}
