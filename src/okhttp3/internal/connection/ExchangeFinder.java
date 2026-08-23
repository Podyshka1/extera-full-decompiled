package okhttp3.internal.connection;

/* JADX INFO: loaded from: classes.dex */
public interface ExchangeFinder {
    RealConnection find();

    RoutePlanner getRoutePlanner();
}
