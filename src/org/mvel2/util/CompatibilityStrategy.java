package org.mvel2.util;

/* JADX INFO: loaded from: classes5.dex */
public class CompatibilityStrategy {
    public static CompatibilityEvaluator compatibilityEvaluator = new DefaultCompatibilityEvaluator();

    public interface CompatibilityEvaluator {
        boolean areComparisonCompatible(Class<?> cls, Class<?> cls2);

        boolean areEqualityCompatible(Class<?> cls, Class<?> cls2);
    }

    private CompatibilityStrategy() {
    }

    public static boolean areEqualityCompatible(Class<?> cls, Class<?> cls2) {
        return compatibilityEvaluator.areEqualityCompatible(cls, cls2);
    }

    public static boolean areComparisonCompatible(Class<?> cls, Class<?> cls2) {
        return compatibilityEvaluator.areComparisonCompatible(cls, cls2);
    }

    public static void setCompatibilityEvaluator(CompatibilityEvaluator compatibilityEvaluator2) {
        compatibilityEvaluator = compatibilityEvaluator2;
    }

    public static class DefaultCompatibilityEvaluator implements CompatibilityEvaluator {
        @Override // org.mvel2.util.CompatibilityStrategy.CompatibilityEvaluator
        public boolean areEqualityCompatible(Class<?> cls, Class<?> cls2) {
            if (cls == NullType.class || cls2 == NullType.class || cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls)) {
                return true;
            }
            if (isBoxedNumber(cls, false) && isBoxedNumber(cls2, true)) {
                return true;
            }
            if (cls.isPrimitive()) {
                return cls2.isPrimitive() || arePrimitiveCompatible(cls, cls2, true);
            }
            if (cls2.isPrimitive()) {
                return arePrimitiveCompatible(cls2, cls, false);
            }
            return false;
        }

        @Override // org.mvel2.util.CompatibilityStrategy.CompatibilityEvaluator
        public boolean areComparisonCompatible(Class<?> cls, Class<?> cls2) {
            return areEqualityCompatible(cls, cls2);
        }

        private boolean arePrimitiveCompatible(Class<?> cls, Class<?> cls2, boolean z) {
            if (cls == Boolean.TYPE) {
                return cls2 == Boolean.class;
            }
            if (cls != Integer.TYPE && cls != Long.TYPE && cls != Double.TYPE && cls != Float.TYPE) {
                return cls == Character.TYPE ? cls2 == Character.class : cls == Byte.TYPE ? cls2 == Byte.class : cls == Short.TYPE && cls2 == Short.class;
            }
            return isBoxedNumber(cls2, z);
        }

        private boolean isBoxedNumber(Class<?> cls, boolean z) {
            if (Number.class.isAssignableFrom(cls)) {
                return true;
            }
            return z && cls == String.class;
        }
    }
}
