package java.nio.file;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public class FileSystemException extends IOException {

    /* JADX INFO: renamed from: a */
    private final String f906a;

    /* JADX INFO: renamed from: b */
    private final String f907b;

    public FileSystemException(String str) {
        super((String) null);
        this.f906a = str;
        this.f907b = null;
    }

    public String getFile() {
        return this.f906a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f906a == null && this.f907b == null) {
            return getReason();
        }
        StringBuilder sb = new StringBuilder();
        if (this.f906a != null) {
            sb.append(this.f906a);
        }
        if (this.f907b != null) {
            sb.append(" -> ");
            sb.append(this.f907b);
        }
        if (getReason() != null) {
            sb.append(": ");
            sb.append(getReason());
        }
        return sb.toString();
    }

    public String getOtherFile() {
        return this.f907b;
    }

    public String getReason() {
        return super.getMessage();
    }

    public FileSystemException(String str, String str2, String str3) {
        super(str3);
        this.f906a = str;
        this.f907b = str2;
    }
}
