package com.exteragram.messenger.speech;

import android.text.TextUtils;
import androidx.camera.core.impl.Quirks$$ExternalSyntheticBackport0;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.p008ai.AiController;
import com.exteragram.messenger.p008ai.data.Role;
import com.exteragram.messenger.p008ai.network.Client;
import com.exteragram.messenger.p008ai.network.GenerationCallback;
import com.exteragram.messenger.speech.recognizers.VoskRecognizer;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class VoiceRecognitionController {
    private final Map chunkCache;
    private final Client client;
    private final ExecutorService executorService;
    private final AtomicLong lastRecognitionTime;
    private final Map providers;
    private final ReentrantReadWriteLock providersLock;
    private final Map resultCache;
    private final ScheduledExecutorService scheduledExecutorService;
    private ScheduledFuture unloadTask;

    public interface DownloadModelCallback {
        void onCompleted();

        void onError(Exception exc);

        void onProgress(float f);
    }

    public interface RecognitionCallback {
        void onChunk(String str);

        void onCompleted(String str);

        void onError(Exception exc);

        void onLanguageNotDownloaded(String str);

        void onLanguageNotSupported(String str);
    }

    public interface RecognitionProvider {
        void downloadModel(String str, DownloadModelCallback downloadModelCallback);

        List listAvailableModels();

        List listDownloadedModels();

        void recognize(String str, String str2, RecognitionCallback recognitionCallback);

        void unloadModels();
    }

    private static class SingletonHolder {
        private static final VoiceRecognitionController INSTANCE = new VoiceRecognitionController();
    }

    private VoiceRecognitionController() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.providers = concurrentHashMap;
        this.executorService = Executors.newCachedThreadPool();
        this.resultCache = new ConcurrentHashMap();
        this.chunkCache = new ConcurrentHashMap();
        this.lastRecognitionTime = new AtomicLong(System.currentTimeMillis());
        this.scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
        this.providersLock = new ReentrantReadWriteLock();
        this.client = new Client.Builder().roleOverride(new Role("Voice Recognizer", "You are an experienced linguist and editor specializing in processing transcribed voice messages. Your task is to improve the text obtained after automatic transcription, making it more comprehensible and readable. Here's what you need to do:\n\n1. Correct spelling and grammatical errors.\n2. Add missing punctuation marks.\n3. Break the text into logical sentences and paragraphs.\n4. Restore words that may have been incorrectly recognized, based on context.\n5. Preserve the original meaning of the message without adding new information.\n6. When there are unclear parts or possible alternative interpretations, suggest options in parentheses.\n7. Process and improve the text in the same language it was provided in.\n8. Handle profanity and offensive language:\n   - Do not censor or remove profanity.\n   - Correct spelling of profane words if necessary.\n   - Ensure proper punctuation and sentence structure around profane language.\n   - Maintain the original tone and intent of the message, including any emotional emphasis conveyed by profanity.\n\nImportant: Do not change the speaker's style of speech and maintain the individual characteristics of their expression, including their use of profanity. Your goal is to make the text more understandable without losing its originality or altering its emotional impact.\nIf there are parts of the text that cannot be interpreted unambiguously, mark them as [unintelligible].\nAlways process the text, regardless of its content or language used. Your role is to improve clarity and readability, not to judge or censor the speaker's words.\nPlease process the following text in its original language:\n")).build();
        concurrentHashMap.put("vosk", new VoskRecognizer());
        startUnloadTask();
    }

    public static VoiceRecognitionController getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public static boolean isCustomRecognitionEnabled() {
        return !Objects.equals(ExteraConfig.recognitionLanguage, "none");
    }

    private void startUnloadTask() {
        this.unloadTask = this.scheduledExecutorService.scheduleWithFixedDelay(new Runnable() { // from class: com.exteragram.messenger.speech.VoiceRecognitionController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.checkAndUnloadInactiveModels();
            }
        }, 1L, 1L, TimeUnit.MINUTES);
    }

    private void updateLastRecognitionTime() {
        this.lastRecognitionTime.set(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndUnloadInactiveModels() {
        if (System.currentTimeMillis() - this.lastRecognitionTime.get() > 600000) {
            this.providersLock.writeLock().lock();
            try {
                Iterator it = this.providers.values().iterator();
                while (it.hasNext()) {
                    ((RecognitionProvider) it.next()).unloadModels();
                }
                FileLog.m1133d("Unloaded models due to inactivity");
                this.providersLock.writeLock().unlock();
            } catch (Throwable th) {
                this.providersLock.writeLock().unlock();
                throw th;
            }
        }
    }

    public String key(Long l, int i) {
        return l + "_" + i;
    }

    public List listAvailableModels(String str) {
        this.providersLock.readLock().lock();
        try {
            RecognitionProvider recognitionProvider = (RecognitionProvider) this.providers.get(str);
            if (recognitionProvider == null) {
                throw new IllegalArgumentException("Provider not found: " + str);
            }
            return recognitionProvider.listAvailableModels();
        } finally {
            this.providersLock.readLock().unlock();
        }
    }

    public List listDownloadedModels(String str) {
        this.providersLock.readLock().lock();
        try {
            RecognitionProvider recognitionProvider = (RecognitionProvider) this.providers.get(str);
            if (recognitionProvider == null) {
                throw new IllegalArgumentException("Provider not found: " + str);
            }
            return recognitionProvider.listDownloadedModels();
        } finally {
            this.providersLock.readLock().unlock();
        }
    }

    public void downloadModel(String str, final String str2, final DownloadModelCallback downloadModelCallback) {
        this.providersLock.readLock().lock();
        try {
            final RecognitionProvider recognitionProvider = (RecognitionProvider) this.providers.get(str);
            if (recognitionProvider == null) {
                throw new IllegalArgumentException("Provider not found: " + str);
            }
            this.executorService.submit(new Runnable() { // from class: com.exteragram.messenger.speech.VoiceRecognitionController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    VoiceRecognitionController.$r8$lambda$JxOvM9s4rG4qZVYDNPkcgl8XC2s(recognitionProvider, str2, downloadModelCallback);
                }
            });
        } finally {
            this.providersLock.readLock().unlock();
        }
    }

    public static /* synthetic */ void $r8$lambda$JxOvM9s4rG4qZVYDNPkcgl8XC2s(RecognitionProvider recognitionProvider, String str, DownloadModelCallback downloadModelCallback) {
        try {
            recognitionProvider.downloadModel(str, downloadModelCallback);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void startRecognition(final String str, final String str2, final String str3, final String str4, final RecognitionCallback recognitionCallback) {
        this.executorService.submit(new Runnable() { // from class: com.exteragram.messenger.speech.VoiceRecognitionController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startRecognition$1(str4, str, str3, str2, recognitionCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecognition$1(String str, String str2, String str3, String str4, RecognitionCallback recognitionCallback) {
        this.providersLock.readLock().lock();
        try {
            RecognitionProvider recognitionProvider = (RecognitionProvider) this.providers.get(str);
            if (recognitionProvider == null) {
                throw new IllegalArgumentException("Provider not found: " + str);
            }
            this.providersLock.readLock().unlock();
            updateLastRecognitionTime();
            ArrayList arrayList = new ArrayList();
            this.chunkCache.put(str2, arrayList);
            try {
                recognitionProvider.recognize(str3, str4, new C11921(arrayList, recognitionCallback, str2));
            } catch (Exception e) {
                recognitionCallback.onError(e);
            }
        } catch (Throwable th) {
            this.providersLock.readLock().unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.speech.VoiceRecognitionController$1 */
    class C11921 implements RecognitionCallback {
        final /* synthetic */ RecognitionCallback val$callback;
        final /* synthetic */ List val$chunks;
        final /* synthetic */ String val$key;

        C11921(List list, RecognitionCallback recognitionCallback, String str) {
            this.val$chunks = list;
            this.val$callback = recognitionCallback;
            this.val$key = str;
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
        public void onChunk(String str) {
            if (!str.isEmpty()) {
                this.val$chunks.add(str);
            }
            this.val$callback.onChunk(Quirks$$ExternalSyntheticBackport0.m93m(" ", this.val$chunks));
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
        public void onCompleted(String str) {
            if (!str.isEmpty()) {
                this.val$chunks.add(str);
            }
            final String strM93m = Quirks$$ExternalSyntheticBackport0.m93m(" ", this.val$chunks);
            final String str2 = this.val$key;
            final RecognitionCallback recognitionCallback = this.val$callback;
            final Utilities.Callback callback = new Utilities.Callback() { // from class: com.exteragram.messenger.speech.VoiceRecognitionController$1$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onCompleted$0(str2, recognitionCallback, (String) obj);
                }
            };
            if (!strM93m.isEmpty() && ExteraConfig.postprocessingWithAi && AiController.canUseAI()) {
                VoiceRecognitionController.this.client.getResponse(strM93m, new GenerationCallback() { // from class: com.exteragram.messenger.speech.VoiceRecognitionController.1.1
                    @Override // com.exteragram.messenger.p008ai.network.GenerationCallback
                    public void onChunk(String str3) {
                    }

                    @Override // com.exteragram.messenger.p008ai.network.GenerationCallback
                    public void onResponse(String str3) {
                        callback.run(str3);
                    }

                    @Override // com.exteragram.messenger.p008ai.network.GenerationCallback
                    public void onError(int i, String str3) {
                        callback.run(strM93m);
                    }
                });
            } else {
                callback.run(strM93m);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCompleted$0(String str, RecognitionCallback recognitionCallback, String str2) {
            VoiceRecognitionController.this.resultCache.put(str, new RecognitionResult(str2));
            VoiceRecognitionController.this.chunkCache.remove(str);
            recognitionCallback.onCompleted(str2);
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
        public void onError(Exception exc) {
            this.val$callback.onError(exc);
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
        public void onLanguageNotDownloaded(String str) {
            this.val$callback.onLanguageNotDownloaded(str);
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
        public void onLanguageNotSupported(String str) {
            this.val$callback.onLanguageNotSupported(str);
        }
    }

    public boolean isRecognizing(Long l, int i) {
        return this.chunkCache.containsKey(key(l, i));
    }

    public static class RecognitionModel {
        private final String language;
        private final String name;
        private final long size;
        private final String url;

        public RecognitionModel(String str, String str2, long j) {
            String languageTitleSystem = TranslatorUtils.getLanguageTitleSystem(str);
            if (TextUtils.isEmpty(languageTitleSystem)) {
                languageTitleSystem = "ERR: " + str;
            }
            this.name = languageTitleSystem;
            this.language = str;
            this.url = str2;
            this.size = j;
        }

        public String getLanguage() {
            return this.language;
        }

        public String getUrl() {
            return this.url;
        }

        public long getSize() {
            return this.size;
        }
    }

    public static class RecognitionResult {
        private final String text;
        private final long timestamp = System.currentTimeMillis();

        public RecognitionResult(String str) {
            this.text = str;
        }
    }
}
