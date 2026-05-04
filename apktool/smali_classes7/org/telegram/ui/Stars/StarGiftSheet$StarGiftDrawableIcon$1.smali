.class Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->setCountdownRemainingTime(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;)V
    .locals 0

    .line 7402
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 7405
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->-$$Nest$fgetview(Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
