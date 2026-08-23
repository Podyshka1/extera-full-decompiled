package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Field;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DebugMetadataKt {
    public static final StackTraceElement getStackTraceElement(BaseContinuationImpl baseContinuationImpl) {
        String strM1083c;
        Intrinsics.checkNotNullParameter(baseContinuationImpl, "<this>");
        DebugMetadata debugMetadataAnnotation = getDebugMetadataAnnotation(baseContinuationImpl);
        if (debugMetadataAnnotation == null || debugMetadataAnnotation.m1087v() < 1) {
            return null;
        }
        int label = getLabel(baseContinuationImpl);
        int i = label < 0 ? -1 : debugMetadataAnnotation.m1085l()[label];
        String moduleName = ModuleNameRetriever.INSTANCE.getModuleName(baseContinuationImpl);
        if (moduleName == null) {
            strM1083c = debugMetadataAnnotation.m1083c();
        } else {
            strM1083c = moduleName + '/' + debugMetadataAnnotation.m1083c();
        }
        return new StackTraceElement(strM1083c, debugMetadataAnnotation.m1086m(), debugMetadataAnnotation.m1084f(), i);
    }

    private static final DebugMetadata getDebugMetadataAnnotation(BaseContinuationImpl baseContinuationImpl) {
        return (DebugMetadata) baseContinuationImpl.getClass().getAnnotation(DebugMetadata.class);
    }

    private static final int getLabel(BaseContinuationImpl baseContinuationImpl) {
        try {
            Field declaredField = baseContinuationImpl.getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(baseContinuationImpl);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            return -1;
        }
    }
}
