.class Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/ConnectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveHostByNameTask"
.end annotation


# instance fields
.field private addresses:Ljava/util/ArrayList;

.field private currentHostName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1121
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addresses:Ljava/util/ArrayList;

    .line 1122
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->currentHostName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAddress(J)V
    .locals 2

    .line 1126
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addresses:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1129
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addresses:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1115
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;
    .locals 8

    .line 1133
    const-string p1, "Answer"

    const/4 v0, 0x0

    .line 1137
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.google.com/resolve?name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->currentHostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&type=A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1139
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v2, "Host"

    const-string v3, "dns.google.com"

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 1141
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x7d0

    .line 1142
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1143
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 1144
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1146
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const v3, 0x8000

    .line 1148
    :try_start_2
    new-array v3, v3, [B

    .line 1150
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    .line 1152
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 1160
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1162
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1163
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v5, v3, :cond_1

    .line 1167
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1169
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {p1, v4, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;-><init>(Ljava/util/ArrayList;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1178
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 1181
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1185
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object p1

    .line 1178
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 1181
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1185
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object v2, v0

    goto :goto_4

    :catchall_4
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 1174
    :goto_4
    :try_start_7
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v1, :cond_3

    .line 1178
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    .line 1181
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 1185
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1193
    :catch_1
    :cond_4
    :try_start_a
    iget-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->currentHostName:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 1194
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1195
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance p1, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p1, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;-><init>(Ljava/util/ArrayList;J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 1198
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_3
    :goto_6
    return-object v0

    :catchall_6
    move-exception p1

    if-eqz v1, :cond_5

    .line 1178
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    .line 1181
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 1185
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 1190
    :catch_4
    :cond_6
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1115
    check-cast p1, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->onPostExecute(Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;)V

    return-void
.end method

.method protected onPostExecute(Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1207
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->-$$Nest$sfgetdnsCache()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->currentHostName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1209
    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->currentHostName:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    :cond_0
    iget-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addresses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 1213
    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->currentHostName:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1216
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->-$$Nest$sfgetresolvingHostnameTasks()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->currentHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
