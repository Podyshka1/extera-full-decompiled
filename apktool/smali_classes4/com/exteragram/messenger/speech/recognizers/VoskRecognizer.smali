.class public Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionProvider;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final loadedModels:Ljava/util/Map;

.field private final models:Ljava/util/List;

.field private final modelsDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$3Xv1azFJtwThwB0jQsW9JYtX44E(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$EKNO8sW6TeWO9wppX0I6Ve4SFGA(Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z
    .locals 0

    .line 244
    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OCePRm0KUqV3PSMV_6Yq_0ZSAso(Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->lambda$listDownloadedModels$0(Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OLqcMeBCUhiTilC_2Lf8i1h7iHs(Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z
    .locals 0

    .line 234
    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f5p2Qnm1JoBv4np-X_eqVy9QyiQ(Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z
    .locals 0

    .line 159
    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->client:Lokhttp3/OkHttpClient;

    .line 50
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Vosk Models"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->modelsDir:Ljava/io/File;

    .line 54
    new-instance v0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$1;-><init>(Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;)V

    iput-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->models:Ljava/util/List;

    .line 81
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->loadedModels:Ljava/util/Map;

    .line 84
    sget-object v0, Lorg/vosk/LogLevel;->INFO:Lorg/vosk/LogLevel;

    invoke-static {v0}, Lorg/vosk/LibVosk;->setLogLevel(Lorg/vosk/LogLevel;)V

    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 4

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 222
    invoke-direct {p0, v3}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file or directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private isDirectoryEmpty(Ljava/io/File;)Z
    .locals 0

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$listDownloadedModels$0(Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;)Z
    .locals 2

    .line 142
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->modelsDir:Ljava/io/File;

    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/io/File;

    const-string v1, "model.zip"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->isDirectoryEmpty(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static unpackZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/16 p1, 0x400

    .line 93
    new-array p1, p1, [B

    .line 94
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/4 v2, 0x0

    .line 99
    const-string v3, "/"

    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz p0, :cond_5

    .line 105
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_4

    .line 118
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 120
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    .line 121
    invoke-virtual {p0, p1, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 126
    :cond_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 130
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->unloadModels()V

    return-void
.end method

.method public downloadModel(Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;)V
    .locals 8

    .line 158
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->models:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;

    .line 163
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->modelsDir:Ljava/io/File;

    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/io/File;

    const-string v2, "model.zip"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :try_start_0
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to delete existing model directory"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;->onError(Ljava/lang/Exception;)V

    return-void

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_1
    :try_start_1
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 181
    iget-object v1, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_8

    .line 187
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const/16 p1, 0x1000

    .line 192
    new-array p1, p1, [B

    .line 194
    :goto_2
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x0

    .line 195
    invoke-virtual {v3, p1, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-float v6, v6

    long-to-float v7, v4

    div-float/2addr v6, v7

    invoke-interface {p2, v6}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;->onProgress(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 199
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->unpackZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 204
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 208
    :try_start_7
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 211
    :cond_4
    :goto_3
    invoke-interface {p2}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;->onCompleted()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_9

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 188
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 213
    :goto_8
    invoke-interface {p2, p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$DownloadModelCallback;->onError(Ljava/lang/Exception;)V

    :goto_9
    return-void
.end method

.method public listAvailableModels()Ljava/util/List;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->models:Ljava/util/List;

    return-object v0
.end method

.method public listDownloadedModels()Ljava/util/List;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->models:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;)V

    .line 141
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 148
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public recognize(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->models:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;

    if-nez v0, :cond_0

    .line 239
    invoke-interface {p3, p2}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;->onLanguageNotSupported(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->listDownloadedModels()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;

    if-nez v0, :cond_1

    .line 248
    invoke-interface {p3, p2}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;->onLanguageNotDownloaded(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->loadedModels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 255
    new-instance v0, Lorg/vosk/Model;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->modelsDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/vosk/Model;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->loadedModels:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 259
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->loadedModels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/vosk/Model;

    const/4 v0, 0x0

    .line 261
    invoke-static {p1, v0}, Lcom/exteragram/messenger/speech/utils/FormatConverter;->extractAndConvertToPcm(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 262
    invoke-static {p1}, Lcom/exteragram/messenger/speech/utils/FormatConverter;->getSampleRate(Ljava/lang/String;)I

    move-result v1

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recognizing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 266
    new-instance p1, Lorg/vosk/Recognizer;

    int-to-float v1, v1

    invoke-direct {p1, p2, v1}, Lorg/vosk/Recognizer;-><init>(Lorg/vosk/Model;F)V

    .line 268
    new-instance p2, Lorg/vosk/android/SpeechStreamService;

    invoke-direct {p2, p1, v0, v1}, Lorg/vosk/android/SpeechStreamService;-><init>(Lorg/vosk/Recognizer;Ljava/io/InputStream;F)V

    .line 269
    new-instance v0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$2;-><init>(Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;Lorg/vosk/Recognizer;)V

    invoke-virtual {p2, v0}, Lorg/vosk/android/SpeechStreamService;->start(Lorg/vosk/android/RecognitionListener;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 312
    :goto_1
    const-string p2, "Failed to recognize"

    invoke-static {p2, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    invoke-interface {p3, p1}, Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public unloadModels()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->loadedModels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 320
    iget-object v0, p0, Lcom/exteragram/messenger/speech/recognizers/VoskRecognizer;->loadedModels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
