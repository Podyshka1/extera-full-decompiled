.class Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebMetadataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SitenameProxy"
.end annotation


# instance fields
.field private final whenReceived:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$jRhqQxxrMsy7cH2BJ7blGHz6luU(Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;->lambda$post$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;->whenReceived:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method private synthetic lambda$post$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "siteNameEmpty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "siteName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;->whenReceived:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 310
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;->whenReceived:Lorg/telegram/messenger/Utilities$Callback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 303
    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
