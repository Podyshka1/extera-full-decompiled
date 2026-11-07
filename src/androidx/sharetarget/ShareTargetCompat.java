package androidx.sharetarget;

/* JADX INFO: loaded from: classes4.dex */
class ShareTargetCompat {
    final String[] mCategories;
    final String mTargetClass;
    final TargetData[] mTargetData;

    public static class TargetData {
        final String mHost;
        final String mMimeType;
        final String mPath;
        final String mPathPattern;
        final String mPathPrefix;
        final String mPort;
        final String mScheme;

        public TargetData(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
            this.mScheme = str;
            this.mHost = str2;
            this.mPort = str3;
            this.mPath = str4;
            this.mPathPattern = str5;
            this.mPathPrefix = str6;
            this.mMimeType = str7;
        }
    }

    public ShareTargetCompat(TargetData[] targetDataArr, String str, String[] strArr) {
        this.mTargetData = targetDataArr;
        this.mTargetClass = str;
        this.mCategories = strArr;
    }
}
