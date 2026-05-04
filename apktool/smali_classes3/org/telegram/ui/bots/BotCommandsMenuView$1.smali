.class Lorg/telegram/ui/bots/BotCommandsMenuView$1;
.super Lorg/telegram/ui/ActionBar/MenuDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotCommandsMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotCommandsMenuView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotCommandsMenuView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$1;->this$0:Lorg/telegram/ui/bots/BotCommandsMenuView;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$1;->this$0:Lorg/telegram/ui/bots/BotCommandsMenuView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
