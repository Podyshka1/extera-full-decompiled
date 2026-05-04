.class Lorg/telegram/ui/Components/AlertsCreator$14;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->showLeaveGroupWithFutureOwner(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2625
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 2626
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 2629
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 2631
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->path:Landroid/graphics/Path;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42540000    # 53.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2632
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$14;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 2633
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
