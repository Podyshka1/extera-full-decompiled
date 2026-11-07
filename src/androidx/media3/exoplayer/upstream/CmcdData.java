package androidx.media3.exoplayer.upstream;

import android.net.Uri;
import androidx.media3.common.util.UriUtil;
import androidx.media3.datasource.DataSpec;
import com.google.common.base.Joiner;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CmcdData {
    private static final Joiner COMMA_JOINER = Joiner.on(",");

    public static final class Factory {
        public abstract CmcdData createCmcdData();

        public abstract Factory setChunkDurationUs(long j);

        public abstract Factory setNextObjectRequest(String str);

        public abstract Factory setNextRangeRequest(String str);

        public abstract Factory setObjectType(String str);
    }

    public abstract DataSpec addToDataSpec(DataSpec dataSpec);

    public static Uri removeFromUri(Uri uri) {
        return (!uri.isHierarchical() || uri.getQueryParameter("CMCD") == null) ? uri : UriUtil.removeQueryParameter(uri, "CMCD");
    }
}
