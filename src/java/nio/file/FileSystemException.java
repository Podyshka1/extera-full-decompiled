package java.nio.file;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class FileSystemException extends IOException {

    /* JADX INFO: renamed from: a */
    private final String f904a;

    /* JADX INFO: renamed from: b */
    private final String f905b;

    public FileSystemException(String str) {
        super((String) null);
        this.f904a = str;
        this.f905b = null;
    }

    public String getFile() {
        return this.f904a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f904a == null && this.f905b == null) {
            return getReason();
        }
        StringBuilder sb = new StringBuilder();
        if (this.f904a != null) {
            sb.append(this.f904a);
        }
        if (this.f905b != null) {
            sb.append(" -> ");
            sb.append(this.f905b);
        }
        if (getReason() != null) {
            sb.append(": ");
            sb.append(getReason());
        }
        return sb.toString();
    }

    public String getOtherFile() {
        return this.f905b;
    }

    public String getReason() {
        return super.getMessage();
    }

    public FileSystemException(String str, String str2, String str3) {
        super(str3);
        this.f904a = str;
        this.f905b = str2;
    }
}
