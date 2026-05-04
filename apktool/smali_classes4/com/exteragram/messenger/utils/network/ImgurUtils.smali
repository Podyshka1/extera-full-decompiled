.class public abstract Lcom/exteragram/messenger/utils/network/ImgurUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;
    }
.end annotation


# static fields
.field private static final CLIENT_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "\u2001\u2002\u206a\u200b\u2000\u202f\u206c\u2000\u206d\u206e\u2000\u206a\u200a\u2000\u206a\u200a\u2000\u206d\u206e\u2000\u206e\u200c\u2000\u206d\u206f\u2000\u202f\u206c\u2000\u206a\u200a\u2000\u202f\u206f\u2000\u206d\u206f\u2000\u206a\u200c\u2000\u206e\u200b\u2000\u206e\u200f"

    invoke-static {v0}, Lcom/exteragram/messenger/backup/InvisibleEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/network/ImgurUtils;->CLIENT_ID:Ljava/lang/String;

    return-void
.end method

.method public static deleteImage(Ljava/lang/String;)Z
    .locals 4

    .line 77
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 79
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.imgur.com/3/image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client-ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/exteragram/messenger/utils/network/ImgurUtils;->CLIENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "Authorization"

    invoke-virtual {p0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 87
    :try_start_0
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 89
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static getMediaTypeFromFile(Ljava/io/File;)Lokhttp3/MediaType;
    .locals 1

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 97
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string p0, "image/png"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0

    .line 99
    :cond_0
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string p0, "image/gif"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0

    .line 103
    :cond_2
    const-string v0, ".bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const-string p0, "image/bmp"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0

    .line 105
    :cond_3
    const-string v0, ".webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const-string p0, "image/webp"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0

    .line 107
    :cond_4
    const-string v0, ".tiff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".tif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_6
    :goto_0
    const-string p0, "image/tiff"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0

    .line 100
    :cond_7
    :goto_1
    const-string p0, "image/jpeg"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static uploadImage(Ljava/io/File;)Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;
    .locals 5

    .line 33
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lcom/exteragram/messenger/utils/network/ImgurUtils;->getMediaTypeFromFile(Ljava/io/File;)Lokhttp3/MediaType;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 40
    :cond_0
    invoke-static {p0, v1}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 41
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "https://api.imgur.com/3/image"

    .line 42
    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client-ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/exteragram/messenger/utils/network/ImgurUtils;->CLIENT_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v4, "Authorization"

    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 49
    :try_start_0
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-object v2

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 64
    const-string v0, "link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v3, "deletehash"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    new-instance v3, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;

    invoke-direct {v3, v0, v1, p0}, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 70
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2

    :catch_1
    move-exception p0

    .line 51
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2
.end method
