package com.exteragram.messenger.ai.network;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class Client$ImagePayload$$ExternalSyntheticRecord1 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m238m(Object[] objArr, Class cls, String str) {
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
