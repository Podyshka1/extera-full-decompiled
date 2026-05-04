.class public Lorg/telegram/ui/web/WebInstantView$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebInstantView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# instance fields
.field private cancelLocal:Ljava/lang/Runnable;

.field private cancelled:Z

.field private final currentAccount:I

.field public currentIsLoaded:Z

.field public currentProgress:F

.field public currentUrl:Ljava/lang/String;

.field private gotLocal:Z

.field private gotRemote:Z

.field private final listeners:Ljava/util/ArrayList;

.field private localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private reqId:I

.field private started:Z


# direct methods
.method public static synthetic $r8$lambda$RI9yTZzUCcpgMB1v_dBgt1Upiss(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/ui/web/WebInstantView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$retryLocal$0(Lorg/telegram/ui/web/WebInstantView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gMrfhly7Cw1lBqn7ZSkKGrJ0MIA(Lorg/telegram/ui/web/WebInstantView$Loader;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$listen$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iAdeFCBLkILBMg6Uf9nRpZe4OZo(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/ui/web/WebInstantView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$start$1(Lorg/telegram/ui/web/WebInstantView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wwmfgbhnLy3gDBY_PgSI6qWa9dw(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$start$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zxKXsVkOqzCeWSs1mMYlQF2GCAI(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->lambda$start$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    .line 1155
    iput p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$listen$4(Ljava/lang/Runnable;)V
    .locals 1

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$retryLocal$0(Lorg/telegram/ui/web/WebInstantView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1172
    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1173
    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    .line 1175
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    .line 1177
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1178
    invoke-direct {p0}, Lorg/telegram/ui/web/WebInstantView$Loader;->notifyUpdate()V

    return-void
.end method

.method private synthetic lambda$start$1(Lorg/telegram/ui/web/WebInstantView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1191
    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1192
    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    .line 1194
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    .line 1196
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1197
    invoke-direct {p0}, Lorg/telegram/ui/web/WebInstantView$Loader;->notifyUpdate()V

    return-void
.end method

.method private synthetic lambda$start$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x1

    .line 1204
    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotRemote:Z

    .line 1205
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1206
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    .line 1207
    iget v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1208
    iget v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1209
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_0

    .line 1210
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_page;

    if-eqz v0, :cond_1

    .line 1211
    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_0

    .line 1213
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1215
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez p1, :cond_2

    .line 1216
    iput-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1218
    :cond_2
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1219
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1221
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/web/WebInstantView$Loader;->notifyUpdate()V

    return-void
.end method

.method private synthetic lambda$start$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1203
    new-instance p2, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyUpdate()V
    .locals 4

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Runnable;

    .line 1263
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1236
    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1237
    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    .line 1238
    iget-boolean v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotRemote:Z

    if-nez v1, :cond_1

    .line 1239
    iget v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->reqId:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1241
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1242
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1

    .line 1230
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    return-object v0

    .line 1231
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .line 1226
    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotRemote:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->remotePage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public listen(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    new-instance v0, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    .line 1248
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    const/4 v0, 0x0

    .line 1249
    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_0
    return-void
.end method

.method public retryLocal(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 2

    .line 1159
    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_1

    .line 1161
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    const/4 v0, 0x0

    .line 1162
    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->localPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_1
    const/4 v0, 0x0

    .line 1164
    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->gotLocal:Z

    .line 1165
    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentUrl:Ljava/lang/String;

    .line 1166
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentProgress:F

    .line 1167
    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isPageLoaded()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentIsLoaded:Z

    .line 1168
    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1169
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1171
    :cond_2
    new-instance v1, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/web/WebInstantView;->generate(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    return-void
.end method

.method public start(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 2

    .line 1183
    iget-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1184
    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->started:Z

    .line 1186
    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentUrl:Ljava/lang/String;

    .line 1187
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentProgress:F

    .line 1188
    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isPageLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentIsLoaded:Z

    .line 1190
    new-instance v0, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/web/WebInstantView;->generate(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->cancelLocal:Ljava/lang/Runnable;

    .line 1200
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentUrl:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 1202
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 1203
    iget v0, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/WebInstantView$Loader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/WebInstantView$Loader;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/web/WebInstantView$Loader;->reqId:I

    return-void
.end method
