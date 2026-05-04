.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field final synthetic val$bubbleX:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;->val$bubbleX:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 750
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 751
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;->val$bubbleX:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 752
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    :cond_0
    return-void
.end method
