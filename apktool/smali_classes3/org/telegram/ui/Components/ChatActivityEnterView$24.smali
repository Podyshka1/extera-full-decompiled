.class Lorg/telegram/ui/Components/ChatActivityEnterView$24;
.super Lorg/telegram/ui/Components/CloseProgressDrawable2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 3375
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$24;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentColor()I
    .locals 1

    .line 3378
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCancelInlineBot:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method
