package org.telegram.ui.iv;

import java.util.HashMap;
import java.util.List;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public abstract class RichMediaClipboard {
    private static final HashMap<Long, TLRPC.Photo> photos = new HashMap<>();
    private static final HashMap<Long, TLRPC.Document> documents = new HashMap<>();

    public static synchronized void set(List<TLRPC.Photo> list, List<TLRPC.Document> list2) {
        try {
            photos.clear();
            documents.clear();
            if (list != null) {
                for (TLRPC.Photo photo : list) {
                    if (photo != null) {
                        photos.put(Long.valueOf(photo.id), photo);
                    }
                }
            }
            if (list2 != null) {
                for (TLRPC.Document document : list2) {
                    if (document != null) {
                        documents.put(Long.valueOf(document.id), document);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized TLRPC.Photo photo(long j) {
        return j == 0 ? null : photos.get(Long.valueOf(j));
    }

    public static synchronized TLRPC.Document document(long j) {
        return j == 0 ? null : documents.get(Long.valueOf(j));
    }
}
