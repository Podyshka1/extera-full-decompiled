.class public Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebMetadataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebMetadata"
.end annotation


# instance fields
.field public actionBarColor:I

.field public backgroundColor:I

.field public domain:Ljava/lang/String;

.field public favicon:Landroid/graphics/Bitmap;

.field public faviconBytes:[B

.field public sitename:Ljava/lang/String;

.field public time:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->time:J

    return-void
.end method

.method public static from(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;
    .locals 3

    .line 78
    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    invoke-direct {v0}, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;-><init>()V

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitleGot:Z

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitle:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    .line 84
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    .line 85
    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    if-eqz v1, :cond_2

    .line 86
    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColor:I

    iput v1, v0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->actionBarColor:I

    .line 88
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    if-eqz v1, :cond_3

    .line 89
    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColor:I

    iput v1, v0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->backgroundColor:I

    .line 91
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    if-eqz v1, :cond_4

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    iput-object p0, v0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    :cond_4
    return-object v0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 130
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->time:J

    .line 131
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    .line 132
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    .line 133
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    .line 134
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->actionBarColor:I

    .line 135
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->backgroundColor:I

    .line 136
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x56730bcc

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    return-void

    .line 140
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->faviconBytes:[B

    .line 141
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object p2, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->faviconBytes:[B

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 4

    .line 99
    iget-wide v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->time:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->actionBarColor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 104
    iget v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->backgroundColor:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    const v0, 0x56730bcc

    .line 106
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void

    :cond_3
    const v0, 0x38da9893

    .line 108
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->faviconBytes:[B

    if-eqz v0, :cond_4

    .line 110
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void

    .line 112
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/16 v3, 0x50

    if-lt v1, v2, :cond_5

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    invoke-static {}, Lorg/telegram/messenger/ImageLoader$7$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 116
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 118
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->faviconBytes:[B

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 120
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 122
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
