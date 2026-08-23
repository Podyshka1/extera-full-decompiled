package kotlin.jvm.internal;

import kotlin.Function;
import kotlin.SinceKotlin;

/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.4")
public interface FunctionAdapter {
    Function<?> getFunctionDelegate();
}
