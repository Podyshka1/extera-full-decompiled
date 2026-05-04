.class Lorg/telegram/ui/QrActivity$QrView$1;
.super Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity$QrView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/QrActivity$QrView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity$QrView;ZZZ)V
    .locals 0

    .line 917
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$QrView$1;->this$0:Lorg/telegram/ui/QrActivity$QrView;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 1

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$QrView$1;->this$0:Lorg/telegram/ui/QrActivity$QrView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
