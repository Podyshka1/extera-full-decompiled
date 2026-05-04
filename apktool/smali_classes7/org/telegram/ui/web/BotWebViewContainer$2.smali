.class Lorg/telegram/ui/web/BotWebViewContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$2;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetflickerView(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
