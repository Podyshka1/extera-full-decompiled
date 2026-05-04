package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes.dex */
public abstract class ComposersKt {
    public static final Composer Composer(InternalJsonWriter sb, Json json) {
        Intrinsics.checkNotNullParameter(sb, "sb");
        Intrinsics.checkNotNullParameter(json, "json");
        return json.getConfiguration().getPrettyPrint() ? new ComposerWithPrettyPrint(sb, json) : new Composer(sb);
    }
}
