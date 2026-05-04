.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$6;
.super Lorg/telegram/ui/Components/SuggestEmojiView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;ILorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/SuggestEmojiView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected emojiCacheType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
