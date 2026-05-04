.class Lorg/telegram/ui/Gifts/GiftSheet$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/GiftSheet;

.field final synthetic val$setSubtitle:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$4;->this$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$4;->val$setSubtitle:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$4;->val$setSubtitle:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
