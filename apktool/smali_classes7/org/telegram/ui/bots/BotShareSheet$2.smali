.class Lorg/telegram/ui/bots/BotShareSheet$2;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotShareSheet;-><init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotShareSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotShareSheet;Landroid/content/Context;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/telegram/ui/bots/BotShareSheet$2;->this$0:Lorg/telegram/ui/bots/BotShareSheet;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public isDrawSelectionBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
