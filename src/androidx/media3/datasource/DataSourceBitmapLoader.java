package androidx.media3.datasource;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public final class DataSourceBitmapLoader implements BitmapLoader {
    public static final Supplier<ListeningExecutorService> DEFAULT_EXECUTOR_SERVICE = Suppliers.memoize(new Supplier() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda0
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return MoreExecutors.listeningDecorator(Executors.newSingleThreadExecutor());
        }
    });
    private final DataSource.Factory dataSourceFactory;
    private final ListeningExecutorService listeningExecutorService;
    private final int maximumOutputDimension;
    private final BitmapFactory.Options options;

    public DataSourceBitmapLoader(Context context) {
        this((ListeningExecutorService) Assertions.checkStateNotNull(DEFAULT_EXECUTOR_SERVICE.get()), new DefaultDataSource.Factory(context));
    }

    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory) {
        this(listeningExecutorService, factory, null);
    }

    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory, BitmapFactory.Options options) {
        this(listeningExecutorService, factory, options, -1);
    }

    public DataSourceBitmapLoader(ListeningExecutorService listeningExecutorService, DataSource.Factory factory, BitmapFactory.Options options, int i) {
        this.listeningExecutorService = listeningExecutorService;
        this.dataSourceFactory = factory;
        this.options = options;
        this.maximumOutputDimension = i;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> decodeBitmap(final byte[] bArr) {
        return this.listeningExecutorService.submit(new Callable() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return DataSourceBitmapLoader.m1829$r8$lambda$H42hWp0ryWsU1xYGn8RWcDN7j4(this.f$0, bArr);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$H42hWp0ryWsU1xY-Gn8RWcDN7j4, reason: not valid java name */
    public static /* synthetic */ Bitmap m1829$r8$lambda$H42hWp0ryWsU1xYGn8RWcDN7j4(DataSourceBitmapLoader dataSourceBitmapLoader, byte[] bArr) {
        dataSourceBitmapLoader.getClass();
        return BitmapUtil.decode(bArr, bArr.length, dataSourceBitmapLoader.options, dataSourceBitmapLoader.maximumOutputDimension);
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmap(final Uri uri) {
        return this.listeningExecutorService.submit(new Callable() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                DataSourceBitmapLoader dataSourceBitmapLoader = this.f$0;
                return DataSourceBitmapLoader.load(dataSourceBitmapLoader.dataSourceFactory.createDataSource(), uri, dataSourceBitmapLoader.options, dataSourceBitmapLoader.maximumOutputDimension);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap load(DataSource dataSource, Uri uri, BitmapFactory.Options options, int i) {
        try {
            dataSource.open(new DataSpec(uri));
            byte[] toEnd = DataSourceUtil.readToEnd(dataSource);
            return BitmapUtil.decode(toEnd, toEnd.length, options, i);
        } finally {
            dataSource.close();
        }
    }
}
