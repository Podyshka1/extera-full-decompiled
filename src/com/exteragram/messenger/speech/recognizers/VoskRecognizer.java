package com.exteragram.messenger.speech.recognizers;

import android.text.TextUtils;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.speech.VoiceRecognitionController;
import com.exteragram.messenger.speech.utils.FormatConverter;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.vosk.LibVosk;
import org.vosk.LogLevel;
import org.vosk.Model;
import org.vosk.Recognizer;
import org.vosk.android.RecognitionListener;
import org.vosk.android.SpeechStreamService;
import p022j$.lang.Iterable$EL;
import p022j$.util.Collection;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.function.Consumer$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes4.dex */
public class VoskRecognizer implements VoiceRecognitionController.RecognitionProvider, AutoCloseable {
    private final OkHttpClient client = ExteraHttpClient.INSTANCE.getClient();
    private final File modelsDir = new File(ApplicationLoader.applicationContext.getExternalFilesDir(null), "Vosk Models");
    private final List models = new ArrayList() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer.1
        {
            add(new VoiceRecognitionController.RecognitionModel("ca", "https://alphacephei.com/vosk/models/vosk-model-small-ca-0.4.zip", 43405881L));
            add(new VoiceRecognitionController.RecognitionModel("cs", "https://alphacephei.com/vosk/models/vosk-model-small-cs-0.4-rhasspy.zip", 46088666L));
            add(new VoiceRecognitionController.RecognitionModel("de", "https://alphacephei.com/vosk/models/vosk-model-small-de-0.15.zip", 46499967L));
            add(new VoiceRecognitionController.RecognitionModel("en", "https://alphacephei.com/vosk/models/vosk-model-small-en-us-0.15.zip", 41205931L));
            add(new VoiceRecognitionController.RecognitionModel("eo", "https://alphacephei.com/vosk/models/vosk-model-small-eo-0.42.zip", 43839401L));
            add(new VoiceRecognitionController.RecognitionModel("es", "https://alphacephei.com/vosk/models/vosk-model-small-es-0.42.zip", 39817833L));
            add(new VoiceRecognitionController.RecognitionModel("fa", "https://alphacephei.com/vosk/models/vosk-model-small-fa-0.5.zip", 62153530L));
            add(new VoiceRecognitionController.RecognitionModel("fr", "https://alphacephei.com/vosk/models/vosk-model-small-fr-0.22.zip", 42233323L));
            add(new VoiceRecognitionController.RecognitionModel("gu", "https://alphacephei.com/vosk/models/vosk-model-small-gu-0.42.zip", 108054987L));
            add(new VoiceRecognitionController.RecognitionModel("hi", "https://alphacephei.com/vosk/models/vosk-model-small-hi-0.22.zip", 44458845L));
            add(new VoiceRecognitionController.RecognitionModel("it", "https://alphacephei.com/vosk/models/vosk-model-small-it-0.22.zip", 49665141L));
            add(new VoiceRecognitionController.RecognitionModel("ja", "https://alphacephei.com/vosk/models/vosk-model-small-ja-0.22.zip", 49704573L));
            add(new VoiceRecognitionController.RecognitionModel("kk", "https://alphacephei.com/vosk/models/vosk-model-small-kz-0.15.zip", 43739114L));
            add(new VoiceRecognitionController.RecognitionModel("ko", "https://alphacephei.com/vosk/models/vosk-model-small-ko-0.22.zip", 86914329L));
            add(new VoiceRecognitionController.RecognitionModel("nl", "https://alphacephei.com/vosk/models/vosk-model-small-nl-0.22.zip", 40441176L));
            add(new VoiceRecognitionController.RecognitionModel("pl", "https://alphacephei.com/vosk/models/vosk-model-small-pl-0.22.zip", 52979372L));
            add(new VoiceRecognitionController.RecognitionModel("pt", "https://alphacephei.com/vosk/models/vosk-model-small-pt-0.3.zip", 32453112L));
            add(new VoiceRecognitionController.RecognitionModel("ru", "https://alphacephei.com/vosk/models/vosk-model-small-ru-0.22.zip", 46236750L));
            add(new VoiceRecognitionController.RecognitionModel("tg", "https://alphacephei.com/vosk/models/vosk-model-small-tg-0.22.zip", 51879043L));
            add(new VoiceRecognitionController.RecognitionModel("tr", "https://alphacephei.com/vosk/models/vosk-model-small-tr-0.3.zip", 36855784L));
            add(new VoiceRecognitionController.RecognitionModel("uk", "https://alphacephei.com/vosk/models/vosk-model-small-uk-v3-nano.zip", 77622640L));
            add(new VoiceRecognitionController.RecognitionModel("uz", "https://alphacephei.com/vosk/models/vosk-model-small-uz-0.22.zip", 51061189L));
            add(new VoiceRecognitionController.RecognitionModel("vi", "https://alphacephei.com/vosk/models/vosk-model-small-vn-0.4.zip", 33656337L));
            add(new VoiceRecognitionController.RecognitionModel("zh", "https://alphacephei.com/vosk/models/vosk-model-small-cn-0.22.zip", 43898754L));
        }
    };
    private final Map loadedModels = new ConcurrentHashMap();

    public VoskRecognizer() {
        LibVosk.setLogLevel(LogLevel.INFO);
    }

    private static void unpackZip(String str, String str2) throws IOException {
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        byte[] bArr = new byte[1024];
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(str));
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        String str3 = nextEntry != null ? nextEntry.getName().split("/")[0] : null;
        while (nextEntry != null) {
            if (nextEntry.getName().equals(str3 + "/")) {
                nextEntry = zipInputStream.getNextEntry();
            } else {
                File file2 = new File(file, nextEntry.getName().substring(str3.length() + 1));
                new File(file2.getParent()).mkdirs();
                if (!nextEntry.isDirectory()) {
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    while (true) {
                        int i = zipInputStream.read(bArr);
                        if (i <= 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i);
                        }
                    }
                    fileOutputStream.close();
                }
                nextEntry = zipInputStream.getNextEntry();
            }
        }
        zipInputStream.closeEntry();
        zipInputStream.close();
    }

    @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionProvider
    public List listAvailableModels() {
        return this.models;
    }

    @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionProvider
    public List listDownloadedModels() {
        return (List) Collection.EL.stream(this.models).filter(new Predicate() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer$$ExternalSyntheticLambda3
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m281or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$listDownloadedModels$0((VoiceRecognitionController.RecognitionModel) obj);
            }
        }).collect(Collectors.toList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$listDownloadedModels$0(VoiceRecognitionController.RecognitionModel recognitionModel) {
        File file = new File(this.modelsDir, recognitionModel.getLanguage());
        return (!file.exists() || new File(file, "model.zip").exists() || isDirectoryEmpty(file)) ? false : true;
    }

    private boolean isDirectoryEmpty(File file) {
        String[] list = file.list();
        return list == null || list.length == 0;
    }

    @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionProvider
    public void downloadModel(final String str, VoiceRecognitionController.DownloadModelCallback downloadModelCallback) {
        VoiceRecognitionController.RecognitionModel recognitionModel = (VoiceRecognitionController.RecognitionModel) Collection.EL.stream(this.models).filter(new Predicate() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer$$ExternalSyntheticLambda4
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m282or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((VoiceRecognitionController.RecognitionModel) obj).getLanguage().equals(str);
            }
        }).findFirst().orElseThrow(new Supplier() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer$$ExternalSyntheticLambda5
            @Override // java.util.function.Supplier
            public final Object get() {
                return VoskRecognizer.$r8$lambda$3Xv1azFJtwThwB0jQsW9JYtX44E(str);
            }
        });
        File file = new File(this.modelsDir, recognitionModel.getLanguage());
        if (new File(file, "model.zip").exists()) {
            try {
                deleteDirectory(file);
            } catch (IOException e) {
                downloadModelCallback.onError(new IOException("Failed to delete existing model directory", e));
                return;
            }
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            Response responseExecute = this.client.newCall(new Request.Builder().url(recognitionModel.getUrl()).build()).execute();
            if (!responseExecute.isSuccessful()) {
                FileLog.m1134e("Failed to download: " + responseExecute);
            }
            File file2 = new File(file, "model.zip");
            InputStream inputStreamByteStream = responseExecute.body().byteStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    long jContentLength = responseExecute.body().contentLength();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStreamByteStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        downloadModelCallback.onProgress(file2.length() / jContentLength);
                    }
                    fileOutputStream.close();
                    inputStreamByteStream.close();
                    unpackZip(file2.getAbsolutePath(), file.getAbsolutePath());
                    try {
                        if (!file2.delete()) {
                            file2.deleteOnExit();
                        }
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                    downloadModelCallback.onCompleted();
                } finally {
                }
            } finally {
            }
        } catch (Exception e3) {
            downloadModelCallback.onError(e3);
        }
    }

    public static /* synthetic */ IllegalArgumentException $r8$lambda$3Xv1azFJtwThwB0jQsW9JYtX44E(String str) {
        return new IllegalArgumentException("Model not found: " + str);
    }

    private void deleteDirectory(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                deleteDirectory(file2);
            }
        }
        if (file.delete()) {
            return;
        }
        FileLog.m1134e("Failed to delete file or directory: " + file.getAbsolutePath());
    }

    @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionProvider
    public void recognize(String str, final String str2, final VoiceRecognitionController.RecognitionCallback recognitionCallback) {
        if (((VoiceRecognitionController.RecognitionModel) Collection.EL.stream(this.models).filter(new Predicate() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer$$ExternalSyntheticLambda1
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m279or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((VoiceRecognitionController.RecognitionModel) obj).getLanguage().equals(str2);
            }
        }).findFirst().orElse(null)) == null) {
            recognitionCallback.onLanguageNotSupported(str2);
            return;
        }
        if (((VoiceRecognitionController.RecognitionModel) Collection.EL.stream(listDownloadedModels()).filter(new Predicate() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer$$ExternalSyntheticLambda2
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m280or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((VoiceRecognitionController.RecognitionModel) obj).getLanguage().equals(str2);
            }
        }).findFirst().orElse(null)) == null) {
            recognitionCallback.onLanguageNotDownloaded(str2);
            return;
        }
        try {
            if (!this.loadedModels.containsKey(str2)) {
                FileLog.m1133d("Loading model: " + str2);
                this.loadedModels.put(str2, new Model(this.modelsDir + "/" + str2));
                StringBuilder sb = new StringBuilder();
                sb.append("Model loaded: ");
                sb.append(str2);
                FileLog.m1133d(sb.toString());
            }
            Model model = (Model) this.loadedModels.get(str2);
            InputStream inputStreamExtractAndConvertToPcm = FormatConverter.extractAndConvertToPcm(str, false);
            int sampleRate = FormatConverter.getSampleRate(str);
            FileLog.m1133d("Recognizing: " + str);
            float f = (float) sampleRate;
            final Recognizer recognizer = new Recognizer(model, f);
            new SpeechStreamService(recognizer, inputStreamExtractAndConvertToPcm, f).start(new RecognitionListener() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer.2
                @Override // org.vosk.android.RecognitionListener
                public void onPartialResult(String str3) {
                }

                @Override // org.vosk.android.RecognitionListener
                public void onTimeout() {
                }

                @Override // org.vosk.android.RecognitionListener
                public void onResult(String str3) {
                    FileLog.m1133d("Result: " + str3);
                    if (TextUtils.isEmpty(str3)) {
                        return;
                    }
                    recognitionCallback.onChunk((String) ((Map) ExteraConfig.GSON.fromJson(str3, Map.class)).get("text"));
                }

                @Override // org.vosk.android.RecognitionListener
                public void onFinalResult(String str3) {
                    FileLog.m1133d("Final result: " + str3);
                    recognitionCallback.onCompleted((String) ((Map) ExteraConfig.GSON.fromJson(str3, Map.class)).get("text"));
                    recognizer.close();
                }

                @Override // org.vosk.android.RecognitionListener
                public void onError(Exception exc) {
                    FileLog.m1135e("Failed to recognize", exc);
                    recognitionCallback.onError(exc);
                    recognizer.close();
                }
            });
        } catch (IOException e) {
            FileLog.m1135e("Failed to recognize", e);
            recognitionCallback.onError(e);
        }
    }

    @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionProvider
    public void unloadModels() {
        Iterable$EL.forEach(this.loadedModels.values(), new Consumer() { // from class: com.exteragram.messenger.speech.recognizers.VoskRecognizer$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                ((Model) obj).close();
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        this.loadedModels.clear();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        unloadModels();
    }
}
