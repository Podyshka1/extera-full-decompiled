.class public Lorg/telegram/ui/web/WebInstantView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/WebInstantView$WebPhoto;,
        Lorg/telegram/ui/web/WebInstantView$Loader;
    }
.end annotation


# static fields
.field public static final instants:Ljava/util/HashMap;

.field private static loadingPhotos:Ljava/util/HashMap;


# instance fields
.field public final loadedPhotos:Ljava/util/HashMap;

.field public mhtml:Lorg/telegram/ui/web/MHTML;

.field public url:Ljava/lang/String;

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public static synthetic $r8$lambda$0ruKIo8_vXjpYnAehd1yTWWahAY(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/WebInstantView;->lambda$getHTML$7(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5OKLd3KNjqeekGH8Do5VRgOXNAo([Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 118
    aput-boolean v1, p0, v0

    return-void
.end method

.method public static synthetic $r8$lambda$5eCdyRlTVedsQRAWARfZXK7zwEo(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 2

    .line 289
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x1

    .line 290
    invoke-virtual {v0, p1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 291
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 293
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 295
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 296
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ciLZdT3_99Fw-TX3vjpVThD_Gc(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/WebInstantView;->lambda$getHTML$8(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Us0B0feOaqe1AirXDilnz7RNinI(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Yh_rHIiOF3DpDgaZCNIA7rZXO0Q(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Lorg/json/JSONObject;)V
    .locals 1

    .line 97
    invoke-static {p0}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    const/4 p0, 0x0

    .line 98
    aget-boolean p0, p1, p0

    if-eqz p0, :cond_0

    return-void

    .line 101
    :cond_0
    const-string p0, "parseJSON"

    invoke-static {p2, p0}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object p0

    .line 103
    :try_start_0
    iget-object p1, p3, Lorg/telegram/ui/web/WebInstantView;->url:Ljava/lang/String;

    invoke-virtual {p3, p1, p5}, Lorg/telegram/ui/web/WebInstantView;->parseJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_webPage;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lorg/telegram/messenger/Timer;->log(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 108
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    .line 109
    invoke-interface {p4, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 110
    iget-object p0, p3, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p0, :cond_1

    .line 111
    sget-object p1, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    invoke-virtual {p1, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/Timer;->finish(Lorg/telegram/messenger/Timer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YlCjfT0mhFdTUR2hES1ATvDObGA(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Ljava/io/InputStream;)V
    .locals 6

    .line 91
    invoke-static {p0}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    const/4 p0, 0x0

    .line 92
    aget-boolean p0, p1, p0

    if-eqz p0, :cond_0

    return-void

    .line 95
    :cond_0
    const-string p0, "readHTML"

    invoke-static {p2, p0}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object v1

    .line 96
    iget-object p0, p3, Lorg/telegram/ui/web/WebInstantView;->url:Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda6;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v4, p0, p5, v0}, Lorg/telegram/ui/web/WebInstantView;->readHTML(Ljava/lang/String;Ljava/io/InputStream;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxGbwS_Ov01x4aNA2NENDWSdrrU(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->lambda$loadPhotoInternal$4(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cKfcsLyPmtqnvZUj0W22TR0zTw4(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->lambda$loadPhotoInternal$3(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    return-void
.end method

.method public static addLastSpace(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    .line 916
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->addLastSpace(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 917
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 918
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->addLastSpace(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 919
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    .line 920
    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    .line 921
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public static addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    .line 929
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    .line 930
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 931
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 932
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 933
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public static applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    .line 645
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;-><init>()V

    .line 646
    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 647
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelLoadPhoto(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 5

    .line 255
    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_2

    .line 256
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 259
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 260
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    .line 261
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    sget-object p0, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public static filterRecursiveAnchorLinks(Lorg/telegram/tgnet/TLRPC$RichText;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    .line 1271
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v0, :cond_3

    .line 1272
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    .line 1273
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    const/4 v1, 0x0

    .line 1274
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1275
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1276
    invoke-static {v2, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->filterRecursiveAnchorLinks(Lorg/telegram/tgnet/TLRPC$RichText;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1278
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 1282
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_5

    .line 1283
    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .line 1284
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p0, 0x0

    :cond_5
    return-object p0
.end method

.method public static generate(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 79
    invoke-interface {p2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 83
    new-array v3, v0, [Z

    const/4 v0, 0x0

    aput-boolean v0, v3, v0

    .line 85
    new-instance v5, Lorg/telegram/ui/web/WebInstantView;

    invoke-direct {v5}, Lorg/telegram/ui/web/WebInstantView;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/ui/web/WebInstantView;->url:Ljava/lang/String;

    .line 88
    const-string v0, "WebInstantView"

    invoke-static {v0}, Lorg/telegram/messenger/Timer;->create(Ljava/lang/String;)Lorg/telegram/messenger/Timer;

    move-result-object v4

    .line 89
    const-string v0, "getHTML"

    invoke-static {v4, v0}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object v2

    .line 90
    new-instance v1, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda0;

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v5, p0, p1, v1}, Lorg/telegram/ui/web/WebInstantView;->getHTML(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)V

    .line 117
    new-instance p0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda1;

    invoke-direct {p0, v3}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda1;-><init>([Z)V

    return-object p0
.end method

.method private synthetic lambda$getHTML$7(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 2

    .line 307
    sget p4, Lorg/telegram/messenger/R$raw;->open_collapsed:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "$OPEN$"

    const-string v1, "false"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, p4, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 312
    :try_start_0
    new-instance p1, Lorg/telegram/ui/web/MHTML;

    invoke-direct {p1, p2}, Lorg/telegram/ui/web/MHTML;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    .line 313
    iget-object p1, p1, Lorg/telegram/ui/web/MHTML;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    iget-object p1, p1, Lorg/telegram/ui/web/MHTML;->entries:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/web/MHTML$Entry;

    invoke-virtual {p1}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 318
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 321
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getHTML$8(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2, v0}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method private synthetic lambda$loadPhotoInternal$3(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 220
    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 221
    :cond_0
    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz p2, :cond_6

    .line 223
    iget-object v2, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 225
    iget v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez v2, :cond_3

    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v3, :cond_3

    .line 226
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    .line 227
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 229
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    goto :goto_1

    .line 230
    :cond_4
    iget v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v2, :cond_5

    .line 231
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    .line 233
    :cond_5
    :goto_1
    iget-object v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->inlineImage:Lorg/telegram/tgnet/TLRPC$TL_textImage;

    if-eqz v2, :cond_6

    .line 234
    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    .line 235
    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    .line 239
    :cond_6
    sget-object v2, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_7

    goto :goto_3

    .line 241
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_8
    :goto_2
    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Landroid/util/Pair;

    .line 242
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_8

    .line 243
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 244
    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadPhotoInternal$4(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 219
    new-instance v0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadPhoto(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->instantView:Lorg/telegram/ui/web/WebInstantView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->loadPhotoInternal(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadPhotoInternal(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V
    .locals 5

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    iget-object v3, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    iget-object v3, v3, Lorg/telegram/ui/web/MHTML;->entriesByLocation:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/web/MHTML$Entry;

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_c

    .line 168
    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "svg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    iget p3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-lez p3, :cond_4

    iget p3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-gtz p3, :cond_3

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p3, v1, p1, v0}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/io/InputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_4
    :goto_1
    return-void

    .line 172
    :cond_5
    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-lez v0, :cond_6

    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-gtz v0, :cond_b

    .line 173
    :cond_6
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 174
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez v1, :cond_7

    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v3, :cond_7

    .line 178
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    .line 179
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    .line 181
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    goto :goto_2

    .line 182
    :cond_8
    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v3, :cond_9

    .line 183
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v1

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    .line 185
    :cond_9
    :goto_2
    iget-object v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->inlineImage:Lorg/telegram/tgnet/TLRPC$TL_textImage;

    if-eqz v0, :cond_a

    .line 186
    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    .line 187
    iget p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    :cond_a
    if-eqz p3, :cond_b

    .line 190
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 193
    :cond_b
    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 195
    :goto_3
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 198
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 199
    iget-object p3, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 200
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 203
    :cond_d
    sget-object v1, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    .line 204
    :cond_e
    sget-object v1, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 207
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_10

    .line 208
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p1, p2, :cond_f

    return-void

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 214
    :cond_10
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 217
    :cond_11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    sget-object p3, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance p2, Lorg/telegram/ui/web/HttpGetBitmapTask;

    new-instance p3, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;)V

    invoke-direct {p2, p3}, Lorg/telegram/ui/web/HttpGetBitmapTask;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 250
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    .line 979
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    .line 980
    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 1

    .line 273
    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/web/WebInstantView;

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/telegram/ui/web/WebInstantView;->recycle()V

    :cond_0
    return-void
.end method

.method public static trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    .line 954
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 955
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 956
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 957
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 958
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimStart(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    .line 959
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimEnd(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 960
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 961
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_4
    return-object p0
.end method

.method public static trimEnd(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    .line 969
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimEnd(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 970
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 971
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimEnd(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 972
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 973
    const-string v2, "\\s+$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public static trimStart(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    .line 941
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    .line 942
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimStart(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 943
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 944
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimStart(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p0

    .line 945
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 946
    const-string v2, "^\\s+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    return-object p0
.end method


# virtual methods
.method public getHTML(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 282
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 287
    new-instance p2, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p3}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    const-string p3, "document.documentElement.outerHTML"

    invoke-virtual {p1, p3, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 302
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "archive.mht"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    sget v0, Lorg/telegram/messenger/R$raw;->open_collapsed:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$OPEN$"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public isInline(Lorg/json/JSONArray;)Z
    .locals 11

    .line 1063
    const-string/jumbo v9, "sub"

    const-string/jumbo v10, "sup"

    const-string v0, "b"

    const-string/jumbo v1, "strong"

    const-string/jumbo v2, "span"

    const-string v3, "img"

    const-string v4, "i"

    const-string v5, "s"

    const-string v6, "a"

    const-string v7, "code"

    const-string v8, "mark"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1065
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1066
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1067
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1068
    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 1069
    check-cast v3, Lorg/json/JSONObject;

    .line 1070
    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1071
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1073
    :cond_1
    const-string p1, "div"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "span"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1074
    :cond_2
    const-string p1, "content"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1075
    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/WebInstantView;->isInline(Lorg/json/JSONArray;)Z

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public parseDetails(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;
    .locals 6

    .line 770
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;-><init>()V

    .line 771
    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 773
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 774
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 775
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 776
    check-cast v3, Lorg/json/JSONObject;

    .line 777
    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 778
    const-string/jumbo v5, "summary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 779
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 780
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    :cond_2
    :goto_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 786
    const-string p1, "open"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    return-object v0
.end method

.method public parseFigure(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .locals 10

    .line 653
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    .line 657
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 658
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 659
    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_4

    .line 660
    check-cast v6, Lorg/json/JSONObject;

    .line 661
    const-string/jumbo v7, "tag"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 662
    const-string v8, "figurecaption"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "caption"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    .line 664
    :cond_0
    const-string v8, "img"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 665
    invoke-virtual {p0, v6, p2}, Lorg/telegram/ui/web/WebInstantView;->parseImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v4

    goto :goto_3

    .line 666
    :cond_1
    const-string/jumbo v8, "source"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 667
    const-string/jumbo v7, "src"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 668
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 669
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 671
    :cond_2
    const-string/jumbo v7, "srcset"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 672
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 673
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v7, v2

    .line 674
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    .line 675
    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 676
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    .line 677
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 678
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 663
    :cond_3
    :goto_2
    invoke-virtual {p0, v6, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    return-object v1

    :cond_6
    if-eqz v5, :cond_7

    .line 687
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;-><init>()V

    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    .line 688
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 689
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 692
    :cond_7
    :goto_4
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_9

    .line 693
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz p1, :cond_8

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    cmp-long p1, v5, v7

    if-nez p1, :cond_8

    .line 694
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 699
    iget-object p1, v1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_a
    return-object v4
.end method

.method public parseImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .locals 5

    .line 705
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;-><init>()V

    .line 706
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    .line 707
    const-string v1, "alt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 709
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 710
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    const-string v2, ""

    invoke-static {v2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 712
    :cond_0
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 715
    :cond_1
    new-instance v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/WebInstantView$WebPhoto;-><init>(Lorg/telegram/ui/web/WebInstantView;)V

    .line 716
    iput-object p0, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->instantView:Lorg/telegram/ui/web/WebInstantView;

    .line 717
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 718
    iput-object v1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    .line 719
    iget-object v3, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 721
    :try_start_0
    const-string/jumbo v3, "width"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :catch_0
    :try_start_1
    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 726
    :catch_1
    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez p1, :cond_2

    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    .line 727
    :cond_2
    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez p1, :cond_3

    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    .line 728
    :cond_3
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    .line 729
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->url:Ljava/lang/String;

    .line 730
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public parseInlineImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_textImage;
    .locals 7

    .line 736
    const-string v0, "height"

    const-string/jumbo v1, "width"

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textImage;-><init>()V

    .line 737
    const-string/jumbo v3, "src"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 741
    :cond_0
    new-instance v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    invoke-direct {v4, p0}, Lorg/telegram/ui/web/WebInstantView$WebPhoto;-><init>(Lorg/telegram/ui/web/WebInstantView;)V

    .line 742
    iput-object p0, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->instantView:Lorg/telegram/ui/web/WebInstantView;

    .line 743
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 744
    iput-object v3, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    .line 745
    iget-object v5, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 747
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :catch_0
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 752
    :catch_1
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    .line 753
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez p2, :cond_1

    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    .line 755
    :cond_1
    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez p2, :cond_2

    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    .line 758
    :cond_2
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 761
    :catch_2
    :try_start_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 763
    :catch_3
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    if-nez p1, :cond_3

    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    .line 764
    :cond_3
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    if-nez p1, :cond_4

    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    .line 765
    :cond_4
    iget-wide p1, v4, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->photo_id:J

    return-object v2
.end method

.method public parseJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_webPage;
    .locals 4

    .line 467
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    const-wide/16 v1, 0x0

    .line 469
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    .line 470
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 471
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    .line 473
    const-string/jumbo v1, "siteName"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 475
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 476
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 479
    :cond_0
    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 481
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 482
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    .line 485
    :cond_1
    const-string v1, "byline"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "by"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 487
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 488
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->author:Ljava/lang/String;

    .line 491
    :cond_2
    const-string v1, "excerpt"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 492
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 493
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 494
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    .line 497
    :cond_3
    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 498
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 499
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 500
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->parsePage(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_page;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    :cond_4
    return-object v0
.end method

.method public parseList(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 8

    .line 1085
    const-string/jumbo v0, "tag"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    const-string v2, "ol"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "li"

    const/4 v3, 0x0

    const-string v4, "content"

    if-eqz v1, :cond_4

    .line 1087
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;-><init>()V

    .line 1088
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 1089
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1090
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1091
    instance-of v6, v5, Lorg/json/JSONObject;

    if-nez v6, :cond_0

    goto :goto_1

    .line 1092
    :cond_0
    check-cast v5, Lorg/json/JSONObject;

    .line 1093
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 1095
    :cond_1
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1096
    invoke-virtual {p0, v5}, Lorg/telegram/ui/web/WebInstantView;->isInline(Lorg/json/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1099
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;-><init>()V

    .line 1100
    invoke-virtual {p0, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1101
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1103
    :cond_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;-><init>()V

    .line 1104
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1105
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    .line 1110
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;-><init>()V

    .line 1111
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 1112
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 1113
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1114
    instance-of v6, v5, Lorg/json/JSONObject;

    if-nez v6, :cond_5

    goto :goto_3

    .line 1115
    :cond_5
    check-cast v5, Lorg/json/JSONObject;

    .line 1116
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 1118
    :cond_6
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1119
    invoke-virtual {p0, v5}, Lorg/telegram/ui/web/WebInstantView;->isInline(Lorg/json/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1122
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;-><init>()V

    .line 1123
    invoke-virtual {p0, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1124
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1126
    :cond_7
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;-><init>()V

    .line 1127
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1128
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-object v1
.end method

.method public parsePage(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_page;
    .locals 3

    .line 507
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 511
    :cond_0
    const-string v2, "publishedTime"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 516
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_page;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_page;-><init>()V

    const/4 v2, 0x1

    .line 517
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Page;->web:Z

    .line 518
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    .line 519
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 520
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 527
    :cond_2
    :goto_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;-><init>()V

    .line 528
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 529
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v1
.end method

.method public parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;
    .locals 8

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 536
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 537
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 539
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 540
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 541
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 542
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 543
    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1c

    .line 544
    check-cast v3, Lorg/json/JSONObject;

    .line 545
    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 546
    const-string v5, "content"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 547
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "details"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0x1a

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "blockquote"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v7, 0x19

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v6, "table"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0x18

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v6, "span"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v7, 0x17

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "mark"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v7, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "code"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x15

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v6, "sup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v7, 0x14

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v6, "sub"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "pre"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v7, 0x12

    goto/16 :goto_1

    :sswitch_9
    const-string v6, "img"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0x11

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v6, "ul"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v7, 0x10

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "ol"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v7, 0xf

    goto/16 :goto_1

    :sswitch_c
    const-string v6, "hr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_d
    const-string v6, "h6"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v6, "h5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v7, 0xc

    goto/16 :goto_1

    :sswitch_f
    const-string v6, "h4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_10
    const-string v6, "h3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_11
    const-string v6, "h2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_12
    const-string v6, "h1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_13
    const-string v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_1

    :cond_14
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_14
    const-string v6, "p"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_1

    :cond_15
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_15
    const-string v6, "i"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_1

    :cond_16
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_16
    const-string v6, "b"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_1

    :cond_17
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_17
    const-string v6, "a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_1

    :cond_18
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_18
    const-string v6, "picture"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_1

    :cond_19
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_19
    const-string/jumbo v6, "strong"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_1

    :cond_1a
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_1a
    const-string v6, "figure"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1

    :cond_1b
    move v7, v1

    :goto_1
    packed-switch v7, :pswitch_data_0

    if-eqz v5, :cond_1c

    .line 631
    invoke-virtual {p0, p1, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v3

    .line 632
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 607
    :pswitch_0
    invoke-virtual {p0, p1, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseDetails(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 609
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 576
    :pswitch_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;-><init>()V

    .line 577
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 578
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    .line 579
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 580
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 581
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 597
    :pswitch_2
    invoke-virtual {p0, p1, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTable(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 568
    :pswitch_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;-><init>()V

    .line 569
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textFixed;-><init>()V

    .line 570
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 571
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 572
    const-string v3, ""

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->language:Ljava/lang/String;

    .line 573
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 584
    :pswitch_4
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 586
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 601
    :pswitch_5
    invoke-virtual {p0, p1, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseList(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 604
    :pswitch_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 563
    :pswitch_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;-><init>()V

    .line 564
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 565
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 555
    :pswitch_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;-><init>()V

    .line 556
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 557
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 549
    :pswitch_9
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 550
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 551
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 622
    :pswitch_a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 623
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 625
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 626
    invoke-virtual {p0, v4, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 627
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 591
    :pswitch_b
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseFigure(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 593
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1d
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bf9751c -> :sswitch_1a
        -0x352a8969 -> :sswitch_19
        -0x226fa302 -> :sswitch_18
        0x61 -> :sswitch_17
        0x62 -> :sswitch_16
        0x69 -> :sswitch_15
        0x70 -> :sswitch_14
        0x73 -> :sswitch_13
        0xcc9 -> :sswitch_12
        0xcca -> :sswitch_11
        0xccb -> :sswitch_10
        0xccc -> :sswitch_f
        0xccd -> :sswitch_e
        0xcce -> :sswitch_d
        0xd0a -> :sswitch_c
        0xddd -> :sswitch_b
        0xe97 -> :sswitch_a
        0x197c3 -> :sswitch_9
        0x1b2a3 -> :sswitch_8
        0x1be40 -> :sswitch_7
        0x1be4e -> :sswitch_6
        0x2eaded -> :sswitch_5
        0x3306cd -> :sswitch_4
        0x35f74a -> :sswitch_3
        0x6903bce -> :sswitch_2
        0x4dad4a0f -> :sswitch_1
        0x5cd8f242 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 10

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 807
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_15

    .line 808
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 809
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 810
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 812
    :cond_0
    check-cast v3, Lorg/json/JSONObject;

    .line 813
    const-string/jumbo v5, "tag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 815
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "mark"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v9, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v9, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v6, "sup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v9, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v6, "sub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "pre"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "img"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    move v9, v7

    goto :goto_1

    :sswitch_6
    const-string v6, "br"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_7
    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_8
    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    move v9, v8

    goto :goto_1

    :sswitch_9
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_a
    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_b
    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    move v9, v4

    goto :goto_1

    :sswitch_c
    const-string/jumbo v6, "strong"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    move v9, v1

    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 893
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    goto/16 :goto_3

    .line 866
    :pswitch_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textMarked;-><init>()V

    .line 867
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_3

    .line 876
    :pswitch_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;-><init>()V

    .line 877
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_3

    .line 871
    :pswitch_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;-><init>()V

    .line 872
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_3

    .line 861
    :pswitch_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textFixed;-><init>()V

    .line 862
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_3

    .line 881
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 882
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/web/WebInstantView;->addLastSpace(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    .line 884
    :cond_e
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseInlineImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_textImage;

    move-result-object v4

    goto/16 :goto_3

    .line 888
    :pswitch_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 889
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/web/WebInstantView;->addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 828
    :pswitch_6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textStrike;-><init>()V

    .line 829
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_3

    .line 833
    :pswitch_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 834
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/web/WebInstantView;->addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    .line 836
    :cond_10
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    goto :goto_3

    .line 823
    :pswitch_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    .line 824
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_3

    .line 839
    :pswitch_9
    const-string v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    .line 841
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    goto :goto_3

    .line 842
    :cond_11
    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 843
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textPhone;-><init>()V

    .line 844
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->phone:Ljava/lang/String;

    .line 845
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :goto_2
    move-object v4, v5

    goto :goto_3

    .line 847
    :cond_12
    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 848
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textEmail;-><init>()V

    .line 849
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->email:Ljava/lang/String;

    .line 850
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_2

    .line 853
    :cond_13
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textUrl;-><init>()V

    .line 854
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    .line 855
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_2

    .line 818
    :pswitch_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    .line 819
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :goto_3
    if-eqz v4, :cond_14

    .line 897
    invoke-static {v4, v3}, Lorg/telegram/ui/web/WebInstantView;->applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    .line 898
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 902
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 903
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    return-object p1

    .line 904
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v4, :cond_17

    .line 905
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 907
    :cond_17
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    .line 908
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x352a8969 -> :sswitch_c
        0x61 -> :sswitch_b
        0x62 -> :sswitch_a
        0x69 -> :sswitch_9
        0x70 -> :sswitch_8
        0x73 -> :sswitch_7
        0xc50 -> :sswitch_6
        0x197c3 -> :sswitch_5
        0x1b2a3 -> :sswitch_4
        0x1be40 -> :sswitch_3
        0x1be4e -> :sswitch_2
        0x2eaded -> :sswitch_1
        0x3306cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    .line 791
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/ui/web/WebInstantView;->applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p2

    .line 792
    const-string v0, "bold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    .line 794
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object p2, v0

    .line 797
    :cond_0
    const-string v0, "italic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 798
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    .line 799
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_1
    return-object p2
.end method

.method public parseTable(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;
    .locals 2

    .line 985
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;-><init>()V

    const/4 v1, 0x1

    .line 986
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->bordered:Z

    .line 987
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->striped:Z

    .line 989
    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 990
    const-string v1, ""

    .line 991
    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/telegram/ui/web/WebInstantView;->applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 993
    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 994
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTableRows(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public parseTableRow(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;
    .locals 6

    .line 1022
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;-><init>()V

    .line 1024
    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 1025
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1026
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1027
    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1029
    :cond_0
    check-cast v2, Lorg/json/JSONObject;

    .line 1030
    const-string/jumbo v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1031
    const-string/jumbo v4, "td"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "th"

    if-nez v4, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1033
    :cond_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;-><init>()V

    .line 1034
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    .line 1036
    :try_start_0
    const-string v3, "colspan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    .line 1037
    iget v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :catch_0
    :try_start_1
    const-string v3, "rowspan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    .line 1041
    iget v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1043
    :catch_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1044
    const-string v3, "bold"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    if-eqz v3, :cond_3

    .line 1045
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    .line 1046
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1047
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1049
    :cond_3
    const-string v3, "italic"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1050
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    .line 1051
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1052
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1054
    :cond_4
    const-string/jumbo v3, "xcenter"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    .line 1056
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-object p1
.end method

.method public parseTableRows(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;
    .locals 5

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1002
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1003
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1004
    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1006
    :cond_0
    check-cast v2, Lorg/json/JSONObject;

    .line 1007
    const-string/jumbo v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1008
    const-string/jumbo v4, "tr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1009
    invoke-virtual {p0, p1, v2, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTableRow(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    move-result-object v2

    .line 1010
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1012
    :cond_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1014
    invoke-virtual {p0, p1, v2, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTableRows(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public readHTML(Ljava/lang/String;Ljava/io/InputStream;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 329
    invoke-interface {p3, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 333
    :cond_1
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_2

    .line 334
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 336
    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    .line 338
    invoke-interface {p3, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_3
    const v3, 0x1020002

    .line 341
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 342
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    .line 343
    invoke-interface {p3, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 346
    :cond_4
    check-cast v2, Landroid/view/ViewGroup;

    .line 347
    new-instance v7, Lorg/telegram/ui/web/WebInstantView$1;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/web/WebInstantView$1;-><init>(Lorg/telegram/ui/web/WebInstantView;Landroid/content/Context;)V

    .line 365
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 367
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 368
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 369
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 371
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v2, 0x1

    .line 372
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 377
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 379
    new-instance v0, Lorg/telegram/ui/web/WebInstantView$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/web/WebInstantView$2;-><init>(Lorg/telegram/ui/web/WebInstantView;Ljava/io/InputStream;)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 433
    new-instance p2, Lorg/telegram/ui/web/WebInstantView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/web/WebInstantView$3;-><init>(Lorg/telegram/ui/web/WebInstantView;)V

    invoke-virtual {v6, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 p2, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 436
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v7, v6, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    new-array v5, v2, [Z

    aput-boolean v1, v5, v1

    .line 438
    new-instance v3, Lorg/telegram/ui/web/WebInstantView$4;

    move-object v4, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/web/WebInstantView$4;-><init>(Lorg/telegram/ui/web/WebInstantView;[ZLandroid/webkit/WebView;Landroid/widget/FrameLayout;Lorg/telegram/messenger/Utilities$Callback;)V

    const-string p2, "Instant"

    invoke-virtual {v6, v3, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v6, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public recycle()V
    .locals 5

    .line 123
    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 130
    instance-of v4, v3, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz v4, :cond_1

    .line 131
    check-cast v3, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    .line 132
    sget-object v4, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 133
    iget-object v3, v3, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
