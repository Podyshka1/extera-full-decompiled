package kotlinx.serialization.json;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class JsonKt {
    public static /* synthetic */ Json Json$default(Json json, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            json = Json.Default;
        }
        return Json(json, function1);
    }

    public static final Json Json(Json from, Function1 builderAction) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        JsonBuilder jsonBuilder = new JsonBuilder(from);
        builderAction.invoke(jsonBuilder);
        return new JsonImpl(jsonBuilder.build$kotlinx_serialization_json(), jsonBuilder.getSerializersModule());
    }
}
