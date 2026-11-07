package com.google.mlkit.genai.common;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/google/mlkit/genai/common/DownloadStatus;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "DownloadStarted", "DownloadFailed", "DownloadProgress", "DownloadCompleted", "Lcom/google/mlkit/genai/common/DownloadStatus$DownloadCompleted;", "Lcom/google/mlkit/genai/common/DownloadStatus$DownloadFailed;", "Lcom/google/mlkit/genai/common/DownloadStatus$DownloadProgress;", "Lcom/google/mlkit/genai/common/DownloadStatus$DownloadStarted;", "java.com.google.android.libraries.mlkit.granules.genai.common_mlkit_genai_common"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DownloadStatus {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0004"}, d2 = {"Lcom/google/mlkit/genai/common/DownloadStatus$DownloadCompleted;", "Lcom/google/mlkit/genai/common/DownloadStatus;", "<init>", "()V", "java.com.google.android.libraries.mlkit.granules.genai.common_mlkit_genai_common"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class DownloadCompleted extends DownloadStatus {
        public static final DownloadCompleted INSTANCE = new DownloadCompleted();

        private DownloadCompleted() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/google/mlkit/genai/common/DownloadStatus$DownloadFailed;", "Lcom/google/mlkit/genai/common/DownloadStatus;", "Lcom/google/mlkit/genai/common/GenAiException;", "e", "<init>", "(Lcom/google/mlkit/genai/common/GenAiException;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Lcom/google/mlkit/genai/common/GenAiException;", "getE", "()Lcom/google/mlkit/genai/common/GenAiException;", "java.com.google.android.libraries.mlkit.granules.genai.common_mlkit_genai_common"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DownloadFailed extends DownloadStatus {

        /* JADX INFO: renamed from: zza, reason: from toString */
        private final GenAiException e;

        public DownloadFailed(GenAiException genAiException) {
            super(null);
            this.e = genAiException;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DownloadFailed) && Intrinsics.areEqual(this.e, ((DownloadFailed) other).e);
        }

        public final GenAiException getE() {
            return this.e;
        }

        public int hashCode() {
            return this.e.hashCode();
        }

        public String toString() {
            GenAiException genAiException = this.e;
            StringBuilder sb = new StringBuilder(String.valueOf(genAiException).length() + 18);
            sb.append("DownloadFailed(e=");
            sb.append(genAiException);
            sb.append(")");
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/google/mlkit/genai/common/DownloadStatus$DownloadProgress;", "Lcom/google/mlkit/genai/common/DownloadStatus;", _UrlKt.FRAGMENT_ENCODE_SET, "totalBytesDownloaded", "<init>", "(J)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "J", "getTotalBytesDownloaded", "()J", "java.com.google.android.libraries.mlkit.granules.genai.common_mlkit_genai_common"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DownloadProgress extends DownloadStatus {

        /* JADX INFO: renamed from: zza, reason: from toString */
        private final long totalBytesDownloaded;

        public DownloadProgress(long j) {
            super(null);
            this.totalBytesDownloaded = j;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DownloadProgress) && this.totalBytesDownloaded == ((DownloadProgress) other).totalBytesDownloaded;
        }

        public final long getTotalBytesDownloaded() {
            return this.totalBytesDownloaded;
        }

        public int hashCode() {
            return Long.hashCode(this.totalBytesDownloaded);
        }

        public String toString() {
            long j = this.totalBytesDownloaded;
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 39);
            sb.append("DownloadProgress(totalBytesDownloaded=");
            sb.append(j);
            sb.append(")");
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/google/mlkit/genai/common/DownloadStatus$DownloadStarted;", "Lcom/google/mlkit/genai/common/DownloadStatus;", _UrlKt.FRAGMENT_ENCODE_SET, "bytesToDownload", "<init>", "(J)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "J", "getBytesToDownload", "()J", "java.com.google.android.libraries.mlkit.granules.genai.common_mlkit_genai_common"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DownloadStarted extends DownloadStatus {

        /* JADX INFO: renamed from: zza, reason: from toString */
        private final long bytesToDownload;

        public DownloadStarted(long j) {
            super(null);
            this.bytesToDownload = j;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DownloadStarted) && this.bytesToDownload == ((DownloadStarted) other).bytesToDownload;
        }

        public final long getBytesToDownload() {
            return this.bytesToDownload;
        }

        public int hashCode() {
            return Long.hashCode(this.bytesToDownload);
        }

        public String toString() {
            long j = this.bytesToDownload;
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 33);
            sb.append("DownloadStarted(bytesToDownload=");
            sb.append(j);
            sb.append(")");
            return sb.toString();
        }
    }

    public /* synthetic */ DownloadStatus(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
