package androidx.media3.datasource;

import com.google.android.gms.cast.CastStatusCodes;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public class HttpDataSource$HttpDataSourceException extends DataSourceException {
    public final DataSpec dataSpec;
    public final int type;

    private static int assignErrorCode(int i, int i2) {
        return (i == 2000 && i2 == 1) ? CastStatusCodes.INVALID_REQUEST : i;
    }

    public static HttpDataSource$HttpDataSourceException createForIOException(final IOException iOException, final DataSpec dataSpec, int i) {
        int i2;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i2 = CastStatusCodes.CANCELED;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = 1004;
        } else {
            i2 = (message == null || !Ascii.toLowerCase(message).matches("cleartext.*not permitted.*")) ? CastStatusCodes.INVALID_REQUEST : 2007;
        }
        if (i2 == 2007) {
            return new HttpDataSource$HttpDataSourceException(iOException, dataSpec) { // from class: androidx.media3.datasource.HttpDataSource$CleartextNotPermittedException
            };
        }
        return new HttpDataSource$HttpDataSourceException(iOException, dataSpec, i2, i);
    }

    public HttpDataSource$HttpDataSourceException(DataSpec dataSpec, int i, int i2) {
        super(assignErrorCode(i, i2));
        this.dataSpec = dataSpec;
        this.type = i2;
    }

    public HttpDataSource$HttpDataSourceException(String str, DataSpec dataSpec, int i, int i2) {
        super(str, assignErrorCode(i, i2));
        this.dataSpec = dataSpec;
        this.type = i2;
    }

    public HttpDataSource$HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i, int i2) {
        super(iOException, assignErrorCode(i, i2));
        this.dataSpec = dataSpec;
        this.type = i2;
    }

    public HttpDataSource$HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec, int i, int i2) {
        super(str, iOException, assignErrorCode(i, i2));
        this.dataSpec = dataSpec;
        this.type = i2;
    }
}
