package com.exteragram.messenger.player;

import android.text.TextUtils;
import java.io.File;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AudioInfoCache {
    private static final LinkedHashMap<String, AudioInfo> cache = new LinkedHashMap<String, AudioInfo>(4, 0.75f, true) { // from class: com.exteragram.messenger.player.AudioInfoCache.1
        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, AudioInfo> entry) {
            return size() > 3;
        }
    };
    private static final HashSet<String> pending = new HashSet<>();

    public static AudioInfo get(File file) {
        if (file == null) {
            return null;
        }
        String strKey = key(file);
        LinkedHashMap<String, AudioInfo> linkedHashMap = cache;
        synchronized (linkedHashMap) {
            try {
                AudioInfo audioInfo = linkedHashMap.get(strKey);
                if (audioInfo != null) {
                    return audioInfo;
                }
                AudioInfo audioInfo2 = AudioInfo.getAudioInfo(file);
                if (audioInfo2 == null) {
                    return audioInfo2;
                }
                synchronized (linkedHashMap) {
                    linkedHashMap.put(strKey, audioInfo2);
                }
                return audioInfo2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void preload(MessageObject messageObject) {
        if (messageObject == null || !messageObject.isMusic()) {
            return;
        }
        final File file = getFile(messageObject);
        if (file.exists()) {
            final String strKey = key(file);
            LinkedHashMap<String, AudioInfo> linkedHashMap = cache;
            synchronized (linkedHashMap) {
                if (!linkedHashMap.containsKey(strKey) && pending.add(strKey)) {
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.AudioInfoCache$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            AudioInfoCache.m2797$r8$lambda$sJOeA40_Z8amrbMvOaBPJyldqQ(file, strKey);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$sJOeA40_Z8amrbMvOa-BPJyldqQ, reason: not valid java name */
    public static /* synthetic */ void m2797$r8$lambda$sJOeA40_Z8amrbMvOaBPJyldqQ(File file, String str) {
        AudioInfo audioInfo = AudioInfo.getAudioInfo(file);
        LinkedHashMap<String, AudioInfo> linkedHashMap = cache;
        synchronized (linkedHashMap) {
            try {
                pending.remove(str);
                if (audioInfo != null) {
                    linkedHashMap.put(str, audioInfo);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static File getFile(MessageObject messageObject) {
        String str = messageObject.messageOwner.attachPath;
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            if (file.exists()) {
                return file;
            }
        }
        return FileLoader.getInstance(messageObject.currentAccount).getPathToMessage(messageObject.messageOwner);
    }

    private static String key(File file) {
        return file.getAbsolutePath() + ":" + file.length() + ":" + file.lastModified();
    }
}
