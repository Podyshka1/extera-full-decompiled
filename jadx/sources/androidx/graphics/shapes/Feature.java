package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class Feature {
    private final List cubics;

    public abstract Feature transformed$graphics_shapes_release(PointTransformer pointTransformer);

    public Feature(List cubics) {
        Intrinsics.checkNotNullParameter(cubics, "cubics");
        this.cubics = cubics;
    }

    public final List getCubics() {
        return this.cubics;
    }

    public static final class Edge extends Feature {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Edge(List cubics) {
            super(cubics);
            Intrinsics.checkNotNullParameter(cubics, "cubics");
        }

        @Override // androidx.graphics.shapes.Feature
        public Edge transformed$graphics_shapes_release(PointTransformer f) {
            Intrinsics.checkNotNullParameter(f, "f");
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            int size = getCubics().size();
            for (int i = 0; i < size; i++) {
                listCreateListBuilder.add(((Cubic) getCubics().get(i)).transformed(f));
            }
            return new Edge(CollectionsKt.build(listCreateListBuilder));
        }

        public String toString() {
            return "Edge";
        }
    }

    public static final class Corner extends Feature {
        private final boolean convex;
        private final long roundedCenter;
        private final long vertex;

        public /* synthetic */ Corner(List list, long j, long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, j, j2, z);
        }

        public final boolean getConvex() {
            return this.convex;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private Corner(List cubics, long j, long j2, boolean z) {
            super(cubics);
            Intrinsics.checkNotNullParameter(cubics, "cubics");
            this.vertex = j;
            this.roundedCenter = j2;
            this.convex = z;
        }

        @Override // androidx.graphics.shapes.Feature
        public Feature transformed$graphics_shapes_release(PointTransformer f) {
            Intrinsics.checkNotNullParameter(f, "f");
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            int size = getCubics().size();
            for (int i = 0; i < size; i++) {
                listCreateListBuilder.add(((Cubic) getCubics().get(i)).transformed(f));
            }
            return new Corner(CollectionsKt.build(listCreateListBuilder), PointKt.m2124transformedso9K2fw(this.vertex, f), PointKt.m2124transformedso9K2fw(this.roundedCenter, f), this.convex, null);
        }

        public String toString() {
            return "Corner: vertex=" + ((Object) FloatFloatPair.m2046toStringimpl(this.vertex)) + ", center=" + ((Object) FloatFloatPair.m2046toStringimpl(this.roundedCenter)) + ", convex=" + this.convex;
        }
    }
}
