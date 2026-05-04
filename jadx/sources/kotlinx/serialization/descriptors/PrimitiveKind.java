package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class PrimitiveKind extends SerialKind {
    public /* synthetic */ PrimitiveKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PrimitiveKind() {
        super(null);
    }

    public static final class BOOLEAN extends PrimitiveKind {
        public static final BOOLEAN INSTANCE = new BOOLEAN();

        private BOOLEAN() {
            super(null);
        }
    }

    public static final class INT extends PrimitiveKind {
        public static final INT INSTANCE = new INT();

        private INT() {
            super(null);
        }
    }

    public static final class LONG extends PrimitiveKind {
        public static final LONG INSTANCE = new LONG();

        private LONG() {
            super(null);
        }
    }

    public static final class DOUBLE extends PrimitiveKind {
        public static final DOUBLE INSTANCE = new DOUBLE();

        private DOUBLE() {
            super(null);
        }
    }

    public static final class STRING extends PrimitiveKind {
        public static final STRING INSTANCE = new STRING();

        private STRING() {
            super(null);
        }
    }
}
