.class public Lorg/telegram/tgnet/json/TLJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;
    }
.end annotation


# instance fields
.field private final jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/telegram/tgnet/json/TLJsonParser;->jsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method private static parse(Lorg/telegram/tgnet/json/TLJsonParser;Lorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;
    .locals 0

    .line 136
    :try_start_0
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 138
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseBoolean(Ljava/lang/Object;Z)Z
    .locals 1

    .line 93
    :try_start_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 95
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 96
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_1
    return p2

    .line 99
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return p2
.end method

.method private parseInt32(Ljava/lang/Object;I)I
    .locals 1

    .line 121
    :try_start_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 122
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_1
    return p2

    .line 127
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return p2
.end method

.method private parseInt64(Ljava/lang/Object;J)J
    .locals 1

    .line 107
    :try_start_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 109
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :cond_1
    return-wide p2

    .line 113
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-wide p2
.end method

.method private parseString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/tgnet/json/TLJsonParser;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/tgnet/json/TLJsonParser;->parseBoolean(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public readInt32(Ljava/lang/String;I)I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/telegram/tgnet/json/TLJsonParser;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/tgnet/json/TLJsonParser;->parseInt32(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public readInt64(Ljava/lang/String;I)J
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/telegram/tgnet/json/TLJsonParser;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->parseInt64(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public readObject(Ljava/lang/String;Lorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/telegram/tgnet/json/TLJsonParser;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lorg/telegram/tgnet/json/TLJsonParser;

    invoke-direct {v0, p1}, Lorg/telegram/tgnet/json/TLJsonParser;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, p2}, Lorg/telegram/tgnet/json/TLJsonParser;->parse(Lorg/telegram/tgnet/json/TLJsonParser;Lorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lorg/telegram/tgnet/json/TLJsonParser;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/telegram/tgnet/json/TLJsonParser;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/tgnet/json/TLJsonParser;->parseString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readVector(Ljava/lang/String;Lorg/telegram/messenger/Utilities$CallbackReturn;)Ljava/util/ArrayList;
    .locals 5

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v1, p0, Lorg/telegram/tgnet/json/TLJsonParser;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 42
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    new-instance v4, Lorg/telegram/tgnet/json/TLJsonParser;

    invoke-direct {v4, v3}, Lorg/telegram/tgnet/json/TLJsonParser;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v4, p2}, Lorg/telegram/tgnet/json/TLJsonParser;->parse(Lorg/telegram/tgnet/json/TLJsonParser;Lorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 49
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 50
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-object v0
.end method
