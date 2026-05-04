.class Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;
.super Lorg/telegram/ui/Adapters/SearchAdapterHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ZLorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 3272
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iput-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;->val$this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected filter(Lorg/telegram/tgnet/TLObject;)Z
    .locals 1

    .line 3275
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
