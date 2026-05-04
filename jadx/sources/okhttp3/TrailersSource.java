package okhttp3;

/* JADX INFO: loaded from: classes.dex */
public interface TrailersSource {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final TrailersSource EMPTY = new TrailersSource() { // from class: okhttp3.TrailersSource$Companion$EMPTY$1
        @Override // okhttp3.TrailersSource
        public Headers peek() {
            return Headers.EMPTY;
        }

        @Override // okhttp3.TrailersSource
        public Headers get() {
            return Headers.EMPTY;
        }
    };

    Headers get();

    Headers peek();

    /* JADX INFO: renamed from: okhttp3.TrailersSource$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Companion companion = TrailersSource.Companion;
        }

        public static Headers $default$peek(TrailersSource trailersSource) {
            return null;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static Headers peek(TrailersSource trailersSource) {
            return CC.$default$peek(trailersSource);
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
