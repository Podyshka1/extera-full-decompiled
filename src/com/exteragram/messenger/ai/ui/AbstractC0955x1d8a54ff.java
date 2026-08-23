package com.exteragram.messenger.ai.ui;

/* JADX INFO: renamed from: com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0955x1d8a54ff {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m173m(Object[] objArr, Class cls, String str) {
        String[] strArrSplit = str.length() == 0 ? new String[0] : str.split(";");
        StringBuilder sb = new StringBuilder();
        sb.append(cls.getSimpleName());
        sb.append("[");
        for (int i = 0; i < strArrSplit.length; i++) {
            sb.append(strArrSplit[i]);
            sb.append("=");
            sb.append(objArr[i]);
            if (i != strArrSplit.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
