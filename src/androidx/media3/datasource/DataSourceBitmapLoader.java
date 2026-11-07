package androidx.media3.datasource;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import com.google.common.base.Preconditions;
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
    private final boolean makeShared;
    private final int maximumOutputDimension;
    private final BitmapFactory.Options options;

    public static final class Builder {
        private final Context context;
        private DataSource.Factory dataSourceFactory;
        private ListeningExecutorService listeningExecutorService;
        private boolean makeShared;
        private int maximumOutputDimension = -1;
        private BitmapFactory.Options options;

        public Builder(Context context) {
            this.context = context;
        }

        public Builder setMaximumOutputDimension(int i) {
            this.maximumOutputDimension = i;
            return this;
        }

        public Builder setMakeShared(boolean z) {
            this.makeShared = z;
            return this;
        }

        public DataSourceBitmapLoader build() {
            return new DataSourceBitmapLoader(this);
        }
    }

    private DataSourceBitmapLoader(Builder builder) {
        DataSource.Factory factory;
        ListeningExecutorService listeningExecutorService;
        if (builder.dataSourceFactory != null) {
            factory = builder.dataSourceFactory;
        } else {
            factory = new DefaultDataSource.Factory(builder.context);
        }
        this.dataSourceFactory = factory;
        if (builder.listeningExecutorService != null) {
            listeningExecutorService = builder.listeningExecutorService;
        } else {
            listeningExecutorService = (ListeningExecutorService) Preconditions.checkNotNull(DEFAULT_EXECUTOR_SERVICE.get());
        }
        this.listeningExecutorService = listeningExecutorService;
        this.options = builder.options;
        this.maximumOutputDimension = builder.maximumOutputDimension;
        this.makeShared = builder.makeShared;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> decodeBitmap(final byte[] bArr) {
        return this.listeningExecutorService.submit(new Callable() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                DataSourceBitmapLoader dataSourceBitmapLoader = this.f$0;
                byte[] bArr2 = bArr;
                return DataSourceBitmapLoader.maybeAsShared(dataSourceBitmapLoader.makeShared, BitmapUtil.decode(bArr2, bArr2.length, dataSourceBitmapLoader.options, dataSourceBitmapLoader.maximumOutputDimension));
            }
        });
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmap(final Uri uri) {
        return this.listeningExecutorService.submit(new Callable() { // from class: androidx.media3.datasource.DataSourceBitmapLoader$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                DataSourceBitmapLoader dataSourceBitmapLoader = this.f$0;
                return DataSourceBitmapLoader.load(dataSourceBitmapLoader.dataSourceFactory.createDataSource(), uri, dataSourceBitmapLoader.options, dataSourceBitmapLoader.maximumOutputDimension, dataSourceBitmapLoader.makeShared);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap load(DataSource dataSource, Uri uri, BitmapFactory.Options options, int i, boolean z) {
        try {
            dataSource.open(new DataSpec(uri));
            byte[] toEnd = DataSourceUtil.readToEnd(dataSource);
            return maybeAsShared(z, BitmapUtil.decode(toEnd, toEnd.length, options, i));
        } finally {
            dataSource.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap maybeAsShared(boolean z, Bitmap bitmap) {
        return z ? BitmapUtil.makeShared(bitmap) : bitmap;
    }
}
