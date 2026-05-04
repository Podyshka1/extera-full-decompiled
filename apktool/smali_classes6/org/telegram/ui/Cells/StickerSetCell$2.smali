.class Lorg/telegram/ui/Cells/StickerSetCell$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/StickerSetCell;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V
    .locals 0

    .line 427
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell$2;->this$0:Lorg/telegram/ui/Cells/StickerSetCell;

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell$2;->val$checked:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 430
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/StickerSetCell$2;->val$checked:Z

    if-nez p1, :cond_0

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell$2;->this$0:Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->-$$Nest$fgetoptionsButton(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 437
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/StickerSetCell$2;->val$checked:Z

    if-eqz p1, :cond_0

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell$2;->this$0:Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->-$$Nest$fgetoptionsButton(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
