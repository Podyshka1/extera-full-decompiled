.class Lorg/telegram/ui/PhotoViewer$44;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToPip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 9341
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$44;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$44;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 9344
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$44;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    return-void
.end method
